read -p "Informe os digitos: " digitos
sed -e 's/\(..\)\(.\{4\}\)/(\1)\2-/g' < $digitos
