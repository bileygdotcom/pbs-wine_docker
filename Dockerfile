ARG BASE_IMAGE="bileyg/packhaus"
ARG TAG="0.9"
FROM ${BASE_IMAGE}:${TAG}

LABEL project="Pilot-BIM-Server(WIN)"\
      version="0.1.0" \
      mantainer="bileyg"\
      company="Ascon"
      
ENV ADMIN=bimadmin
ENV PASS=1
ENV DBCONNECT=""

COPY ["build","/root/.wine/drive_c/Program Files/ASCON/Pilot-BIM-Server"]

CMD wine /root/.wine/drive_c/'Program Files'/ASCON/Pilot-BIM-Server/Ascon.Pilot.BimService.exe -c $DBCONNECT $ADMIN $PASS

#ENTRYPOINT ["wine","/root/.wine/drive_c/'Program Files'/ASCON/Pilot-BIM-Server/Ascon.Pilot.BimService.exe","-c",$DBCONNECT,$ADMIN,$PASS]
