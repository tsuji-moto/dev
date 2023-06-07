#!/bin/bash -x
#
# ---className---
# functions.sh
#
# ---classUsage---
# source functions.sh
# function名
#
# ---classInfo---
# 各種ファンクション関数を定義する。
# 関数を利用する際は、Usageに記載の通り、
# 当クラスをsourceコマンドでインポートし、
# 活用したいファンクション関数を呼び出す。
#

function resultCheck() {
  if [[ ${1} == 0 ]]; then
    echo -e "\n-----SUCCESS-----value[${1}]-----line[${LINENO}]\n"
  else
    echo -e "\n-----ERROR-----value[${1}]-----line[${LINENO}]\n"
  fi
}
