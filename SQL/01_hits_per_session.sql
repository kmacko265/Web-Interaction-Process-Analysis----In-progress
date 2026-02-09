-- KPI #1: Hits per Session
-- Purpose:
-- Create a session-level table measuring interaction complexity
-- using the number of hits per session.

WITH sessions AS (
  SELECT
    fullVisitorId,
    visitId,
    COUNT(*) AS hits
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20160801`,
  UNNEST(hits)
  GROUP BY fullVisitorId, visitId
)

SELECT
  MIN(hits) AS min_hits,
  MAX(hits) AS max_hits,
  ROUND(AVG(hits), 2) AS avg_hits
FROM sessions;
