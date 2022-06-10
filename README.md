# Projekt II - Digital konstruktion - YRGO Lindholmen - Ela21

##### Utfört av: Jacob Lundkvist och Jacob Nilsson
##### Handledare: Erik Jagre och Erik Pihl
*****

### Introduktion
I detta projekt skulle en 24-timmars klocka konstrueras i VHDL som sedan skulle implementeras på ett FPGA-kort av modellen "Cyclone V 5CEBA4F23C7N" <a href="https://github.com/Jalundkvist/VHDL_clock/blob/main/img/Projekt_II-Digital_klocka.pdf" target="_blank">Projekt_II-Digital_klocka.pdf</a>.

Då denna övning kändes som ett utmärkt tillfälle för oss att förbättra vårat samarbete inför vår kommande LIA på infotiv så satte vi oss ner och började sammanställa en funktionell konstruktion.

#### Program som användes
Quartus Prime 18.1 - För kompilering av VHDL-kod.

ModelSim 10.5b - För simulering av testbänk.

Visual Studio Code - för att kunna koda samtidigt med hjälp av tilläggen "liveshare" från Microsoft och "VHDL" från Pu Zhao.

#### Funktioner
Klockan skulle starta på 00:00:00 och den skulle börja räkna vid aktivering av tryckknapp. 
Vid ytterligare aktivering av tryckknapp så ska räknaren pausa och hålla aktuell tid på sina sju-segments displayer. Det implementerades en tillståndsmaskin som höll koll på läget OFF -> COUNTING -> PAUSED där tryckknappen vid start tog en till läget COUNTING -> PAUSED -> COUNTING ... Enda sättet att komma tillbaka till OFF där samtliga displayer ska visa 00:00:00 var via en resetknapp där även räknaren ska stanna.

Samtliga insignaler ska skyddas mot metastabilitet.


![Tillståndsmaskin](https://github.com/Jalundkvist/VHDL_clock/blob/main/img/FSM.PNG)
Figur 1 - Tillståndsmaskin.

#### Vidareutveckling av grundfunktionen
Först så implementerades funktionalitet för att kunna ställa in tiden på klockan via två tryckknappar som skiftade mellan att lägga på tid på timmar/minuter alternativt dra av tid beroende på vilket läge en slide-switch antog. Upp lägger på tid, ner subtraherar tid.
Efter detta hade implementerats så fortsatte utvecklingen med att implementera en timer som skulle kunna ställas in till valfri tid samt att den skulle fungera oberoende av klockan, och klockan skulle vara oberoende av timern.

#### Resultat
Konstruktionen fick samtliga efterfrågade funktioner och lite till. Efter många if och end if så blev det ett spindelnät med multiplexer (Se figur 3). Detta var mycket på grund av konstruktionen som använder sig av sju räknare, (timer-hr-min-sec) (counter-hr-min-sec) och SlowClock.




#### Diskussion
Uppgiften var på en bra svårighetsgrad. Där vi fick sätta ihop ett större projekt i VHDL för första gången efter en tydlig specifikation. Projektet var väldigt givande och gav en bra insikt i hur man ska gå tillväga och tänka för att konstruera i VHDL. Det som skulle kunna förbättra projeketet är ifall det skulle vara en tydligare genomgång innan projektstart samt lite tips och tricks på hur man skulle kunna konstuera projeketet. Det skulle även vara ett mer givande projekt ifall det skulle läggas mer tid till att utföra projeketet samt vidareutveckla. I början av projektet så kände vi att man vi hade lite för lite förkunskaper för att kunna skapa projektet från tomma intet. Så att minst ett lektionstillfälle skulle erbjudas för att kunna fokusera på projektet men med Erik nära till hands.

#### Funktionstest på FPGA
[Youtubelänk till DEMO](https://youtu.be/6Pa-1xnfTg0)

![Toppmodulen](https://github.com/Jalundkvist/VHDL_clock/blob/main/img/topmodule.PNG)
Figur 2 - Toppmodulen.

![Toppmodul expanderad](https://github.com/Jalundkvist/VHDL_clock/blob/main/img/topmodule_full.PNG)
Figur 3 - Toppmodulen, expanderad.

![SlowClock module](https://github.com/Jalundkvist/VHDL_clock/blob/main/img/SlowClock.PNG)
Figur 4 - SlowClock modulen.

![7 Segment display module](https://github.com/Jalundkvist/VHDL_clock/blob/main/img/displaymodules.PNG)
Figur 5 - Dubbel 7-segments display modul.


