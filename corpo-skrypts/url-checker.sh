#!/usr/bin/env bash
#set -x
while IFS=, read -ra link; do
	response=$(curl --output /dev/null --silent --write-out %{http_code} "${link[0]}")
	if [[ "$response" == "$2" ]]; then
		echo "${link[0]}"
	fi
done < <(sed 's/\r//' "$1")
