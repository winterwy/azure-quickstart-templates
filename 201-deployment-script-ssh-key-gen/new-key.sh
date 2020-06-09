#/bin/bash -e
passphrase=$1

#rm -f scratch 
#rm -f scratch.pub

echo -e 'y' | ssh-keygen -f scratch -N "$passphrase" 

privateKey=$(cat scratch)
publicKey=$(cat 'scratch.pub')

json="{\"keyinfo\":{\"privateKey\":\"$privateKey\",\"publicKey\":\"$publicKey\"}}"

echo "$json" > $AZ_SCRIPTS_OUTPUT_PATH
