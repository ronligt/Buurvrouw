#import "artikel.typ": article

// drawing diagrams https://typst.app/universe/package/fletcher/
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#set text(lang: "nl")
#set text(font: "New Computer Modern")

#show: article.with(
  title: "Voorstel Programmateam",
  author: "Ronald Ligteringen",
  description: "Overzicht van benodige taken van het Programmateam en voorstel voor het verdelen van taken over meerder mensen",
  keywords: "programmering; theater; optreden; band; muziek",
  modifications: (
    [20251026, versie 3: verwerking feedback Jan],
  ),
  date: datetime.today(),
  header: "De Buurvrouw",
  logo: "DeBuurvrouw_logo_RGB.svg",
  version: "3.0",
  l10n: "langs.yaml",
)

// turn on heading numbering to enable referencing
#set heading(numbering: "1.")

#outline()

= Inleiding

Voor het organiseren van optredens in de Buurvrouw zijn een aantal stappen nodig, zoals:

- zoeken naar bands,
- maken van afspraken voor een optreden,
- regelen van de publiciteit,
- bewaken en afhandelen van financiën rond een optreden
- organiseren van de reservering van de ruimte en personele bezetting
- kortsluiten van de technische invulling

Dit voorstel beschrijft deze werkzaamheden verder en geeft aan hoe hiervoor het *Programmateam* opgezet kan worden. 

Uit eerdere ervaring is gebleken dat het uitvoeren van deze werkzaamheden door één vrijwilliger een zeer grote tijdsbelasting en daardoor werkdruk oplevert. Een opdeling hiervan naar de verschillende *rollen* (communicatie, publiciteit, financiën etc.) maakt dat deze belasting verdeeld kan worden over vrijwilligers die vanuit hun kennis en talenten hierbij kunnen helpen.

= Werkzaamheden

In de volgende hoofdstukken wordt, in grote lijnen chronologisch, beschreven welke werkzaamheden horen bij het programmeren van een bandoptreden. Daarbij komt telkens een specifieke rol aan bod, met de bijbehorende taken. De rollen kunnen per persoon worden verdeeld, maar één persoon kan ook meerdere rollen vervullen. Bij elke rol is bovendien een korte beschrijving opgenomen van de eigenschappen die goed bij die functie passen.

#figure(
  diagram(
    let (
      scout, cont,  publ,  finan, org,   tech) = (
      (1,0), (1,1), (0,2), (2,2), (1,2), (1,3)),
    node-stroke: black + 0.5pt,
    debug: 0,
    spacing: 3em,
    node-corner-radius: 0.3em,
    label-size: 0.8em,
    label-sep: 0.1em,
    node(scout, [scout]),
    edge("->", label: "band info"),
    node(cont, [contact]),
    edge("->", label: "datum\noptreden"),
    node(publ, [publiciteit]),
    node(finan, [financiën]),
    edge(cont, finan, "->", label: "afspraken\noptreden"),
    edge(finan, scout, bend: -50deg, "->", label: "budget"),
    node(org, [organisatie]),
    edge(cont, org, "->", label: "alle\ninfo"),
    node(tech, [techniek]),
    edge(org, tech, "->", label: "rider"),
    edge((3.,-0.5),(3,4), "=>"),
    node((3.7,0), [T-3mnd: zoeken band], stroke: 0pt, ),
    node((3.7,1), [T-2mnd: kick-off], stroke: 0pt),
    node((3.7,2), [T-1mnd: publ. & tech.], stroke: 0pt),
    node((3.7,2.6), [T-1wk: finale check], stroke: 0pt),
    node((3.7,3), [*T: optreden*], stroke: 0pt),
    node((3.7,3.4), [T+1wk: nazorg, finan. & eval.], stroke: 0pt),
  ),
  caption: box("workflow Programmateam")
)<fig:workflow>


In @fig:workflow zie je een schematische weergave van de samenhang tussen de verschillende rollen. Dit is alleen om een overzicht te krijgen van de verdeling. In werkelijkheid is het zeer waarschijnlijk, dat alle teamleden van het Programmeerteam regelmatig contact met elkaar zullen hebben. Of soms ook helemaal niet.

== Scout [band zoeken]

