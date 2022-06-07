FROM 080266302756.dkr.ecr.eu-west-3.amazonaws.com/nginx:latest

COPY index.html /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d

ENTRYPOINT ["nginx", "-g", "daemon off;"]
