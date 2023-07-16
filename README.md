# synomin7
SPK's for DSM7 | Current and Latest

CREDITs:

toafez für das DSM7DemoSPK, das Toolset und der Kreativität: https://github.com/toafez/DSM7DemoSPK
vletroye für die Impressionen in Sachen CGI Router und der SSH Administrator Abfrage während der Installation
gnadelwartz für die eigentliche arbeit an Synomin
webmin für die tolle Verwaltungsoberfläche

Vorwort:

Ich übernehme keinerlei Garantien, Gewährleistung oder sonstiges bei beschädigungen oder unsachgemäßer verwendung. Das was hier angeboten wird richtet sich an erfahrene Nutzer die wissen was sie tun.

Ich möchte mich bei @Toafez aka Tommes (https://github.com/toafez) sowie @Vletroye aka Valéry (https://github.com/vletroye) bedanken die sich intensiv mit der DSM7 Problematik auseinandergesetzt haben und dieses Paket hier zumindest zu 95% zum Leben erwecken konnten =)

Ebenfalls ein herzliches dankeschön an @Gnadelwartz aka Kay (https://github.com/gnadelwartz) der das Ursprüngliche Synomin Package zusammengestellt hat.

Ich kann nun selber gut nachvollziehen was für ein Riesen Sackstand das dank Synology ist, nachdem ich über 10 Tage im Trial and Error Verfahren damit verbracht habe die Verknüpfung zur Synology Oberfläche wiederherzustellen.

Ebenfalls noch Danke an das Team von Webmin - eine geniale Oberfläche die keine Wünsche offen lässt.

Die angebotenen SPK Pakete beziehen sich dabei auf die install.sh Datei im Target/Scripts Ordner:

Current >> http://download.webmin.com/devel/tarballs/
Latest >>> http://builds.webmin.dev/

Bei der Latest fehlen die deutschen Sprachdateien, diese können dann über das Current Archiv nachträglich hochgeladen werden. ( webmin/lang & webmin/authentic-theme/lang )

Eines noch vorweg: es ist kein 100% automatisiertes Installationspaket - das war mir leider nicht möglich, ebenfalls scheinen Updates nicht zu funktionieren ( access denied error )
In dem Paket befinden sich vermutlich Dateien die nicht gebraucht werden, ich erhoffe mir von dem "Release" das es vielleicht jemand noch optimieren kann da ich derzeit etwas entnervt bin

Installation

Im Vorfeld sind Perl ( Wahlweise Synology oder *PKG ) sowie auch IPKG/OPKG zu installieren
Die empfohlenen Module für *PKG sind im Vorfeld zu installieren: git dstat lm-sensors per-net-ssleay
Die optionalen Module ebenfalls im Vorfeld ( wer Bedarf hat ): coreutils git git-manpages dstat man man-pages lm-sensors iptables mc openssl perl perl-net-ssleay lsof gcc make

Das Archiv etc enthält Dateien für die Root Access Geschichte - ob sie nun gebraucht werden kann jeder selber testen
Die Datei /var/packages/webmin/target/ui/app_permissions.sh hat bei mir immer einen Merkwürdigen Output in der Console zur Folge gebracht:

"title: 'webmin:app:title' is neither mail string key nor i18n format." - der User webmin ist dennoch danach teil der Admin Gruppe geworden.

Die entsprechende SPK eurer Wahl Mittels DSM Paketverwaltung hochladen, die Warnung ignorieren ( Thirdparty ), euer User steht schon in der SSH Abfrage, Passwort händisch nachtragen.

Die Installation läuft durch, Webmin stoppen und per SSH einloggen.

Den Pfad auf /var/packages/webmin/target/scripts/ in Putty wechseln und die ./install.sh ausführen.

Im Anschluss habe ich noch händisch im Terminal Benutzer und Gruppe geändert ( Pfad: /var/packages/webmin/target/webmin/:

sudo chown -R webmin:webmin /webmin/

Das wars auch schon


Änderungen / Selber kompilieren:

Der Inhalt des working Archivs muss in ./working/* entpackt werden so das folgende Struktur entsteht:

/working/etc
/working/man
/working/reset
/working/scripts
/working/update

Bitte der Anleitung von Toafez folgen:

https://github.com/toafez/DSM7DemoSPK

Lizenz

Dieses Programm ist freie Software. Sie können es unter den Bedingungen der GNU General Public License, wie von der Free Software Foundation veröffentlicht, weitergeben und/oder modifizieren, entweder gemäß Version 3 der Lizenz oder (nach Ihrer Option) jeder späteren Version.

Die Veröffentlichung dieses Programms erfolgt in der Hoffnung, daß es Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE, sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT FÜR EINEN BESTIMMTEN ZWECK. Details finden Sie in der Datei GNU General Public License.