Hierbij moet rekening worden gehouden met de kwaliteit van de band, de doelgroep van de bezoekers en het beschikbare budget. Bands kunnen gevonden worden via het eigen netwerk (meestal lokaal), door het bijwonen van concerten, door contacten met andere podia en door het actief werven via publiciteit (zie @sec:publiciteit).

Voor het beoordelen van de kwaliteit kan een groep mensen gevraagd worden te kijken of te luisteren naar het beschikbare materiaal van de band (meestal website) of een concert van deze band bij te wonen.

Om de geschiktheid van doelgroep bezoekers in te schatten kan gebruik worden gemaakt van een groep mensen die ervaring hebben met eerder optredens en kennis hebben van het publiek van De Buurvrouw en de wijk.

Om een inschatting te maken van de financiële haalbaarheid voor De Buurvrouw is het nodig om op een inschatting te hebben wat de kosten voor het optreden zullen zijn en het beschikbare budget. Voor het bepalen van het budget zal er contact moeten zijn met de persoon in het team die de financiën voor zijn rekening neemt.

De persoon die deze taken op zich neemt, zal affiniteit moeten hebben met muziek en bij voorkeur een brede interesse in verschillende muziekstijlen. Verder is een eigen netwerk van muzikanten en regelmatige bezoekers van concerten een voordeel.

Zodra een keus is gemaakt voor een band, wordt de informatie overgedragen naar de persoon in het team die de communicatie met de band op zich neemt en zorgt voor het contract (zie @sec:contact).

== Contact<sec:contact>

De rol van de contactpersoon is om tot een contract of afspraak te komen met de band voor een optreden in De Buurvrouw en alle verdere communicatie met de band te regelen. Hiervoor is contact met de band natuurlijk het belangrijkst, maar ook met de overige teamleden om goed inzage te hebben in financiële ruimte, de agenda en de technische mogelijkheden.

De belangrijkste kwaliteit is het vermogen om te communiceren op alle gebieden en het kunnen verbinden van de verschillende benodigdheden voor een optreden. Hiervoor moet de persoon die deze rol vervult een duidelijk idee hebben op welke manier iedereen uit het team bij kan dragen en de juiste informatie verzamelen om tot duidelijke afspraken te kunnen komen.

Omdat alle communicatie met de band via de contactpersoon verloopt en deze alle afspraken en details kent, moet deze ook aanwezig zijn tijdens de voorstelling als aanspreekpunt voor de band, de techniek en het personeel.

Na deze fase kan begonnen worden met de publiciteit, de organisatie binnen de Buurvrouw en het afhandelen van de financiële kant.

== Publiciteit<sec:publiciteit>

Onder publiciteit wordt verstaan: alles was te maken heeft met het onder de aandacht brengen van een optreden en het zorgen voor een zo groot mogelijk maar wel gerichte aandacht door het publiek hiervoor. Denk hierbij aan: 

- informatie op website
- flyeren
- posters
- artikelen in regionale kranten en tijdschriften
- aankondigingen bij eerdere optredens

Ook de opname van het optreden in *Stager* valt onder deze verantwoordelijkheid. Hiervoor is het nodig dat er duidelijke afspraken zijn over welke ruimte gebruikt gaat worden (zaal of foyer) met organisatie en welke toegangsprijs gevraagd gaat worden.

Hiervoor is affiniteit met grafische vormgeving en publiciteit zeer gewenst. Verder zal een netwerk met externe partijen opgezet moeten worden: ontwerp, drukken, distribueren, winkeliers, redacties etc.. Waarschijnlijk is dit een tijdrovend werk en kan het nodig zijn deze rol over meerder personen te verdelen.

== Organisatie

Dit behelst het boeken van de ruimte en het regelen van de vrijwilligers. Ook het aansturen van de techniek is essentieel en zal veelal betekenen, dat een *rider* en *stageplan* van de band wordt geregeld. Dit laatste kan door de techniek zelf worden gedaan, middels contactgegevens van de band, of via de informatie die bij het scouten of tijdens de onderhandelingen met de band op is gehaald.

