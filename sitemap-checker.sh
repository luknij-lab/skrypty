# skrypt stworzony 31 paź 2021
# sposób użycia: bash sitemap.sh {adres_URL_sitemapy.xml}

#!/bin/bash
curl -s $1 | grep "<loc>" | awk -F"<loc>" '{print $2} ' | awk -F"</loc>" '{print $1}'
