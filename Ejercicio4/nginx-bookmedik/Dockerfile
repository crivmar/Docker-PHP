FROM nginx

MAINTAINER crivmar

RUN apt update && apt upgrade -y && apt install -y mariadb-client && apt clean && rm -rf /var/lib/apt/lists/*

ADD default.conf /etc/nginx/conf.d/

ADD bookmedik /usr/share/nginx/html

ADD orden2.bash /usr/local/bin/

RUN chmod +x /usr/local/bin/orden2.bash && rm /usr/share/nginx/html/index.html

ENTRYPOINT ["/usr/local/bin/orden2.bash"]
