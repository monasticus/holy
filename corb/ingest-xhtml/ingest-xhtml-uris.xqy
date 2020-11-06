xquery version "1.0-ml";

import module namespace bc = "http://marklogic.com/holy/ml-modules/bible-constants" at "/constants/bible-constants.xqy";
import module namespace hmc = "http://marklogic.com/holy/ml-modules/holy-management-constants" at "/constants/holy-management-constants.xqy";

declare namespace bs = "http://marklogic.com/holy/ml-modules/bible-structure";

declare variable $SESSION-ID as xs:string external;

(: remove the 'latest' collection from  :)
let $old-uris :=
    cts:uris((), (),
        cts:and-query((
            cts:directory-query("/tome/", "infinity"),
            cts:collection-query($hmc:CURRENT-XHTML-CONTENT-VERSION) => cts:not-query(),
            cts:collection-query(($hmc:XHTML-CONTENT-COLLECTION, "latest"))
        ))
    )
let $_ := $old-uris ! xdmp:document-remove-collections(., "latest")

let $uris :=
    for $tome in $bc:BIBLE-STRUCTURE/bs:bible//bs:tome
    let $siglum := $tome/bs:siglum/xs:string(.)
    let $first-chapter := $tome/bs:first-chapter/xs:string(.)
    let $last-chapter := $tome/bs:last-chapter/xs:string(.)
    return (
        if ($siglum eq $bc:SIGLUM-SYR) then fn:concat($hmc:PISMOSWIETE-PL-API-URL, "/tome/", $siglum, "/chapter/", $first-chapter) else (),
        for $number in (1 to xs:integer($last-chapter))
        return fn:concat($hmc:PISMOSWIETE-PL-API-URL, "/tome/", $siglum, "/chapter/", $number)
    )
return (fn:count($uris), $uris)