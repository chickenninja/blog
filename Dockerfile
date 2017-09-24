FROM nginx:latest

RUN apt-get update && apt-get install -y pandoc
COPY src /tmp
RUN cp /tmp/styles/style.css /usr/share/nginx/html/style.css
RUN cp /tmp/images/chickenninja.jpg /usr/share/nginx/html/chickenninja.jpg
RUN pandoc -s -S -c style.css /tmp/content/index -o /usr/share/nginx/html/index.html
