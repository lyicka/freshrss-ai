FROM freshrss/freshrss:latest

RUN cd /var/www/FreshRSS/extensions && \
    git clone https://github.com/deimosfr/xExtension-AiSummary.git && \
    chown -R www-data:www-data xExtension-AiSummary

EXPOSE 80