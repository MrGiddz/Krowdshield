## Indexing and efficient querying (PostgreSQL)

- My indexing strategy will be a Balanced Tree indexing strategy, by using this I will be able to make quering more efficient. I will be adding the indicies on reporter_id, incident_date, and status

## Strateges

- I will create a Single Index on incident_date

```sql
CREATE INDEX idx_incident_date ON incidents (incident_date);
```

- I will also create a Single Index on reporter_id

```sql
CREATE INDEX idx_reporter_id ON incidents (reporter_id);
```

- I will also create a Single Index on status

```sql
CREATE INDEX idx_incident_status ON incidents (status);
```

- But in cases where the fltering exclude some certain status, I will use a partial Index strategy,

```sql
CREATE INDEX idx_active_incidents ON incidents (incident_date) WHERE status = 'active';
```

## Efficient Pagination Strategy

- I will make use of LIMIT with WHERE filtering by indexed columns

```sql
SELECT *
FROM incidents
WHERE reporter_id = 123 AND incident_date > '2024-01-01'
ORDER BY incident_date ASC
LIMIT 20;

```
