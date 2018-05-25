# https://hub.docker.com/r/library/python/tags/
FROM python:3-onbuild  

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser

# Coping source in current directory into the image
# python:3-onbuild expects the source in /usr/src/app
COPY . /usr/src/app

# Commands in a list
CMD ["python", "run.py"]