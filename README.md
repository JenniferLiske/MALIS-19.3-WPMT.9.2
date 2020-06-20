## MALIS-19.3-WPMT.9.2

Im Repository sind die Lösungen der Aufgabe WPM T 9.2 zu finden.
Im ersten Teil der Aufgabe werden fünf Fragen mittels einer Datenanalyse der öffentlichen Daten der Seattle Public Library beantwortet (MALIS 19.3 WPM_T9.2 Frage 1-5). Die Fragen beziehen sich ausschließlich auf die Checkouts. Die heruntergeladenen Datenpakete wurden mittels der URL begrenzt, beziehungsweise definiert.
Die Fragen lauteten:
"Welcher Titel hat den höchsten Checkoutwert in dem Jahr 2018?" (MALIS 19.3 WPM_T9.2 Frage 1)

"Wie oft wurde Harry Potter 2018 ausgeliehen?" & "Wie oft wurde in welchem Monat "Harry Potter und der Stein der Weisen" ausgeliehen und wie oft insgesamt?" (MALIS 19.3 T9.2 Frage 2 und 3)

"Welcher Monat 2018 hatte die höchste absolute Anzahl an Ausleihen, beziehungsweise Checkouts?" (MALIS 19.3 T9.2 Frage 4)

"Sieht man von 2005 bis 2018 eine Veränderung der UsageClass? Wie ist das Verhältnis der Ausleihen zwischen digitalen und physischen Medien?" (MALIS 19.3 T9.2 Frage 5)


Im zweiten Teil wird mittels eines Skriptes ein Datensatz bereinigt. Die Musterlösung ist aus Terminal in eine txt Datei kopiert (Lösung MALIS 19.3 WPM T9.2.2.txt). Der bereinigte Datensatz enthält nur noch die Jahre und ISSNs (2020-05-23-Dates_and_ISSNs.tsv). Als Ausgangspunkt wurden die, in der Aufgabenstellung, genannten Befehle benutzt. Da sed bei MacOS nicht als Mittel zum Ignorieren der Groß- und Kleinschreibung funktioniert, wurden tr benutzt (siehe Library Carpentry Lesson). 
