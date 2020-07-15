FROM julywind/storm-base

RUN wget -q -O - https://mirror.bit.edu.cn/apache/zookeeper/zookeeper-3.6.1/apache-zookeeper-3.6.1-bin.tar.gz | tar -xzf - -C /opt
RUN mv /opt/apache-zookeeper-3.6.1-bin/conf/zoo_sample.cfg /opt/apache-zookeeper-3.6.1-bin/conf/zoo.cfg

ENV ZK_HOME /opt/apache-zookeeper-3.6.1-bin/
RUN sed  -i "s|/tmp/zookeeper|$ZK_HOME/data|g" $ZK_HOME/conf/zoo.cfg; mkdir $ZK_HOME/data

ADD start-zk.sh /usr/bin/start-zk.sh 

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper-3.6.1
VOLUME ["/opt/apache-zookeeper-3.6.1-bin/conf", "/opt/apache-zookeeper-3.6.1-bin/data"]

CMD /usr/sbin/sshd && start-zk.sh