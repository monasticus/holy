xquery version "1.0-ml";

module namespace hhc = "http://marklogic.com/holy/ml-modules/holy-hub-constants";

declare variable $hhc:CURRENT-DB-ID as xs:unsignedLong := xdmp:database();
declare variable $hhc:CURRENT-DB-NAME as xs:string := xdmp:database-name($hhc:CURRENT-DB-ID);

declare variable $hhc:FINAL-DB-NAME as xs:string := "holy-FINAL";
declare variable $hhc:STAGING-DB-NAME as xs:string := "holy-STAGING";
declare variable $hhc:JOB-DB-NAME as xs:string := "holy-JOBS";
declare variable $hhc:MODULES-DB-NAME as xs:string := "holy-MODULES";
declare variable $hhc:TEST-DB-NAME as xs:string := "holy-TEST";
declare variable $hhc:FINAL-DB-ID as xs:unsignedLong := xdmp:database($hhc:FINAL-DB-NAME);
declare variable $hhc:STAGING-DB-ID as xs:unsignedLong := xdmp:database($hhc:STAGING-DB-NAME);
declare variable $hhc:JOB-DB-ID as xs:unsignedLong := xdmp:database($hhc:JOB-DB-NAME);
declare variable $hhc:MODULES-DB-ID as xs:unsignedLong := xdmp:database($hhc:MODULES-DB-NAME);
declare variable $hhc:TEST-DB-ID as xs:unsignedLong := xdmp:database($hhc:TEST-DB-NAME);