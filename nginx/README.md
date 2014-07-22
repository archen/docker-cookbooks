nginx
================

Copy SSL key and crt files to ssl/server.key and ssl/server.crt respectively

This instance of nginx inherits all nginx.conf files in /etc/nginx/conf.d
which is mounted as a local directory at /data/nginx using the provided script.

Modify the nginx.conf file to match your required hostname and ports.

Creates an nginx image
	docker build -t localhost:5000/nginx .

Run the container
	./run_nginx.sh
