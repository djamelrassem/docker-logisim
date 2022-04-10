FROM ubuntu:18.04

RUN apt-get update && apt-get install -y logisim

RUN apt-get install -y openjdk-8-jdk

RUN groupadd -g 1000 logisim

RUN useradd -d /home/logisim -s /bin/bash -m logisim -u 1000 -g 1000

USER logisim

ENV HOME /home/logisim

CMD /usr/bin/java -jar /usr/bin/logisim

