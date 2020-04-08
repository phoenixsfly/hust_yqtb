FROM python:3.7-alpine
USER root
WORKDIR /root
COPY subhealth.py /usr/bin

RUN apk --update --no-cache && \
    apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata && \
    apk add chromium chromium-chromedriver && \
    pip install selenium && \
    rm -rf /var/cache/apk/* 
CMD python /usr/bin/subhealth.py
