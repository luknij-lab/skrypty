#!/bin/bash
#Plik stworzony 02/04.2019
#Skrypt sprawdza kod odpowiedzi adresów URL i zwraca te z 404 wywołanie: script-file source-file
#https://curl.haxx.se/docs/manpage.html
# curl --output /dev/null --silent --write-out %{http_code} $link | head -1
# curl --write-out %{http_code} --silent --output /dev/null $link | head -1

#for link in `cat $1` $2;
#do
#	response=`curl --output /dev/null --silent --write-out %{http_code} $link`;
#	if [ "$response" == "$2" ]; then
#		echo "$link";
#		# sleep 5s
#	fi	
#done

#!/usr/bin/env bash
#while read -r link; do
#	response=$(curl --output /dev/null --silent --write-out %{http_code} "$link")
#	if [[ "$response" == "$2" ]]; then
#		echo "$link"
#	fi
#done < "$1"

while IFS=, read -ra link; do
	response=$(curl --output /dev/null --silent --write-out %{http_code} "${link[0]}")
	if [[ "$response" == "$2" ]]; then
		echo "${link[0]}"
	fi
done < <(sed 's/\r//' "$1")