Dit is een bestaande rol binnen De Buurvrouw en wordt als zodanig bij optredens ook al vervuld. Het spreekt voor zich, dat deze persoon alle inzicht heeft in de agenda, de zaalverhuur en de benodigde bezetting. Verder kan deze persoon de vrijwilligers benaderen en indelen.

== Financiën

Alles wat te maken heeft met geld rond een optreden wordt in deze rol geregeld. Het is belangrijk dat bekend is welk budget beschikbaar is voor een optreden, wat de kosten zijn voor De Buurvrouw (zaalverhuur, bezetting, inkoop, publiciteit), op welke manier de toegangsprijs berekend kan worden en hoe bijvoorbeeld de band uitbetaald kan worden.

Een overige rol zou kunnen zijn: het zoeken naar subsidies om bepaalde optredens mogelijk te maken, die anders lastig of niet te bekostigen zijn.

De kwaliteiten voor deze rol liggen vooral op financieel gebied. Goed en regelmatig contact met de beheerder is heel belangrijk en een behoefte om te zoeken naar creatieve oplossingen is zeer gewenst.

== Techniek

De techniek zal vlak voor en tijdens het optreden de voornaamste contacten hebben met de band en zal op de avond alle technische zaken regelen voor en met de band. De rider en het stageplan zijn onontbeerlijk om alles goed voor te kunnen bereiden. Denk hierbij ook eventuele inhuur van materiaal of externe technische bezetting. Een tijdig planning door de techniek van het optreden is belangrijk.

De Buurvrouw heeft een techniekploeg die deze rol kan vervullen. Het heeft de voorkeur als één van de technici deelneemt in het Programmateam en vervolgens de informatie doorgeeft aan de techniekploeg. Deze technicus moet zorgen dat alle informatie voor het optreden beschikbaar is en registreert welke technicus aanwezig zal zijn bij het optreden.

= Opzet Programmateam

Een groot deel van de hierboven beschreven kwaliteiten zijn terug te vinden in de grote groep vrijwilligers die De Buurvrouw heeft. Via aankondigingen van dit plan op de _social media_ en het persoonlijk benaderen van personen, kan al snel gekeken worden of er nieuwe vrijwilligers hiervoor gezocht moeten worden. Afhankelijk van de tijdsbesteding bij een rol, zou het mogelijk moeten zijn om het bestaande vrijwilligerswerk te combineren met het deelnemen aan het Programmateam. Zoals eerder aangegeven, kan ook gedacht worden aan het verdelen van een rol over meerdere personen of zelfs het combineren van rollen bij één persoon.

Om goed samen te kunnen werken, zal het Programmateam met enige regelmaat bij elkaar moeten komen en zal een gemeenschappelijke communicatie kanaal nodig zijn.

Omdat dit een nieuw samenwerkingsverband is, waarbij we nog geen of weinig ervaring hebben met hoe het uit zal pakken, is het nodig om na een half jaar een eerste evaluatie te maken door het Programmateam. En ook tussentijds kan altijd besloten worden om aanpassingen te maken in de werkwijze zoals die hier is voorgesteld.

= Werkwijze Programmateam

== Werkdocument<sec:werkdoc>

Het Programmateam werkt volgens het *werkdocument* dat hiervoor opgesteld wordt. Hierin staan alle werkzaamheden van alle rollen beschreven. Samen met het *registratieformulier* (@sec:regform) vormen deze de basis van alle afspraken over hoe de programmering in De Buurvrouw wordt gedaan.

Dit voorstel kan dienen als basis voor het werkdocument.

== Registratieformulier<sec:regform>

Voor de registratie van elk gepland optreden wordt in Google Drive een Google Form ingevuld door alle teamleden. Hierdoor is voor iedereen alle informatie beschikbaar en kan snel gekeken worden wat de status is van de planning. Zie hiervoor ook @sec:kickoff.

Een eerste opzet hiervoor wordt gemaakt met daarin onder andere de volgende zaken:

_let op: dit is een indicatieve lijst_

- datum en tijden
- locatie
- financiële afspraken (gage, facturering)
- rider en stageplan beschikbaar en links
- status publiciteit (teksten, beeldmateriaal, goedkeuringen) en links
- feedback momenten (wie checkt wat wanneer?)
- contactpersonen (band, Buurvrouw, techniek)
- bijzonderheden
- etc. etc.

