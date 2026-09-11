CREATE TABLE IF NOT EXISTS telemetry_events (
    event_time DateTime DEFAULT now(),
    device_id UUID,
    event_type LowCardinality(String),
    payload String
) ENGINE = MergeTree()
PARTITION BY toYYYYMM(event_time)
ORDER BY (event_type, event_time, device_id);
