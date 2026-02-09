# Web Interaction Process Analysis (In Progress)
## 1. Project overview
The analysis focuses on understanding how user sessions differ in terms of interaction complexity and depth, and on identifying patterns that may indicate inefficiencies or early drop-offs within the process.

## 2. Business questions
The analysis focuses on the following business questions:

- How do users behave during a session, and what do session length and number of interactions tell us about engagement or potential problems on the website?
- How many interactions (hits) do users typically perform within a session, and how are sessions distributed across short and long interaction depths?
- How long do user sessions last, and does session duration reliably indicate meaningful engagement?
- Do average metrics accurately represent user behavior, or do underlying distributions provide more insight?

## TL;DR – Final Insights
👉 [Jump to Final Insights](#final-insights)

## 3. Dataset
This project uses the Google Analytics Sample Dataset available in BigQuery.  
The analysis is based on event-level session data from the `ga_sessions_20160801` table, which contains nested hit-level interaction data for website sessions.
## 4. Methodology

### 4.1 KPI #1 – Hits per Session (Session Complexity)
Hits per session was used as a behavioral KPI to measure user engagement depth. Over 52% of sessions contained only 1–2 hits, indicating a high share of very short visits. The average session consisted of 7.6 hits, while the distribution was strongly skewed, with a small portion of sessions exceeding 10 hits. This suggests that while most users interact briefly, a smaller segment shows significantly deeper engagement or encounters navigation friction.

![Hits per Session](Visuals/hits_per_session_distribution.png) 


Session distribution by hits per session was analyzed using Excel pivot tables, grouping sessions into 1–2, 3–5, 6–10, and 10+ hit buckets.

### 4.2 KPI #2 – Session Duration / Time Between Hits
Session duration was calculated as the difference between the first and last interaction within a session, using hit-level timestamps.

Initial summary statistics showed an average session duration of approximately 2.8 minutes; however, the distribution was highly right-skewed, with extreme values exceeding two hours.

A histogram analysis revealed that most sessions fall within the 0–2 minute range, confirming that short sessions dominate overall user behavior. This demonstrates that average session duration alone is a misleading indicator of engagement and should be interpreted in combination with other behavioral KPIs.

![Session Duration](Visuals/session_duration_histogram.png)



### 4.3 KPI #3 – Entry vs Exit Steps

## 5. Key Findings (So Far)

## 6. Next steps

## 7. Tools
- SQL (Google BigQuery)
- Excel 
- GitHub

# Final Insights

