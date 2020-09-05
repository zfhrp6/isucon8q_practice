BRANCH=master
LANG=python
default:
	echo "checkout ${BRANCH}"
	ssh root@133.130.108.237 -t "cd /home/isucon/torb && \
		git fetch && \
		git ch ${BRANCH} && \
		git pull origin ${BRANCH} && \
		cd /home/isucon/torb/webapp/${LANG} && \
		venv/bin/python3 -m pip install -r requirements.txt  && \
		sudo systemctl restart torb.${LANG}.service"

reboot:
	ssh root@133.130.108.237 -t "sudo reboot"

bench:
	ssh root@133.130.108.237 -t "/home/isucon/torb/bench/bin/bench -data=/home/isucon/torb/bench/data -remotes=localhost -output=/home/isucon/result.json"
	scp root@133.130.108.237:/home/isucon/python_torb.log ./
	scp root@133.130.108.237:/home/isucon/result.json ./
	ssh root@133.130.108.237 -t "mv /home/isucon/python_torb.log /home/isucon/$$(date --iso-8601=seconds).log"
