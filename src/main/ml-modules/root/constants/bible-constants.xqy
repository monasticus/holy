xquery version "1.0-ml" encoding "utf-8";

(:~
 : The bible-constants.xqy library module contains constants
 : directly releted to the bible, mainly related to the bible structure.
 : It contains e.g. tome sigla and tome names.
 :)
module namespace bc = "http://marklogic.com/holy/ml-modules/bible-constants";

import module namespace hhc = "http://marklogic.com/holy/ml-modules/holy-hub-constants" at "/constants/holy-hub-constants.xqy";
import module namespace hh = "http://marklogic.com/holy/ml-modules/holy-hub-utils" at "/libs/holy-hub-utils.xqy";

(: COUNTITY CONSTANTS :)
declare variable $bc:TOME-CARD-NUM-RANGE-START as xs:int := 1;
declare variable $bc:TOME-CARD-NUM-RANGE-END as xs:int := 73;
declare variable $bc:OLD-T-TOME-CARD-NUM-RANGE-START as xs:int := 1;
declare variable $bc:OLD-T-TOME-CARD-NUM-RANGE-END as xs:int := 46;
declare variable $bc:NEW-T-TOME-CARD-NUM-RANGE-START as xs:int := 47;
declare variable $bc:NEW-T-TOME-CARD-NUM-RANGE-END as xs:int := 73;
declare variable $bc:OLD-T-VERSE-CARD-NUM-RANGE-START as xs:int := 1;
declare variable $bc:OLD-T-VERSE-CARD-NUM-RANGE-END as xs:int := 27626;
declare variable $bc:NEW-T-VERSE-CARD-NUM-RANGE-START as xs:int := 27627;
declare variable $bc:NEW-T-VERSE-CARD-NUM-RANGE-END as xs:int := 35567;

(: TESTAMENT NAMES CONSTANTS :)

declare variable $bc:OLD-TESTAMENT as xs:string := "Old Testament";
declare variable $bc:NEW-TESTAMENT as xs:string := "New Testament";

