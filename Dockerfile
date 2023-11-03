FROM nodered/node-red

COPY ./node-red-data /data

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

