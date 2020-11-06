xquery version "1.0-ml";

module namespace flow = "http://marklogic.com/holy/ml-modules/flow-utils";

declare namespace es = "http://marklogic.com/entity-services";

declare function flow:make-envelope(
        $content as item()?,
        $headers as item()?,
        $triples as item()?,
        $output-format as xs:string
) as node()*
{
    if ($output-format = "xml") then
        document {
            <envelope xmlns="http://marklogic.com/entity-services">
                <headers>{$headers}</headers>
                <triples>{$triples}</triples>
                <instance>{$content}</instance>
            </envelope>
        }
    else
        let $envelope := json:object()
        => map:with("headers", $headers)
        => map:with("triples", $triples)
        => map:with("instance", $content)

        let $wrapper := json:object()
        => map:with("envelope", $envelope)
        return
            xdmp:to-json($wrapper)
};

(:~
 : Create Headers
 :
 : @param $content      - the raw content
 : @param $options      - a map containing options
 : @param $source-uri   - a source-uri
 :
 :)
declare function flow:create-headers(
        $content as item()?,
        $options as map:map,
        $source-uri as xs:string
) as node()*
{
    let $output-format := if (fn:empty(map:get($options, "outputFormat"))) then "xml" else map:get($options, "outputFormat")
    return
        if ($output-format eq 'xml')
        then
            (
                element es:sourceUri {$source-uri}
            )
        else
            object-node {
            "sourceUri": $source-uri
            }
};

declare function flow:get-info-node(
        $title as xs:string,
        $version as xs:string
) as object-node()
{
    object-node {
    "title" : $title,
    "version" : $version
    }
};

declare function flow:get-info-element(
        $title as xs:string,
        $version as xs:string
) as element(es:info)
{
    element es:info {
        element es:title {$title},
        element es:version {$version}
    }
};