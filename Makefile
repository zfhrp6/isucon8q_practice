BRANCH=master
default:
	echo "checkout ${BRANCH}"
	ssh root@133.130.108.237 -t "cd /home/isucon/torb && git fetch && git ch ${BRANCH} && git pull origin ${BRANCH} && cd webapp/go/src/torb && go build -v"

