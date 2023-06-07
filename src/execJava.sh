#!/bin/bash -x
#
# ---className---
# execJava.sh
#
# ---classUsage---
# bash execJava.sh $1
#   $1:javaClassName
#
# ---classInfo---
# 引数に指定されたjavaクラス名を活用し、対象クラスをコンパイルする。
# コンパイルしたクラスファイルは、classes配下に作成される。
#

# import
source functions.sh

# 各変数に初期値を設定する
dir_classes="classes"

java -cp ../${dir_classes} ${1}

resultCheck $?

exit 0
