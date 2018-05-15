#!/usr/bin/env sh

echo "** Bootstrapping lita on docker **"

echo "** Preparing to Connect **"
read -p 'What is your Droplet host name or IP address? ' DROPLET_HOST

# paste in your slack token interactively here
read -p 'What is your Slack token? ' SLACK_TOKEN
echo $SLACK_TOKEN > ./slack_token_tmp.txt

echo "** Uploading Lita support files to remote host **"
scp ./uploads/* root@$DROPLET_HOST:~
scp ./slack_token_tmp.txt root@$DROPLET_HOST:/opt/lita_slack_token.txt
rm ./slack_token_tmp.txt

ssh root@$DROPLET_HOST "./install_dependencies.sh"
