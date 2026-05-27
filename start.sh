#!/bin/bash

chmod +x playit
./playit &

java -Xms1G -Xmx1G -jar server.jar nogui