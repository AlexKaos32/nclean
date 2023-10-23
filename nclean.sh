#!/bin/bash

while getopts f: flag

do
  case "${flag}" in
    f) file = ${OPTARG};;
  esac
done

cat $file | grep "Nmap scan report for" | cut -d "(" -f2 | cut -d ")" -f1 | cut -d " " -f5 >> livehosts
