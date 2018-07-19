set -e

eval $(aws ecr get-login --no-include-email --region us-east-2)
docker build -t express-hello .
docker tag express-hello:latest 412237081001.dkr.ecr.us-east-2.amazonaws.com/express-hello:$TRAVIS_COMMIT
docker tag express-hello:latest 412237081001.dkr.ecr.us-east-2.amazonaws.com/express-hello:latest
docker push 412237081001.dkr.ecr.us-east-2.amazonaws.com/express-hello:$TRAVIS_COMMIT
docker push 412237081001.dkr.ecr.us-east-2.amazonaws.com/express-hello:latest
