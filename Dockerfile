FROM python:3.7.2
RUN mkdir /test
COPY  .  /test
WORKDIR /test
RUN pip install --no-cache-dir -r requirements.txt
RUN  chmod u+x ./exec.sh
### try