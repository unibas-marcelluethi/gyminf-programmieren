# Kurzanleitung für automatisiertes Testen (mit Gradle)

Ein Test hilft Ihnen dabei festzustellen, ob ihr Programm richtig funktioniert oder ob es noch versteckte Fehler enthält, die Sie möglicherweise noch nicht entdeckt haben. 
Ein Test besteht aus mehreren kleinen Prüfungen die Teile der geschriebenen Programme oder Methoden auf ihre Richtigkeit prüfen. Ein Test prüft aber nicht alle möglichen Eventualitäten und dient deshalb nur als Anhaltspunkt ob eine Übungsaufgabe richtig gelöst wurde.

Um die Tests automatisiert ausführen zu können, verwenden wir die Software [Gradle](https://gradle.org/). Gradle ist ein sogenanntes Buildtool, welches das 'builden' von Programmen (also das Kompilieren) sowie das Ausführen der Tests koordiniert.

Um Ihre Programme zu testen, starten Sie eine Konsole und wechseln in das Verzeichnis mit den von Ihnen heruntergeladenen Übungen. Dort finden Sie die Datei _gradlew_, mit der Sie Gradle starten können. Führen Sie folgendes Kommando aus:

```
.\gradlew test (unter Windows)
./gradlew test (unter MacOS und Linux)
```

> :warning: Unter **OSX** und **Linux** muss das _gradlew_ Programm ausführbar sein, bitte nutzen Sie dazu diese [Apple Info Seite](https://support.apple.com/de-ch/guide/terminal/apdd100908f-06b3-4e63-8a87-32e71241bab4/mac).

Dies testet jeweils alle Übungsaufgaben eines Übungsblattes und listet anschliessend auf, welche Prüfungen bestanden wurden und welche nicht. Für das erste Übungsblatt könnte die Ausgabe zum Beispiel wie folgt aussehen:

```
BMITests > testAufgabe2BerechnungRichtig PASSED
SquaresTest > testOutputImageTheSame FAILED

java.lang.AssertionError at SquaresTest.java:43

2 tests completed, 1 failed
```

Diese Ausgabe zeigt an, dass der Test SquaresTest fehlgeschlagen ist und somit Ihre Lösung für die entsprechende Teilaufgabe nicht richtig sein kann. Die Tests für alle anderen Aufgaben waren jedoch erfolgreich.
Wenn Sie interessiert sind, wie ihr Code getestet wird, können Sie sich alle Testfälle anschauen. Sie finden den Code für die Testfälle im Verzeichnis _src/test/java_. Es handelt sich dabei um normalen Java Code.