(: TOME SIGLA CONSTANTS :)
declare variable $bc:SIGLUM-RDZ as xs:string := "Rdz";
declare variable $bc:SIGLUM-WJ as xs:string := "Wj";
declare variable $bc:SIGLUM-KPL as xs:string := "Kpł";
declare variable $bc:SIGLUM-LB as xs:string := "Lb";
declare variable $bc:SIGLUM-PWT as xs:string := "Pwt";
declare variable $bc:SIGLUM-JOZ as xs:string := "Joz";
declare variable $bc:SIGLUM-SDZ as xs:string := "Sdz";
declare variable $bc:SIGLUM-RT as xs:string := "Rt";
declare variable $bc:SIGLUM-SM-1 as xs:string := "1Sm";
declare variable $bc:SIGLUM-SM-2 as xs:string := "2Sm";
declare variable $bc:SIGLUM-KRL-1 as xs:string := "1Krl";
declare variable $bc:SIGLUM-KRL-2 as xs:string := "2Krl";
declare variable $bc:SIGLUM-KRN-1 as xs:string := "1Krn";
declare variable $bc:SIGLUM-KRN-2 as xs:string := "2Krn";
declare variable $bc:SIGLUM-EZD as xs:string := "Ezd";
declare variable $bc:SIGLUM-NE as xs:string := "Ne";
declare variable $bc:SIGLUM-TB as xs:string := "Tb";
declare variable $bc:SIGLUM-JDT as xs:string := "Jdt";
declare variable $bc:SIGLUM-EST as xs:string := "Est";
declare variable $bc:SIGLUM-MCH-1 as xs:string := "1Mch";
declare variable $bc:SIGLUM-MCH-2 as xs:string := "2Mch";
declare variable $bc:SIGLUM-HI as xs:string := "Hi";
declare variable $bc:SIGLUM-PS as xs:string := "Ps";
declare variable $bc:SIGLUM-PRZ as xs:string := "Prz";
declare variable $bc:SIGLUM-KOH as xs:string := "Koh";
declare variable $bc:SIGLUM-PNP as xs:string := "Pnp";
declare variable $bc:SIGLUM-MDR as xs:string := "Mdr";
declare variable $bc:SIGLUM-SYR as xs:string := "Syr";
declare variable $bc:SIGLUM-IZ as xs:string := "Iz";
declare variable $bc:SIGLUM-JR as xs:string := "Jr";
declare variable $bc:SIGLUM-LM as xs:string := "Lm";
declare variable $bc:SIGLUM-BA as xs:string := "Ba";
declare variable $bc:SIGLUM-EZ as xs:string := "Ez";
declare variable $bc:SIGLUM-DN as xs:string := "Dn";
declare variable $bc:SIGLUM-OZ as xs:string := "Oz";
declare variable $bc:SIGLUM-JL as xs:string := "Jl";
declare variable $bc:SIGLUM-AM as xs:string := "Am";
declare variable $bc:SIGLUM-AB as xs:string := "Ab";
declare variable $bc:SIGLUM-JON as xs:string := "Jon";
declare variable $bc:SIGLUM-MI as xs:string := "Mi";
declare variable $bc:SIGLUM-NA as xs:string := "Na";
declare variable $bc:SIGLUM-HA as xs:string := "Ha";
declare variable $bc:SIGLUM-SO as xs:string := "So";
declare variable $bc:SIGLUM-AG as xs:string := "Ag";
declare variable $bc:SIGLUM-ZA as xs:string := "Za";
declare variable $bc:SIGLUM-ML as xs:string := "Ml";
declare variable $bc:SIGLUM-MT as xs:string := "Mt";
declare variable $bc:SIGLUM-MK as xs:string := "Mk";
declare variable $bc:SIGLUM-LK as xs:string := "Łk";
declare variable $bc:SIGLUM-J as xs:string := "J";
declare variable $bc:SIGLUM-DZ as xs:string := "Dz";
declare variable $bc:SIGLUM-RZ as xs:string := "Rz";
declare variable $bc:SIGLUM-KOR-1 as xs:string := "1Kor";
declare variable $bc:SIGLUM-KOR-2 as xs:string := "2Kor";
declare variable $bc:SIGLUM-GA as xs:string := "Ga";
declare variable $bc:SIGLUM-EF as xs:string := "Ef";
declare variable $bc:SIGLUM-FLP as xs:string := "Flp";
declare variable $bc:SIGLUM-KOL as xs:string := "Kol";
declare variable $bc:SIGLUM-TES-1 as xs:string := "1Tes";
declare variable $bc:SIGLUM-TES-2 as xs:string := "2Tes";
declare variable $bc:SIGLUM-TM-1 as xs:string := "1Tm";
declare variable $bc:SIGLUM-TM-2 as xs:string := "2Tm";
declare variable $bc:SIGLUM-TT as xs:string := "Tt";
declare variable $bc:SIGLUM-FLM as xs:string := "Flm";
declare variable $bc:SIGLUM-HBR as xs:string := "Hbr";
declare variable $bc:SIGLUM-JK as xs:string := "Jk";
declare variable $bc:SIGLUM-P-1 as xs:string := "1P";
declare variable $bc:SIGLUM-P-2 as xs:string := "2P";
declare variable $bc:SIGLUM-J-1 as xs:string := "1J";
declare variable $bc:SIGLUM-J-2 as xs:string := "2J";
declare variable $bc:SIGLUM-J-3 as xs:string := "3J";
declare variable $bc:SIGLUM-JUD as xs:string := "Jud";
declare variable $bc:SIGLUM-AP as xs:string := "Ap";

