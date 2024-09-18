FROM postgres:16-alpine


COPY --chmod=0600  ./ssl/server.key /var/lib/postgresql/
COPY ./ssl/server.crt /var/lib/postgresql/
#COPY ./conf /var/lib/postgresql/
RUN --chown -R postgres:postgres /ssl
#RUN chmod 0600  /ssl/server.key