-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Gru 2019, 11:18
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projektingty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `capsrage`
--

CREATE TABLE `capsrage` (
  `id` int(11) NOT NULL,
  `autor` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `tytul` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `tresc` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `janusze`
--

CREATE TABLE `janusze` (
  `id` int(11) NOT NULL,
  `autor` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `tytul` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `tresc` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasyki`
--

CREATE TABLE `klasyki` (
  `id` int(11) NOT NULL,
  `autor` text COLLATE utf8_polish_ci NOT NULL,
  `tytul` text COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `tresc` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klasyki`
--

INSERT INTO `klasyki` (`id`, `autor`, `tytul`, `data`, `tresc`) VALUES
(1, 'Anon14', 'Jak wyjaśniłem Newtona', '2019-03-18', 'Siedzę sobie spokojnie przy biurku i rozwiązuje zadanie z fizyki. Wypisuję dane, piszę wzór, podstawiam za ‘g’ 10 kg/ms2 i nagle słyszę\r\n- ty kurwo\r\nOdwracam się, nikogo nie widzę, dochodzę do wniosku, że matura niszczy mi psychikę i wracam do zadania. Liczę, liczę, wychodzi mi wynik i już mam zamieniać symbole na liczby, kiedy słyszę ciche\r\n- a tylko kurwa spróbuj\r\nLenin nic nie pisał o opętanych kalkulatorach, zatem nie istnieją, więc piszę zamiast ‘g’ 10 i nagle dostaję jabłkiem w głowę. Odwracam się, a tutaj wkurwiony lub niespełna rozumu Izaak Newton napierdala we mnie owocami. Trochę się zdziwiłem, bo w końcu facet od 292 lat powinien wąchać kwiatki od spodu, no ale nic. Pytam się kulturalnie:\r\n- Czego?\r\n- TY KURWA GNOJU, TOŻ JA CI CAŁĄ MECHANIKĘ WYMYŚLIŁEM, A TY MNIE TAK SZKALUJESZ? JAKIE, KURWA, DZIESIĘĆ MNIE NA KILOGRAM, ŚWINIO NIEMYTA? DZIEWIĘĆ, KOMA, OSIEMDZIESIĄT, KURWA, JEDEN! JAK CI ZARAZ Z CAŁEJ SIŁY PRZYPIERDOLĘ, TO NAWET ŚLEPY ZAUWAŻY RÓŻNICZKĘ!\r\nO nieeeee, nie będzie Anglik pluł nam w twarz. Wymyśliłem błyskawicznie plan zemsty i spytałem:\r\n- No dobra, panie Newton, wymyślił pan prawo powszechnego ciążenia?\r\n- Zgadza się, chamie.\r\n- Mówi ono, że każde dwa ciała posiadające masę przyciągają się nawzajem, prawda?\r\n- Owszem, ale co to...\r\n- To czemu nie potrafiłeś przyciągnąć żadnej dziewczyny, spierdolino?\r\nTrafiony, zatopiony! Akcja wywołała reakcję – Newton stanął osłupiony i usiłował się nie zesrać. Korzystając z okazji, rzuciłem się w jego stronę i obrysowałem podłogę dookoła kredą.\r\n- Co ty odpierdalasz, nędzniku? – spytał fizyk, spojrzał pod siebie i zrozumiał. Był to Newton na metr kwadratowy, czyli Pascal. Zaczął coś do mnie bełkotać po francusku, na co kazałem mu się zamknąć i zrobić pierogi z okrasą.\r\nNadal nie wiem, jak dwóch wielkich kucharzy zmieściło się w mojej kuchni. A jabłka Newtona były przepyszne.'),
(2, 'pastos', 'Idę na dziewczyny', '2017-11-11', 'JAK JESTEM W DOMU RODZINNYM I GDZIEŚ WYCHODZĘ TO MÓWIĘ\r\n- MAME WYCHODZĘ\r\nA MAME SIĘ ZAWSZE PYTA\r\n- A GDZIE IDZIESZ?\r\nA JA CZASEM WALNĘ ŻARTEM\r\n- A NA DZIEWCZYNY IDĘ HEHE\r\nI MAME I RESZTA OBECNYCH PRZY ROZMOWIE DOMOWNIKÓW/GOŚCI TEŻ SIĘ\r\nŚMIEJE\r\n-HEHEHEHE\r\nI TAK ŚMIEJEMY SIĘ RAZEM A POTEM JA WYCHODZĘ I PŁACZĘ PO CICHU'),
(4, 'pastos', 'Cywilizacja IKEA cz.1', '2017-05-03', 'Co się odjebalo to nie mogę. Słuchajcie potrzebowałem pracy na szybkości bo już musiałem się żuli prosić żeby mi na bułkę tarta pożyczyli to sobie ja sklejałem w domu i dwa chleby miałem ale chuj nie o tym. Trafiła się fucha, jako ochroniarz w ikeii. Wszystko zajebiście, rozmowa kwalifikacyjna poszła gładko. Generalnie praca ekstra, mało roboty patrzysz tylko czy ktoś czegoś nie zajebał, a nawet jeśli to i tak wyjebane, tam wszystko jest z tektury i jest warte nie więcej niż 15 zł, nawet z doniczek stalowych można składać samolociki i puszczać bo są kurwa z papieru. Wszystko było generalnie super aż wydarzyło się coś dziwnego. Ja zawsze zamykałem sklep o 23:00 koniec zmiany klucze do drzwi ostatni obchód i do domu. To był piątek pamietam. Jak gdyby nic dopełniłem obowiązku i wyjebałem na chatę. Nie wiedziałem o jednym. Ze niechcący w środku zamknąłem jakieś małżeństwo. Kurwa obsrałem się totalnie. Telefon od menadżera ,,coś dojebał alarm w restauracji włączony jacyś ludzie łażą i wpierdalaja klopsy na zimno z sosem żurawinowym i świąteczna szynkę za 12,99 pln. Zapierdalam swoim Lanosem o 3 w nocy pod sklep i słuchajcie. Wchodzę do środka odpalam latarkę idę do restauracji, wyjebałem się jeszcze o maskotkę kalafiora po drodze i przypierdolilem głową o szafkę ,,Steven . Wbijam do restauracji i słyszę szepty. No to krzyczę halo proszę wypierdalać tutaj ochrona. Nagle jeb dostałem czymś w głowę, wydaje mi się ze był to wałek do racuchów ,,Jonan  ale nie jestem pewien. Obudziłem się o 6 kiedy miałem otwierać sklep. Jak gdyby nigdy nic otwarłem i zacząłem przeglądać kamery. Myślałem ze jebne. Dwoje nagich ludzi zapierdala po magazynie i zbierają pudła i poskładane meble kuchenne. Mimo wszystko zaciekawiło mnie to. Oglądałem te kamery cały dzień. Słuchajcie, okazało się ze zbierali te meble i zanosili je takiego miejsca w magazynie gdzie nikt nie zagłada. Dział ogrodzenie. Odziani w żółte plastikowe worki z logo sklepu popierdalają z kawałkami mebli i układają je w jakieś dziwne budowle. I co mi odjebalo XD Wpadłem na pomysł. Tego dnia specjalnie zamknąłem sklep z trzema osobami w srodku plus te dwie co już były. Byłem zszokowany gdy wróciłem nad ranem i robiąc obowiązkowy obchód po magazynie znalazłem małą tekturowa zagrodę wykonaną z płotka Josë. W środku były pluszowe marchewki i jeże. Nie jestem pewien ale chyba na ziemi była jakaś zieleń, a dziwne bo można nabyć ją tylko w dziale zieleni... Nagle z ciemności wypadła jakaś postać i zaczęła coś krzyczeć wydaje mi się ze po nordycku, może nawet szwedzki, ale tak jakby słyszałem tylko nazwy mebli przyrządów zabawek które sprzedaje sklep. To był ten gość którego wczoraj zamknąłem, z włócznia zrobioną z włosów i ołówków. Zacząłem spierdalac co sił w nogach, poślizgnąłem się na stolcu, chyba ludzkim. Nagle goniły mnie trzy osoby, ubrane w żółte worki, prawie rozwalili drzwi do pokoiku ochroniarza gdy się w nim zamknąłem. Zniknęli w sumie tez nie wiem kiedy. Do końca dnia obserwowałem ich na kamerach. O ja jebe co tam się działo. Zaczęli od budowy prymitywnej chaty z biurka szkolnego Skagër i szafki Ölle. Sypali jakieś ziarna do zagrody z pluszowymi marchewkami i jeżami. Coś zbierali, wydaje mi się ze to były ołówki i papierowe taśmy miernicze i tworzyli z nich prymitywne narzędzia. To było niesamowite. Oni zaczęli tworzyć coś. Byłem w szoku. Zacząłem zamykać coraz więcej ludzi w sklepie. Zaczynałem od pojedynczych rodzin, naczęściej 2+1. Potem doszli staruszkowie a na końcu same dzieci. Przez te 3 miesiące zaczęła powstawać jebana cywilizacja. Powstawały domy z tektur i biurek, zagrody z pluszowymi zwierzętami. Żywili się klopsami i sosem żurawinowym. To było niesamowite. Ja tylko obserwowałem z daleka. Jak Bóg. Moje dzieci, tam wtał zwycięzcą i w blasku fleszy odebrał certyfikat Dziennika Telewizyjnego. Upiekł dwie pieczenie przy jednym ogniu - sam wygrał, a jeszcze zniszczył Kolonkę.  Co było dalej z Mariuszem? Cóż, nie przeczytacie o tym w książce  Odkrywanie Ameryki , ani w telewizji MaxTV, gdzie z czarującym uśmiechem relacjonuje wydarzenia z USA - obrazek jakże inny od tego z finału konkursu. Mariusz zniknął na całe wakacje i ślad po nim zaginął. Byłem pewny, że nigdy już go nie spotkam, lecz oto powrócił pod koniec listopada i wybłagał zgodę na studiowanie korespondencyjne. Opuścił akademik i za pieniądze z mleczarni zamieszkał w małym mieszkanku na warszawskiej Woli. Wciąż utrzymywaliśmy kontakt, a jakże, za bardzo lubiłem Mariusza by ot tak opuścić go z powodu publicznego wydalenia fekalii. Na uczelni śmiano się ze mnie, że  zadaję się z gównojadem , ale spływało to po mnie jak kauczuk po nogawkach Mariusza tamtego pamiętnego dnia. Dokuczano mi roztaczając plotki o mojej rzekomej koprofilii, kilka razy kumple Lisa oblewali mnie kałem podczas wizyty w toalecie, a raz na drzwiach akademika wyryto mi słowa  Siedziba zaruchańca . Przetrwałem to jednak, bo jestem silny psychicznie. Straciłem jednak Zuzę, która miała dość pytań o to czy rucham jej do mordy. Kolejne lata studiów minęły mi na samotnych wieczorach w pustym pokoju oraz cotygodniowym piwku z Mariuszem, które było odskocznią od nudy. Podczas kolejnego posiedzenia Mariusz raz jeszcze opowiadał mi, że jedyne o czym marzy to jak najszybszy wyjazd do wymarzonych Stanów. Czas szybko mijał. Skończyliśmy studia z wyróżnieniem broniąc się wiosną 1988 roku. Nie miałem pojęcia co dalej robić w życiu, więc szaleńcza wizja wyprawy do Ameryki zaczęła mnie coraz bardziej wciągać. Problemem nie była nawet legalność wyprawy, a koszty biletów.  Kombinowaliśmy tygodniami, ale jedyne co wymyśliliśmy to przeprawa statkiem - najtaniej, najlepiej. Nie mieliśmy pojęcia, co będziemy robić w USA, bo skupiliśmy się tylko na dotarciu tam. Jedyne na co wpadliśmy to zostanie filmowcami, którzy będą nagrywać filmy o Polonii. Zasuwałem na 2 etatach jako kucharz, a Mariusz porzucił mleczne przygody na rzecz podziemnych turniejów w pokera. Skubany mimo, że ruchacz, obruchaniec i przegraniec to jednak miał łeb do dziennikarstwa, kart oraz siłowni. Któregoś wieczoru, podczas polskiej premiery filmu Rocky IV, Mariusz opędzlował siedmiu opryszków w pokera na pokaźną sumę, a gdy dwóch zaczeło się stawiać to Mariusz sprowadził ich do parteru silnym prawym prostym. Za uzbierane pieniądze, plus połowę moich oszczędności kupiliśmy kamerę filmową a Mariusz zapisał się do wielkiego turnieju na Al. Szucha. Główną wygraną była równowartość dwóch biletów na statek  Eagle , z Gdyni do Nowego Jorku. Nie spaliśmy całą noc przed turniejem, ale zmartwienia były zupełnie niepotrzebne. Mariusz wparadował do salonu i ze stoickim spokojem pokonał wszystkich rywali wygrywając dla nas bilety. Uradowani jeszcze tego samego dnia udaliśmy się do Gdyni, gdzie dosłownie w ostatniej chwili złapaliśmy statek. Brzmi trochę jak historia Leonardo Di Caprio w Titanicu? Nieprzypadkowo. Mariusz w USA został scenarzystą filmowym i sprzedał własną historię wytwórni 20th Century Fox za dwa koce oraz tamburyno. Macie naszą fotkę zrobioną na pokładzie  Eagle , gdzie zakończyła się nasza przygoda z Polską, perypetie z kobietami i wojna z Lisem, a rozpoczęła przygoda z Ameryką - krajem wolności i możliwości. Młodzi, uśmiechnięci, pełni nadziei na nowe życie, wyposażeni tylko w wysłużoną kamerę filmową szczerzymy się do fotografii nie wiedząc jeszcze co nas czeka. 14 sierpnia 1988 roku, dokładnie 28 lat temu.'),
(5, 'pastos', 'Cywilizacja IKEA cz.2', '2017-05-03', 'Wszystko zaczęło się pierdolić kiedy wpadłem na naprawdę debilny pomysł. Byłem tak zafascynowany swoim tworem, że postanowiłem wejść w niego całością. Rozpocząłem przygotowania. Zwracałem uwagę na ich zachowanie, zwyczaje i tradycje. Najgorsze było poznanie tego debilnego języka. Ja naprawdę nie rozumiem jak można każdą rzecz nazwać inaczej i to jeszcze jakimś pseudo imieniem. Kurwa przecież krzesło obrotowe to powinno być krzesło obrotowe a nie jakiś Gönter Skålle. To tak jakby nie wiem na prysznic mówić Mariusz Wrona, posrane. Ale do rzeczy. Zajęło mi to 4 miesiące i w końcu stwierdziłem, że jestem gotowy. Rozebrałem się w moim pokoju do naga i ubrałem worek. No właśnie, to był mój pierwszy błąd. Nie miałem niebieskiego tylko żółty. Stwierdziłem, że nie będzie przypału, jeszcze ostanie spojrzenie na kamery i w drogę. Był już świt (zaczynalem włączać lampy w magazynie) , wyślizgnąłem się z kanciapy i pewnym krokiem ruszyłem do miasta.  Mój Boże to było niesamowite. Piękne kamienice z rzeźbionymi w kartonie i drewnie wykończeniami. Freski przedstawiające słynnych niebieskoworkowców malowane farbami plakatowymi Färben. Karczmy, targi, sklepiki, koszary... po prostu wszystko. W oddali horyzont przysłaniały potężne mury (tekturowe) zamku Ulëvall. Zaczęło mi być trochę zimno bo klimatyzacja działa ,a ja miałem na sobie tylko plastikowy worek, z dziura na prawym pośladku, która później dała o sobie mocno znać. Tak, dziura na dupie bohaterem. Wszedłem się ogrzać do karczmy. W środku płonął elektryczny kominek Kämy, podszedłem do baru i poprosiłem o słynny i wszystkim znany pseudocydrowy pośredni metabolit cyklu mocznikowego zwany napojem gruszkowym. Kobieta za ladą nalała mi do tekturowego kufla trochę trunku. Zaraz jednak zamókł i poszło wszystko w pizdu co mnie sfrustrowało nie ukrywam. Nie wiem, ale jakiś byłem podminowany wtedy, wstałem wziąłem ten ochłap papieru, złapałem żółtka obok i włożyłem mu go w usta (ten mokry kubek) Nastała cisza. Tak... zapomniałem. Zrobiłem coś co może zrobić tylko niebieskoworkowiec mimo, że doskonale znałem ich kodeksy. Skarciłem żółtego samemu będąc odziany w worek wstydu (tak na to mówili niebiescy) Do karczmy wpadło czterech zbrojnych. Powiedzmy zbrojnych mieli oprócz worków, plastikowe pojemniki na śniadania w kształcie jamnika jako dopełnienie zbroi. A lali mnie piszczącymi pluszowymi pałkami bejsbolowymi. I nawet nie sam ból jak ten żałosny dźwięk pip.. pip... pip spowodował ze nie mogłem wytrzymać. Zacząłem uciekać wybiegłem przed karczmę i długa w dział szaf na ubrania. Los chciał ze znowu wyjebałem się na pluszowym kalafiorze... Już mnie mieli. Ocknąłem się w czymś co wyglądało jak...jak ładnie urządzona kuchnia. Okazało się ze to pokój spotkań z królem. No właśnie z królem. Dotarło do mnie ze przez ten czas kiedy obserwowałem sobie pobieżnie cała cywilizacje. Oni zdążyli wybrać sobie jakiegoś cwelca na króla. Znowu się wściekłem. Przecież to ja jestem Bogiem, ja ich stworzyłem. I wtedy wszedł on. Cały na tekturowo. Na szyi miał taki naszyjnik z makaronu a na niego nawleczone były 4 klopsy w sosie żurawinowym, w sumie zajebiste. Na plecach miał szatę z bawolej skory z działu dekoracji, wtedy dowiedziałem się ze można coś takiego nabyć w tym gównosklepie XD Na palcach miał te takie zabaweczki kukiełki do teatrzyku. Na każdym inna. Był lis, niedźwiedź i piesek. Jako korona służył mu świecznik na świece zapachowe. Myślałem ze skisne, ale musiałem utrzymać pozory, przecież jakbym coś dojohnpaulił to by mnie spalili na jakiś tekturowym stosie czy ki chuj. Wszedł i mówi. -Jak cie zwą ? -wymyśliłem na poczekaniu i mówię ,,Skågger” Król zamarł. Szepnął coś do swojego dryblasa i nagle zbiegło się z 20 osób do tej kuchni o wymiarach 3x3 metry, Wiec myślałem ze się zesram bo wszyscy stali i byli do siebie przytuleni. Śmierdziało gównem bo zleciało się jeszcze paru żółtych wieśniaków, ale wytrzymałem bo nie w czepku urodzony wiecie o co cho. Król lekko przyduszony zaczął mówić -Czy ty jesteś ten Skågger który wykonał Ånuslöp. Zgłupiałem i odruchowo powiedziałem -Jå (czyli tak) No i wtedy był drugi błąd. Podeszło trzech gości i wrzucili mnie do wózka i zaczęli gdzieś wieźć. Po godzinie dojechaliśmy. Poznałem to miejsce. To był słynny teatr Amså zaraz obok restauracji. Stałem za kulisami, podeszło do mnie dwóch niebieskoworkowców i zaczęli mnie witać i gratulować odwagi. Powiedzieli że ostatnia osoba która pojęła się Ånuslöp marnie skończyła więc darzą mnie jeszcze większym szacunkiem. Zgłupiałem i spytałem co to jest ten ,,Anuslöp  . Wytłumaczyli... po czym myślałem ze strzelę sobie w łeb jebanym ołówkiem. Otóż ten tak zwany wyczyn. Polega na tym ze na oczach króla i 500 osób które zasiadają w tekturowym teatrze. Mam oddać stolec do worka który mam na sobie. Potem stanąć na rękach tak żeby nie wypadł z worka. To był moment w którym wiedziałem, że muszę zdupcać. Ale nie było jak, wszędzie stały straże. Powiedziałem sobie przysłowiowe YOLO. Podobno jeśli ten trick się powiedzie miałem otrzymać pokaźną wypłatę ze skarbca państwowego. Nie wiem czy wspomniałem, ale w owym miejscu walutą były panierowane serki cheddar i gorgonzola. To był też moment kiedy zwątpiłem w swoje dzieło i trochę mi się zrobiło smutno i wstyd zarazem, ale dobra wracając do historii. Okazało się, że jeśli wyczyn się nie powiedzie mam zostać stracony następnego dnia. Stanąłem na środku sceny. Nie widziałem nic tylko małe punkciki na środku. To chyba były waniliowe świece zapachowe otaczające króla. Używali ich jako pochodni i źródła światła. Zrobiło mi się niedobrze. Zawsze tak miałem w stresie. W sumie moje życie wisiało na kablu. Wiedziałem ze muszę to zrobić. Spiąłem się. Totalne skupienie. Nigdy nie umiałem srać na zawołanie, ale teraz nagle objawiła się ta umiejetność. Zesrałem się. Na mokro. Szkurwa... zapomniałem że jadłem 8 hotdogow wcześniej. Kosztowało mnie to 8 zł i byłem najedzony wiec niby profit. Poczułem to masakryczne ciepło na pośladkach i chłód na twarzy. Dobra połowa już za mną pomyślałem. Chce mi się potwornie rzygać ale jeszcze tylko na ręce i spierdalam. Serki zatrzymam ale tylko cheddary bo gorgonzola to gowno. No i właśnie... Pamiętacie tą dziurę o której wspominałem ? Dokładnie tak, w sekundę cała zawartość worka wylała się na tekturową scenę hucznie przy tym pykając. Cisza... nastała cisza... Pierwsze co przyszło mi do głowy to ,,Spierdalaj stary” i tak też zrobiłem. Odwróciłem się na jednej nodze i rura. Los chciał, że lewa stopa poślizgnęła się na gównie (chociaż tyle że własne to mniejszy ból) wytrącając mnie z równowagi. Przebiegłem 3 metry i .... No właśnie. Znowu wyjebałem na tym zasranym kalafiorze i zadupcyłem głową w półkę Sophä. Kto to rozrzucał nie wiem, ale poprzysiągłem sobie wtedy, że go znajdę i zniszczę. Zostałem pojmany. Mój umysł przepełniała czytsa nienawiść do pluszowych kalafiorów. W drewnianej celi która w rzeczywistości była szafą do garderoby spotkałem pewnego człowieka. Mówił że ma na imię Sven. Tak jak ja, miał być stracony następnego dnia. W pewnym momencie niewiadomo czemu zaczął się masturbować, ale kazałem mu przestać bo już miałem naprawdę dosyć wrażeń tego dnia. Zacząłem opowiadać mu wszystko. Cała prawdę o powstaniu cywilizacji. Na początku nie wierzył, ale potem zaczął opowiadać swoją historie. Sven był żółtoworkowcem. Pracował na polu z fikusami i storczykami. W sumie nic tam nie robił bo są nawadniane przez system komputerowy, ale nie mówiłem mu tego bo by chyba ochujał na taką informacje. Pewnego dnia jego pan oskarżył go o kradzież szwedzkiego torcika nugatowego z chrupką posypką. Sven zarzekał się że to na pewno nie on skradł tą delicje. Jednak jego pan skatował go drewnianym młotkiem do wbijania plastikowych walców (ta zabawka dla dzieci wiecie co) i wezwał straże które wtrąciły go do tej celi. Opowiadał mi jak kasta żółtoworkowców jest uciśniona przez niebieskich. Do czego są zmuszani. Koloseum, zabawianie króla i najgorsze czego się dowiedziałem. Okazało się, że Ånuslöp odbywa się co dwa dni, a król i mieszczanie tylko wciskają nędzny kit aby wyłapać jak najwiecej ofiar. Nie mogłem do tego dopuścić. Wiedziałem co musimy zrobić. Wraz ze Svenem zaczęliśmy spiskować przeciwko niebieskim i królowi. To była najwyższa pora. Zgodnie z naszym planem rozesłaliśmy listy i jutro w getcie na dziale sypialnia miało wybuchnąć powstanie. Już wiedziałem ze zapisze się na kartach historii cywilizacji Ikea krwią i potem. Położyliśmy się spać, lecz ani ja ani Sven nie mogliśmy usnąć z wrażenia. Zaczął się znowu masturbować. Rzuciłem w niego łyżka i przestał. Podłożyłem pod kark piankową poduszkę Töt ,,Tak, jutro świat będzie inny” pomyślałem. Zanim usnąłem ostatnia rzecz którą zobaczyłem ,to że w drugiej ręce Sven trzyma zielonego pluszowego kalafiora. To nie mogło się dobrze skończyć.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `krotkie`
--

CREATE TABLE `krotkie` (
  `id` int(11) NOT NULL,
  `autor` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `tytul` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `tresc` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `typ` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `typ`) VALUES
(1, 'admin', 'admin', 'premium'),
(5, 'okon', 'szczupak', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `capsrage`
--
ALTER TABLE `capsrage`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `janusze`
--
ALTER TABLE `janusze`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `klasyki`
--
ALTER TABLE `klasyki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `krotkie`
--
ALTER TABLE `krotkie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `capsrage`
--
ALTER TABLE `capsrage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `janusze`
--
ALTER TABLE `janusze`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `klasyki`
--
ALTER TABLE `klasyki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `krotkie`
--
ALTER TABLE `krotkie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
