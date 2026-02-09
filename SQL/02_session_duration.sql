
-- KPI #2: Session Duration
-- Purpose:
-- Measure how long user sessions last based on hit-level interaction timing.
-- Session duration is calculated as the difference between the first and last hit.

SELECT
  fullVisitorId,
  visitId,
  MIN(hit.time) AS min_time_ms,
  MAX(hit.time) AS max_time_ms,
  MAX(hit.time) - MIN(hit.time) AS session_duration_ms
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20160801`,
UNNEST(hits) AS hit
GROUP BY fullVisitorId, visitId;
