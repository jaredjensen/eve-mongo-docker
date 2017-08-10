FROM grahamdumpleton/mod-wsgi-docker:python-3.5-onbuild
EXPOSE 80
RUN apt-get update && apt-get install -y python3-pip
RUN python3 -m pip install eve
COPY ./srv/eve /srv/eve
LABEL purpose="Test REST API with Eve"
CMD [ "/srv/eve/app.wsgi" ]