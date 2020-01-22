# Java: Hello World

Mit dieser kurzen Anleitung erstellen Sie Ihr erstes Java Programm, kompilieren es und
führen es anschliessend aus.
Das Programm ist ein traditionelles "Hello World" Programm und macht nichts anderes als den Text "Hello World" auszugeben.

## Aufsetzten der Umgebung
Für diese und die folgenden Programmieraufgaben empfehlen wir jeweils das folgende Vorgehen um eine Programmierumgebung zu erstellen.

1. Erstellen Sie einen neuen Ordner (z.B. Aufgabe1) für Ihre Übungen.
2. Öffnen Sie den VSCode Editor und öffnen Sie den erstellen Ordner via Datei -> Ordner öffnen
3. Sie sehen nun im Explorer vom VSCode (Menü Anzeigen -> Explorer) ihren geöffneten Ordner
4. Erstellen Sie eine neue Datei (Menü Datei -> Neue Datei (oder Ctrl-n)). Diese wird als 'untitled-...' Datei geöffnet. 
5. Speichern Sie nun diese 'untitled' Datei (Menü Datei -> Speichern) mit dem Namen "HelloWorld.java" 


## Schreiben Sie nun Ihr erstes Programm:
Schreiben (oder kopieren) Sie die folgendes Programm im VSCode Editor (in die HelloWorld.java Datei) und speichern Sie diese. 

```
public class HelloWorld {

    public static void main(String[] args) {
        System.out.println("Hello World");
    }

}
```


## Öffnen Sie eine Kommandozeile (Command line interface (CLI), Terminal, Shell, ...)
Öffen Sie ein Kommandozeilenprogramm (Terminal), am besten gleich innerhalb des VSCode Editors (mit Menü Terminal -> neues Terminal). Dieses CLI sollte als aktuelles Arbeitsverzeichnis gleich Ihren obigen Ordner verwenden. (Tippen sie 'pwd' und dannach ENTER umd das derzeitige Arbeitsverzeichnis auszugeben.)

Mit 'dir' (Windows) oder 'ls' (Linux, Macintosh) können Sie auch die Dateien und Unterordner auflisten, in dieser Liste sollte nun die Datei "HelloWorld.java" ersichtlich sein.


## Kompilieren Sie Ihr Programm
Kompilieren Sie nun Ihr Programm mit dem folgenden Befehl:

```
javac HelloWorld.java
```

:warning: Sollte Ihr Programm erfolgreich (also fehlerlos) kompilieren wird weiter nichts auf der CLI ausgegeben.

Nach dem Kompilieren sollte nun eine weitere Datei (HelloWorld.class) vorhanden sein. Diese enthält den kompilierten Bytecode Ihres Programms. Um das Programm nun endlich auszuführen verwenden Sie bitte folgendes:

```
java HelloWorld
```

:warning: Der Filesuffix (.class) wird vom java Programm automatisch angehängt und darf daher nicht angegeben werden.

Nun sollten Sie als Ausgabe von Ihrem Program "Hello World" sehen.

```
matthias@matthias-tp:~/tmp/Aufgabe1$ java HelloWorld 
Hello World
matthias@matthias-tp:~/tmp/Aufgabe1$ _
```


