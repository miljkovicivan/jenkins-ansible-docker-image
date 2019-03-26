FROM jenkins

ADD . /var/jenkins_home

USER root

WORKDIR /var/jenkins_home/code/ansible-poller

RUN apt-get update -y
RUN apt-get install -y python3
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python3 get-pip.py
RUN rm get-pip.py
RUN pip3 install -r requirements.txt
# RUN ansible-galaxy install -r ansible_requirements.yml
