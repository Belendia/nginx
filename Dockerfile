FROM nginx:latest
LABEL maintainer="Belendia Serda belendia@gmail.com"
ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./frontend/build /usr/share/nginx/html
COPY ./staticfiles /usr/share/nginx/html/static/staticfiles
CMD ["nginx", "-g", "daemon off;"]