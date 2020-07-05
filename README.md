## MALIS-19.3-WPMT.9.2

Im Repository sind die Lösungen der Aufgabe WPM T 9.2 zu finden.
Im ersten Teil der Aufgabe werden fünf Fragen mittels einer Datenanalyse der öffentlichen Daten der Seattle Public Library beantwortet (MALIS 19.3 WPM_T9.2 Frage 1-5). Die Fragen beziehen sich ausschließlich auf die Checkouts. Die heruntergeladenen Datenpakete wurden mittels der URL begrenzt, beziehungsweise definiert.
Die Fragen lauteten:

"Welcher Titel hat den höchsten Checkoutwert in dem Jahr 2018?" (MALIS 19.3 WPM_T9.2 Frage 1)

"Wie oft wurde Harry Potter 2018 ausgeliehen?" & "Wie oft wurde in welchem Monat "Harry Potter und der Stein der Weisen" ausgeliehen und wie oft insgesamt?" (MALIS 19.3 T9.2 Frage 2 und 3)

"Welcher Monat 2018 hatte die höchste absolute Anzahl an Ausleihen, beziehungsweise Checkouts?" (MALIS 19.3 T9.2 Frage 4)

"Sieht man von 2005 bis 2018 eine Veränderung der UsageClass? Wie ist das Verhältnis der Ausleihen zwischen digitalen und physischen Medien?" (MALIS 19.3 T9.2 Frage 5)


Im zweiten Teil wird mittels eines Skriptes ein Datensatz bereinigt. Die Musterlösung ist aus Terminal in eine txt Datei kopiert (Lösung MALIS 19.3 WPM T9.2.2.txt). Der bereinigte Datensatz enthält nur noch die Jahre und ISSNs (2020-05-23-Dates_and_ISSNs.tsv). Als Ausgangspunkt wurden die, in der Aufgabenstellung, genannten Befehle benutzt. Da sed bei MacOS nicht als Mittel zum Ignorieren der Groß- und Kleinschreibung funktioniert, wurden tr benutzt (siehe Library Carpentry Lesson). 
Bevor ich ein Skript geschrieben habe, habe ich die Befehle zunächst alle im Terminal einzeln ausgeführt. Daher befindet sich im Repositorium die Zwischenlösung. Dies half mir vor allem, um die einzelnen Schritte zu kontrollieren und schneller die Fehler finden zu können.

Zur Bearbeitung der Datei wird zunächst auf dem Desktop der Ordner wget angesteuert, in dem sich nur die Datei 2020-05-23-Article_list_dirty.tsv befindet. 

Um die entsprechenden Spalten herauszufiltern wird der Befehl *cut -f* genutzt, so kann das herausschneiden auf die Spalten spezifiziert werden. Die benötigten Spalten sind 5 und 12. Daraus wird eine neue Datei, cut.tsv, erstellt, da die weiteren Informationen nicht mehr nötig sind, wird im Folgenden die Datei cut.tsv genutzt. Zur besseren Orientierung wurden die Dateien nach dem erfolgten Schritt benannt,

Mit *grep -E '\d{4}-\d{3}'* wird die vorhandene Datei noch einmal gefiltert. Es bleiben nur die Zeilen über in denen auch das Format „vier Zeichen Bindestrich drei Zeichen“ erfüllt wird. Da am Ende mehrerer ISSNs ein x steht und diese in der Lösung enthalten sind, reichen nach dem Bindestrich drei Zahlen. Im gleichen Befehl wird wieder eine neue Datei erstellt: grep.tsv. 

In der Datei grep.tsv wird ISSN sowohl groß als auch klein geschrieben. Daher wird mit dem Befehl *tr [:upper:] [:lower:]* in der neu erstellten Datei tr.tsv alles klein geschrieben.

In der Lösung ist ISSN nicht dem Code vorgestellt. Deshalb wird mit dem Befehl *tr -ds 'issn: ' ''*  issn: durch nichts ersetzt und fällt so gesehen aus der Lösung raus. Es wird eine neue Datei erstellt, trr.tsv, die den Vorsatz ISSN nicht mehr enthält.

Mit dem Befehl *sort -n < trr.tsv > sort.tsv* sortiere ich die erste Spalte, in diesem Fall die ISSNs, nach Größe. So können im nächsten Schritt die Doppelungen extrahiert werden. Im zweiten Teil des Befehls wird wieder eine neue Datei erstellt: sort.tsv.

Als letzten Befehl wird *uniq < sort.tsv > 2020-05-23-Dates_and_ISSNs.tsv* genutzt. So werden Doppelungen entfernt. Der Lösung entsprechend wird die Datei „2020-05-23-Dates_and_ISSNs.tsv“ erstellt und als Lösung im Repositorium hochgeladen.

Der Aufgabenstellung entsprechend wird, nachdem kontrolliert wurde, dass die Befehle funktionieren, im nano-Editor das Skript geschrieben. Es werden alle Befehle untereinander eingefügt und als Shell-Datei gespeichert. Dieses kann über das Terminal ausgeführt werden.

