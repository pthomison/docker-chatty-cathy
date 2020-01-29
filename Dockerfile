FROM fedora:31

RUN mkdir -p /opt/chatty-cathy

COPY chat.sh /opt/chatty-cathy/chat.sh

# LABEL "com.datadoghq.ad.logs"='[{"source": "cathy"}]'

CMD /opt/chatty-cathy/chat.sh
