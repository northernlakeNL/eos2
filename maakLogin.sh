#/bin/bash
uname=$(whoami)			#username
echo "het wachtwoord moet minstens 8 karakters zijn!"
while true; do
 read -s -p "wachtwoord: " pw1
 echo
 read -s -p "wachtwoord opnieuw: " pw2
 echo

 if [[ $pw1 == $pw2 && ${#pw1} -ge 8 ]]; then
   hash="$(echo -n "$pw1" | md5sum)"
   echo "$uname $hash" > "$1"
   echo "login made for user $uname"
   break
  elif [[ $pw1 != $pw2 ]]; then
   echo "Wachtwoorden komen niet overeen!"
  elif [[ ${#pw1} -lt 8 ]]; then
   echo "Wachtwoord is te kort!"
  fi
done
