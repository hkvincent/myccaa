CentOS + Caddy + AriaNg + Aria2
filebroswer move from v2.02 to v2.22

copy the Dockerfile to the docker server you set up, and run command [docker build -t myccaa:1.0 .]
the command will build the image for your docker.

and run the below command to create contain
docker run --name="ccaa" -d -p 6080:6080 -p 6081:6081 -p 6800:6800 -p 51413:51413 \
    -v /data/ccaaDown:/data/ccaaDown \
    -e PASS="xiaoz.me" \
    helloz/ccaa \
    sh -c "dccaa pass && dccaa start"
