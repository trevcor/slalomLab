#cd ideal

#why do i need to do this everytime????!?!!?!?
export PATH=$PATH:/usr/local/bin

node -v

npm -v

npm install

cd app

bower install

# Run gulp CI tasks
gulp ci

#move back up to the root directory
cd ../

rm -r node_modules

#Cloud Foundry Deployment

CF_API_ENDPOINT="api.run.pivotal.io"
CF_USER="bradley.ring@gmail.com"
CF_PASSWORD="Password"
CF_ORG="OneRing"
CF_SPACE="development"
CF_APP="onering.workshop1"

#cf --version
 cf login -a https://${CF_API_ENDPOINT} -u ${CF_USER} -p ${CF_PASSWORD} -o ${CF_ORG} -s ${CF_SPACE}
# Use this version instead of the above if you need to disable SSL validation
cf login -a https://${CF_API_ENDPOINT} -u ${CF_USER} -p ${CF_PASSWORD} -o "${CF_ORG}" -s "${CF_SPACE}" --skip-ssl-validation

cf push ${CF_APP}