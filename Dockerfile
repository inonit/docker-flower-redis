FROM        python:slim
MAINTAINER  Inonit AS <support@inonit.no>

RUN         apt-get update && apt-get install -y --no-install-recommends git
RUN         pip install redis -e git+https://github.com/mher/flower.git@master#egg=flower

EXPOSE 5555
ENTRYPOINT ["/usr/local/bin/flower", "--url_prefix=flower", "--port=5555"]
