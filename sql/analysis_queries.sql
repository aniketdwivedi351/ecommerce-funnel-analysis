SELECT * FROM events;

CREATE TABLE events_cleaned AS
SELECT DISTINCT * FROM events;

DROP TABLE events;

ALTER TABLE events_cleaned RENAME TO events;



DELETE FROM events
WHERE user_id IS NULL OR user_session IS NULL;

ALTER TABLE events ADD COLUMN event_timestamp DATETIME;


select * FROM events;

UPDATE events
SET event_timestamp = SUBSTR(event_time, 1, 19);

select * FROM events;

ALTER TABLE events DROP COLUMN event_time;

select * FROM events;

SELECT
    '1. View' AS funnel_stage,
    COUNT(DISTINCT user_id) AS user_count
FROM events
WHERE event_type = 'view'

UNION ALL

SELECT
    '2. Cart' AS funnel_stage,
    COUNT(DISTINCT user_id) AS user_count
FROM events
WHERE event_type = 'cart'

UNION ALL

SELECT
    '3. Purchase' AS funnel_stage,
    COUNT(DISTINCT user_id) AS user_count
FROM events
WHERE event_type = 'purchase'

ORDER BY funnel_stage;

WITH funnel_counts AS (
    SELECT
        COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END) AS viewers,
        COUNT(DISTINCT CASE WHEN event_type = 'cart' THEN user_id END) AS carters,
        COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS purchasers
    FROM events
)
SELECT
    viewers,
    carters,
    purchasers,
    -- Conversion Rate (View to Purchase)
    ROUND(CAST(purchasers AS REAL) * 100 / viewers, 2) AS overall_conversion_rate,
    -- Drop-off rate (View to Cart)
    ROUND((1 - CAST(carters AS REAL) / viewers) * 100, 2) AS view_to_cart_dropoff,
    -- Cart Abandonment Rate (Cart to Purchase)
    ROUND((1 - CAST(purchasers AS REAL) / carters) * 100, 2) AS cart_abandonment_rate
FROM funnel_counts;


SELECT
    DATE(event_timestamp) AS activity_date,
    COUNT(DISTINCT user_id) AS daily_active_users
FROM events
GROUP BY 1
ORDER BY 1;


SELECT
    product_id,
    COUNT(*) AS purchase_count
FROM events
WHERE event_type = 'purchase'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
