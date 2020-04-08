FROM python:3.7-alpine
USER root
WORKDIR /root
COPY subhealth.py /usr/bin

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories  && \
    apk update && \
    apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata && \
    apk add chromium chromium-chromedriver&& \
    pip install selenium -i  https://pypi.tuna.tsinghua.edu.cn/simple && \
    rm -rf /var/cache/apk/*
CMD python /usr/bin/subhealth.py
