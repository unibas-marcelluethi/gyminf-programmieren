FROM openjdk:11.0.3-jdk

RUN apt-get update
RUN apt-get install -y python3-pip cron sudo

# add requirements.txt, written this way to gracefully ignore a missing file
COPY . .
RUN ([ -f requirements.txt ] \
    && pip3 install --no-cache-dir -r requirements.txt) \
        || pip3 install --no-cache-dir jupyter jupyterlab

USER root

# Download the kernel release
RUN curl -L https://github.com/SpencerPark/IJava/releases/download/v1.3.0/ijava-1.3.0.zip > ijava-kernel.zip

# Unpack and install the kernel
RUN unzip ijava-kernel.zip -d ijava-kernel \
  && cd ijava-kernel \
  && python3 install.py --sys-prefix

# Setup RISE
RUN pip3 install RISE

# Set up the user environment

ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/$NB_USER

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid $NB_UID \
    $NB_USER

COPY . $HOME
RUN chown -R $NB_UID $HOME
RUN echo "$NB_USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers


USER $NB_USER

WORKDIR $HOME

#==============================================================================================
# When we deploy on docker locally, we need to manually clone the github repo and install 
# a cron job for syncing. If we run it using binder, it is done for us. 
# Uncomment the following lines for preparing the local docker container
 RUN git config --global user.name "programmer"
 RUN git config --global user.email notused@notused.ch
 RUN cd $HOME; git clone https://github.com/unibas-marcelluethi/programmieren-notebooks.git
 RUN crontab $HOME/gitsynccron 

 CMD ["./start-jupyter.sh"]

#==============================================================================================
# Use the following command when running from binder
# 
# CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
