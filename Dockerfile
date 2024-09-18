FROM postgres:16-alpine


COPY ./ssl /var/lib/postgresql/
#COPY ./conf /var/lib/postgresql/
RUN chown -R postgres:postgres /ssl
RUN chmod 0600  /ssl/server.key