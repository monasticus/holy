xquery version "1.0-ml";

import module namespace fc = "http://marklogic.com/holy/ml-modules/flow-constants" at "/constants/flow-constants.xqy";

declare namespace xhtml = "http://www.w3.org/1999/xhtml";
declare namespace ins = "xdmp:document-insert";

declare variable $URI external;
declare variable $SESSION-ID external;

declare variable $doc-options as element(ins:options) :=
    <options xmlns="xdmp:document-insert">
        <permissions>{xdmp:default-permissions()}</permissions>
        <collections>{
            <collection>{$fc:XHTML-CONTENT-COLLECTION}</collection>,
            <collection>{$fc:CURRENT-XHTML-CONTENT-VERSION}</collection>,
            <collection>{$fc:LATEST-COLLECTION}</collection>,
            xdmp:default-collections() ! <collection>{.}</collection>
        }</collections>
    </options>;

declare function local:get-chapter-html-body(
        $url as xs:string
) as element(xhtml:body)
{
    let $resp :=
        xdmp:http-get($url,
                <options xmlns="xdmp:http">
                    <headers>
                        <Cookie>{fn:concat("PHPSESSID=", $SESSION-ID)}</Cookie>
                    </headers>
                    <verify-cert>false</verify-cert>
                </options>
        )[2] => xdmp:from-json()

    let $html := map:get($resp, "data") => map:get("chapter") => map:get("content")
    let $body := xdmp:tidy($html)[2]/xhtml:html/xhtml:body
    return $body
};

for $url in fn:tokenize($URI, ";")
let $doc-uri := fn:substring-after($url, $fc:PISMOSWIETE-PL-API-URL) || "/" || $fc:CURRENT-XHTML-CONTENT-VERSION || ".xml"
let $doc-root := local:get-chapter-html-body($url)
return xdmp:document-insert($doc-uri, $doc-root, $doc-options)