(: TOME NAMES CONSTANTS :)
declare variable $bc:NAME-RDZ as xs:string     := "Księga Rodzaju";
declare variable $bc:NAME-WJ as xs:string      := "Księga Wyjścia";
declare variable $bc:NAME-KPL as xs:string     := "Księga Kapłańska";
declare variable $bc:NAME-LB as xs:string      := "Księga Liczb";
declare variable $bc:NAME-PWT as xs:string     := "Księga Powtórzonego Prawa";
declare variable $bc:NAME-JOZ as xs:string     := "Księga Jozuego";
declare variable $bc:NAME-SDZ as xs:string     := "Księga Sędziów";
declare variable $bc:NAME-RT as xs:string      := "Księga Rut";
declare variable $bc:NAME-SM-1 as xs:string    := "1. Księga Samuela";
declare variable $bc:NAME-SM-2 as xs:string    := "2. Księga Samuela";
declare variable $bc:NAME-KRL-1 as xs:string   := "1. Księga Królewska";
declare variable $bc:NAME-KRL-2 as xs:string   := "2. Księga Królewska";
declare variable $bc:NAME-KRN-1 as xs:string   := "1. Księga Kronik";
declare variable $bc:NAME-KRN-2 as xs:string   := "2. Księga Kronik";
declare variable $bc:NAME-EZD as xs:string     := "Księga Ezdrasza";
declare variable $bc:NAME-NE as xs:string      := "Księga Nehemiasza";
declare variable $bc:NAME-TB as xs:string      := "Księga Tobiasza";
declare variable $bc:NAME-JDT as xs:string     := "Księga Judyty";
declare variable $bc:NAME-EST as xs:string     := "Księga Estery";
declare variable $bc:NAME-MCH-1 as xs:string   := "1. Księga Machabejska";
declare variable $bc:NAME-MCH-2 as xs:string   := "2. Księga Machabejska";
declare variable $bc:NAME-HI as xs:string      := "Księga Hioba";
declare variable $bc:NAME-PS as xs:string      := "Księga Psalmów";
declare variable $bc:NAME-PRZ as xs:string     := "Księga Przysłów";
declare variable $bc:NAME-KOH as xs:string     := "Księga Koheleta";
declare variable $bc:NAME-PNP as xs:string     := "Pieśń nad Pieśniami";
declare variable $bc:NAME-MDR as xs:string     := "Księga Mądrości";
declare variable $bc:NAME-SYR as xs:string     := "Mądrość Syracha (Syracydesa)";
declare variable $bc:NAME-IZ as xs:string      := "Księga Izajasza";
declare variable $bc:NAME-JR as xs:string      := "Księga Jeremiasza";
declare variable $bc:NAME-LM as xs:string      := "Lamentacje";
declare variable $bc:NAME-BA as xs:string      := "Księga Barucha";
declare variable $bc:NAME-EZ as xs:string      := "Księga Ezechiela";
declare variable $bc:NAME-DN as xs:string      := "Księga Daniela";
declare variable $bc:NAME-OZ as xs:string      := "Księga Ozeasza";
declare variable $bc:NAME-JL as xs:string      := "Księga Joela";
declare variable $bc:NAME-AM as xs:string      := "Księga Amosa";
declare variable $bc:NAME-AB as xs:string      := "Księga Abdiama";
declare variable $bc:NAME-JON as xs:string     := "Księga Jonasza";
declare variable $bc:NAME-MI as xs:string      := "Księga Micheasza";
declare variable $bc:NAME-NA as xs:string      := "Księga Nahuma";
declare variable $bc:NAME-HA as xs:string      := "Księga Habakuka";
declare variable $bc:NAME-SO as xs:string      := "Księga Sofoniasza";
declare variable $bc:NAME-AG as xs:string      := "Księga Aggeusza";
declare variable $bc:NAME-ZA as xs:string      := "Księga Zachariasza";
declare variable $bc:NAME-ML as xs:string      := "Księga Malachiasza";
declare variable $bc:NAME-MT as xs:string      := "Ewangelia wg św. Mateusza";
declare variable $bc:NAME-MK as xs:string      := "Ewangelia wg św. Marka";
declare variable $bc:NAME-LK as xs:string      := "Ewangelia wg św. Łukasza";
declare variable $bc:NAME-J as xs:string       := "Ewangelia wg św. Jana";
declare variable $bc:NAME-DZ as xs:string      := "Dzieje Apostolskie";
declare variable $bc:NAME-RZ as xs:string      := "List do Rzymian";
declare variable $bc:NAME-KOR-1 as xs:string   := "1. List do Koryntian";
declare variable $bc:NAME-KOR-2 as xs:string   := "2. List do Koryntian";
declare variable $bc:NAME-GA as xs:string      := "List do Galatów";
declare variable $bc:NAME-EF as xs:string      := "List do Efezjan";
declare variable $bc:NAME-FLP as xs:string     := "List do Filipian";
declare variable $bc:NAME-KOL as xs:string     := "List do Kolosan";
declare variable $bc:NAME-TES-1 as xs:string   := "1. List do Tesaloniczan";
declare variable $bc:NAME-TES-2 as xs:string   := "2. List do Tesaloniczan";
declare variable $bc:NAME-TM-1 as xs:string    := "1. List do Tymoteusza";
declare variable $bc:NAME-TM-2 as xs:string    := "2. List do Tymoteusza";
declare variable $bc:NAME-TT as xs:string      := "List do Tytusa";
declare variable $bc:NAME-FLM as xs:string     := "List do Filemona";
declare variable $bc:NAME-HBR as xs:string     := "List do Hebrajczyków";
declare variable $bc:NAME-JK as xs:string      := "List św. Jakuba";
declare variable $bc:NAME-P-1 as xs:string     := "1. List św. Piotra";
declare variable $bc:NAME-P-2 as xs:string     := "2. List św. Piotra";
declare variable $bc:NAME-J-1 as xs:string     := "1. List św. Jana";
declare variable $bc:NAME-J-2 as xs:string     := "2. List św. Jana";
declare variable $bc:NAME-J-3 as xs:string     := "3. List św. Jana";
declare variable $bc:NAME-JUD as xs:string     := "List św. Judy";
declare variable $bc:NAME-AP as xs:string      := "Apokalipsa wg św. Jana";

declare variable $bc:BIBLE-STRUCTURE := hh:read-from-db("/constants/bible-structure.xml", $hhc:MODULES-DB-ID);