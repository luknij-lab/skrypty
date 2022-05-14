# Skrypt utworzony 31 paź 2021
# Sposób użycia: bash sitemap-checker.sh [adres_URL_mapyXML_strony_www]

#!/bin/bash

curl -s $1 | grep "<loc>" | awk -F"<loc>" '{print $2} ' | awk -F"</loc>" '{print $1}'
