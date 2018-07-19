npx node-cipher decrypt ci-key.pem.enc ci-key.pem --password $SSH_KEY_PASSWORD
chmod 600 ci-key.pem
ssh -i "ci-key.pem" ubuntu@ec2-18-188-240-88.us-east-2.compute.amazonaws.com ./deploy.sh
