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