== Kick\-off<sec:kickoff>

Na de scouting en eventueel verkennende gesprekken met de band wordt een *kick-off meeting* met de contactpersoon en de band georganiseerd waarin alle afspraken worden vastgelegd. Deze afspraken worden in het registratieformulier opgenomen.

Na de kick\-off worden alle teamleden geïnformeerd en wordt wordt eventueel feedback gegeven door de teamleden. Dit zou eventueel online gedaan kunnen worden met alleen de personen die het betreft. Vanuit de verschillende rollen worden de volgende zaken gecontroleerd:

/ publiciteit: opvragen publicatie materiaal band: website, bio, foto's.  Goedkeuring door artiest van publiciteit door De Buurvrouw (flyers, posts e.d.)
/ financiën: bewaken kosten voor optreden, controleren factuur
/ organisatie: nakijken en reserveren locatie, tijd en bezetting. Voor de tijd wordt gekeken naar de *op- en afbouwtijd* en *aanvang en duur voorstelling*
/ techniek: controleren opbouwtijd, *soundcheck tijd en duur*, rider en stageplan op volledigheid en (evt. via contact) nadere informatie opvragen aan band

== Afhandeling en verbeterpunten

Na het optreden zijn er een aantal belangrijk acties die kunnen helpen bij het verbeteren van het proces.

=== Relatie band

Het is goed om na te vragen bij het band hoe de verschillende fasen van het proces zijn ervaren en of er verbeterpunten genoemd kunnen worden. Ook feedback over de techniek is zeer waardevol.

Ook kan gevraagd worden of de band later terug zou willen komen en of er adviezen zijn voor andere bands die bij De Buurvrouw zouden kunnen spelen.

Er kunnen ook afspraken gemaakt worden over het delen van foto's en video's die door de band en door De Buurvrouw zijn gemaakt of verzameld.

=== Relatie publiek

Tijdens de voorstelling kan de contactpersoon enkele bezoekers kunnen vragen hoe het optreden ervaren wordt en of er adviezen of tips zijn voor latere optredens. Ook kunnen flyers uitgedeeld worden met de komende evenementen in De Buurvrouw.

Mochten er interessante foto's en video's zijn gemaakt, is het misschien interessant te vragen of deze gedeeld kunnen worden met De Buurvrouw.

=== Financiële afhandeling

Na het optreden kan al naar gelang de afspraak direct uitbetaald worden of naderhand via een overschrijving. Dit valt onder de verantwoordelijkheid van de financiële persoon.

=== Publiciteit

Bij bijzondere optredens kan contact worden gezocht met tijdschriften en/of kranten om verslag hiervan te doen. Sowieso kunnen via de social media delen van het optreden, foto's en korte verslagen worden gedeeld.

=== Evaluatie

Als er behoefte is aan een evaluatie van het optreden of het proces naar het optreden, kan een bijeenkomst (eventueel online) met het Programmateam worden georganiseerd. Zeker in het de beginmaanden van het Programmateam is het belangrijk, dat steeds gekeken wordt of de afspraken en rolverdeling nog goed werken. Aanpassingen moeten verwerkt worden in de werkdocumentatie, zie @sec:werkdoc.

= Bijlage

== Aanpassingen & uitbreidingen verslag en database

=== database

==== artiest tabel
Mogelijkheid voor registratie communicatie op de lange termijn. Bijvoorbeeld:
- heeft deze eerder opgetreden
- is er na een jaar contact over vernieuwing
- opnieuw uitnodigen
- nooit meer uitnodigen

==== publicatie tabel
Aparte tabel.

status: concept, publicatie

type: social, flyer, poster, e-mail

afspraken met artiest: tekst met datum

==== workflow tabel
Aanpassing: bij elke check tekstvelden met datum over afspraken (bijv. e-mail)

==== financiële tabel

Wellicht alleen toegang nodig tot deze tabel, niet de andere informatie

=== rol verdeling

Veel meer nadruk op centrale rol *control*, juist ook bij evenement i.v.m. _fingerspitze_ gevoel. Als voorbeeld: gaan we deze band vragen om te betalen voor de drankjes, kan zomaar afhangen van financiële houding bij overleg
