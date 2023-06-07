#!/bin/bash -x
#
# ---className---
# compile.sh
#
# ---classUsage---
# bash compile.sh $1
#   $1:javaClassName
#
# ---classInfo---
# 引数に指定されたjavaクラス名を活用し、対象クラスをコンパイルする。
# コンパイルしたクラスファイルは、classes配下に作成される。
#

function resultCheck() {
  if [[ ${1} == 0 ]]; then
    echo -e "\n-----SUCCESS-----value[${1}]-----line[${LINENO}]\n"
  else
    echo -e "\n-----ERROR-----value[${1}]-----line[${LINENO}]\n"
  fi
}

# 各変数に初期値を設定する
dir_classes="classes"
java_class_name=$1
java_class_file="${1}.java"

javac -d ../${dir_classes} -encoding UTF-8 ./${java_class_file}
# javac -verbose -d ../${dir_classes} -encoding UTF-8 ./${java_class_file}
resultCheck $?

exit 0
