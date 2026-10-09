#!/bin/sh
# The vault answers a wrong password with its MD5 (md5("probe") = 8da843ff...).
curl -fsS --max-time 10 -d password=probe http://web/index.php | grep -q 'Incorrect Vault Password: 8da843ff65205a61374b09b81ed0fa35'
