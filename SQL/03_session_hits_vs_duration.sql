-- Session Interaction Depth vs Session Duration
-- Purpose:
-- Aggregate hit-level data to session-level in order to analyze
-- the relationship between interaction depth (number of hits)
-- and session duration.
--
-- Granularity:
-- 1 row = 1 session (fullVisitorId + visitId)
--
-- Notes:
-- Session duration is calculated as the difference between
-- the last and first hit timestamps within a session.

SELECT
  fullVisitorId,
  visitId,
  COUNT(*) AS number_of_hits,
  MAX(hit.time) - MIN(hit.time) AS session_duration_ms
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20160801`,
UNNEST(hits) AS hit
GROUP BY fullVisitorId, visitId;

