#!/bin/bash

java -Xms1G -Xmx1G -jar server.jar nogui &
SERVER_PID=$!

apt update && apt install -y curl

curl -fsSL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/playit.gpg
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data /" > /etc/apt/sources.list.d/playit-cloud.list

apt update
apt install -y playit

playit --secret $SECRET_KEY

wait $SERVER_PID