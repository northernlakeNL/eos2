#/bin/bash
case $1 in 		# $1 eerste meegegeven argument
 *.py)			# py bestand
  python $1		# voer py bestand uit
  ;;			# eindig command
 *sh)			# bash bestand
  bash $1
  ;;
 *.cc)			# cat bestand
  cat $1
  ;;
 *)			#overige bestanden
  echo "unusable"
  ;;
esac			#case eindigen
