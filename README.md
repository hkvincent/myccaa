CentOS + Caddy + AriaNg + Aria2
filebroswer update from v2.02 to v2.22
the new feature can drag and drop the muliple folders to upload.

copy the Dockerfile to the docker server you set up, and run command [docker build -t myccaa:1.0 .]
the command will build the image for your docker.

and run the below command to create a contain ->




if you want to change the token for AriaNg using below command and pass the argument to dccaa pass xxx

docker run --name="myccaa" -d -p 6080:6080 -p 6081:6081 -p 6800:6800 -p 51413:51413 -v /data/ccaaDown:/data/ccaaDown -e PASS="xxx" myccaa:1.0 sh -c "dccaa pass && dccaa start"

no need to change the password after the docker image built, just start it

docker run --name="myccaa" -d -p 6080:6080 -p 6081:6081 -p 6800:6800 -p 51413:51413 -v /data/ccaaDown:/data/ccaaDown -e PASS="xxx" myccaa:1.0 sh -c "dccaa start"
