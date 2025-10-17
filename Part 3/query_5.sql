SELECT c.name, t.title, ct.position,
    DENSE_RANK() OVER (PARTITION BY c.chart_id ORDER BY ct.position ASC)
FROM charttrack ct
JOIN charts c ON ct.chart_id = c.chart_id
JOIN tracks t ON ct.track_id = t.track_id;