FROM evil0ctal/douyin_tiktok_download_api

WORKDIR /app

COPY ./fix_api_domain.py fix_api_domain.py
COPY ./start.sh start.sh
RUN  chmod +x ./start.sh

EXPOSE 80
EXPOSE 8000

CMD ["./start.sh"]