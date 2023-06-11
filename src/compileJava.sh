#!/bin/bash -x
#
# ---className---
# compileJava.sh
#
# ---classUsage---
# bash compileJava.sh $1
#   $1:packageName/javaFileName
#
# ---classInfo---
# 引数に指定されたjavaクラス名を活し、対象クラスをコンパイルする。
# コンパイルしたクラスファイルは、classes配下に作成される。
#

# import
source functions.sh

# 各変数に初期値を設定する
dir_classes="classes"
java_class_name=$1
java_class_file=${1}

javac -d ../${dir_classes} -encoding UTF-8 ./${java_class_file}
# javac -verbose -d ../${dir_classes} -encoding UTF-8 ./${java_class_file}

resultCheck $?

exit 0
