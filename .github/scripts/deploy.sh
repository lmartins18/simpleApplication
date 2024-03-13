#! bin/bash
git clone ${REPO_URL}
cd ${REPO_NAME}
sudo apt -y update && sudo apt -y install nodejs npm
# Install pm2
sudo npm install -g pm2
# Stop any instance of our application running currently
pm2 stop simpleApplication
# Install app dependencies
npm install
echo ${PRIVATE_KEY} > privatekey.pem
echo ${SERVER} > server.crt
# Start application on pm2
pm2 start ./bin/www --name simpleApplication