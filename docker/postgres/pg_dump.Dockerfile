FROM postgres:latest

COPY ./scripts/backup.sh /backup.sh

RUN chmod +x /backup.sh

CMD ["bash", "/backup.sh"]
