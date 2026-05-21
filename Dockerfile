FROM freshrss/freshrss:latest

# 不足しているgitコマンドをインストールし、AI Summary拡張機能を導入
RUN apt-get update && apt-get install -y git && \
    cd /var/www/FreshRSS/extensions && \
    git clone https://github.com/deimosfr/xExtension-AiSummary.git && \
    chown -R www-data:www-data xExtension-AiSummary && \
    apt-get remove -y git && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

EXPOSE 80