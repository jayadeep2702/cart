FROM        node
RUN         mkdir /app
WORKDIR     /app
RUN npm install
COPY        server.js .
COPY        node_modules node_modules
COPY        run.sh .
ENTRYPOINT  [ "bash", "run.sh" ]
