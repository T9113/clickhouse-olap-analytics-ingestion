CREATE TABLE kafka_telemetry_queue (
    device_id UUID,
    event_type String,
    payload String
) ENGINE = Kafka
SETTINGS kafka_broker_list = 'kafka:9092',
         kafka_topic_list = 'telemetry_stream',
         kafka_group_name = 'clickhouse_consumer',
         kafka_format = 'JSONEachRow';
