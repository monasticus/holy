/*
  Copyright 2012-2019 MarkLogic Corporation

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/

const datahubxqymodule = require("lib.xqy");

function main(content, options) {
  let modifiedContent = datahubxqymodule.main(new NodeBuilder().addNode(content).toNode(), options);
  content.value = modifiedContent;
  content.uri = getUri(content.uri, options)
  return content;
}

function getUri(oldUri, options){
  if (oldUri.includes('1')){
    return "/Glossary/dictionary." + options.outputFormat
  } else {
    return "/Glossary/definitions." + options.outputFormat
  }
}


module.exports = {
  main: main
};
