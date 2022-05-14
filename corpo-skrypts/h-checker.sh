# Plik powstał 31 paź 2021
# sposób użycia: bash h-checker.sh [adres_URL_strony_www]

#!/bin/bash
curl -s -A "Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/W.X.Y.Z Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" $1 | xmllint --html --xpath "/html/body//*[self::h1 or self::h2 or self::h3 or self::h4 or self::h5 or self::h6]" - 2>/dev/null | sed -e '0,/<h/ s/<h/\n<h/' | sed 's/^.*\">//g' | sed 's/<h1>//g' | sed 's/<h2>//g' | sed 's/<h3>//g' | sed 's/<h3>//g' | sed 's/<h4>//g' | sed 's/<h5>//g' | sed 's/<h6>//g'
