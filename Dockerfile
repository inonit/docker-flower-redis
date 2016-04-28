FROM        python:slim
MAINTAINER  Inonit AS <support@inonit.no>

RUN         pip install flower redis

EXPOSE 5555
ENTRYPOINT ["flower", "--url_prefix=flower" "--port=5555"]
