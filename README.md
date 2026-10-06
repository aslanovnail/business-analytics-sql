# Ride-Share Business Analytics with SQL

## Business Problem
A ride-share operator wants to understand **where demand concentrates, which taxi companies move the most volume, and how external factors like weather shift trip counts** — the kind of questions that drive fleet positioning and marketing spend.

## Data
Trip-level ride-share records (`trips`: neighborhood, company, timestamps) joined with weather observations (`weather_trips`: condition, trip counts).

## What the queries answer
| Question | Technique |
|---|---|
| Which neighborhoods generate the most rides? | `GROUP BY` + aggregation, `ORDER BY`, `LIMIT` |
| Which taxi companies move the most volume? | Aggregation across operators |
| How does weather affect trip counts? | `AVG` by weather condition |
| Daily demand trend | Date truncation + time series aggregation |
| Neighborhood × weather interaction | `JOIN` across trips and weather tables |

## SQL skills demonstrated
- Filtering (`WHERE`), aggregation (`COUNT`, `AVG`), grouping
- Multi-table `JOIN`s
- Sorting, ranking, `LIMIT` for top-N analysis
- Date functions for time-based trends
- Translating business questions into queries

## Key findings
- Ride activity concentrates in a handful of top neighborhoods — prime targets for driver positioning
- Trip volume varies significantly across taxi operators
- Weather conditions measurably shift demand, supporting weather-aware fleet planning

## Tech
PostgreSQL · SQL

## Run it
```sql
-- open sql-analysis.sql in psql / DBeaver / DataGrip and run against the trips database
```
