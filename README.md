# usage

  docker run dockerimages/docker-unrealircd
  
=======
UnrealIRCD with Anope Services
======

Container
------

```
docker stop unrealircd
docker rm unrealircd

docker build -t unrealircd .

docker run --restart=always --name unrealircd -p 6697:6697 -p 6667:6667 -d -v /opt/docker/unrealircd/ssl:/home/ircd/unrealircd/conf/ssl -v /opt/docker/unrealircd/unrealircd.conf:/home/ircd/unrealircd/conf/unrealircd.conf -v /opt/docker/unrealircd/services/data:/home/ircd/unrealircd/services/data -v /opt/docker/unrealircd/services/conf:/home/ircd/unrealircd/services/conf unrealircd
```


Host
------

```
/opt/letsencrypt/letsencrypt-auto certonly

cp /etc/letsencrypt/live/irc.hellface.com/fullchain.pem /opt/docker/unrealircd/ssl/server.cert.pem
cp /etc/letsencrypt/live/irc.hellface.com/privkey.pem /opt/docker/unrealircd/ssl/server.key.pem
docker exec -d unrealircd chown -R ircd:ircd /home/ircd/unrealircd/conf/ssl
docker exec -d unrealircd bash -c 'kill -USR1 $(/usr/bin/supervisorctl pid irc:unreal)'
```
 
