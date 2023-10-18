ARG BASE_IMAGE="bileyg/lichter"
ARG TAG="0.3.0"
FROM ${BASE_IMAGE}:${TAG}

LABEL project="Pilot-BIM-Server(WIN)"\
      version="0.2.0" \
      mantainer="bileyg"\
      company="Ascon"
      
ENV ADMIN=""
ENV PASS=""
ENV DBCONNECT=""

COPY ["build","/opt/Pilot-BIM-Server"]

CMD wine /opt/Pilot-BIM-Server/Ascon.Pilot.BimService.exe -c $DBCONNECT $ADMIN $PASS
