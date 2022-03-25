FROM docker:stable

COPY start-clickhouse.sh /start-clickhouse.sh
RUN chmod +x /start-clickhouse.sh

COPY setup.sh /setup-udf.sh
RUN chmod +x /setup-udf.sh


ENTRYPOINT ["/start-clickhouse.sh"]
