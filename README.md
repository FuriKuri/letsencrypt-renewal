# letsencrypt-renewal
Letsencrypt Renewal Docker Image

Renews automatically every 2 months your Let's Encrypt Certificate and restart a docker container.

## Start the container
Restarts a container named "ngnix-example" after a certificate renewal.

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v /etc/letsencrypt:/etc/letsencrypt/ -e "CONTAINER_NAME=ngnix-example"  furikuri/letsencrypt-renewal
```