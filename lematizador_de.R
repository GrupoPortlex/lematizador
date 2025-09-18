
# Es necesario contar con una instalación local del sistema de taggeado y de los parámetros para la lengua que se desee: https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/
library(koRpus)
library("koRpus.lang.de") #Adaptar en función de la lengua de trabajo
library(dplyr)

tagged.text <- treetag(
  "input_directory",
  treetagger="manual",
  lang="de",
  TT.options=list(
    path="treetagger_directory",
    preset="de"
  ),
) 

tagged_golden <- taggedText(tagged.text)[,c(2:4,6)] #Columnas que interesan para token, type y pos-tag
