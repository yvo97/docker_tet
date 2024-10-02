FROM python:3.6
LABEL maintainer="Yvan"
WORKDIR /opt
RUN  pip install flask
ADD . /opt/
VOLUME /opt
EXPOSE 8080
ENV ODOO_URL="https://www.odoo.com/"
ENV PGADMIN_URL="https://www.pgadmin.org/"
ENTRYPOINT ["python"]
CMD [ "app.py" ]
