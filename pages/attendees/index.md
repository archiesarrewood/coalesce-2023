---
sources:
 - attendees.sql
---


# Attendees

## Directory

Meet someone and can't remember their name? Find them here!

N.B. only attendees who have opted in to the attendee list are shown.

<DataTable data={attendees} rows=10 search link=attendee_id>
    <Column id=photo_url contentType=image height=20px title=" "/>
    <Column id=first_name/>
    <Column id=last_name/>
    <Column id=company/>
    <Column id=title/>
    <Column id=country/>
    <Column id=state/>
    <Column id=linkedin contentType=link/>
    <Column id=twitter/>
    <Column id=website contentType=link/>
    <Column id=summary/>
</DataTable>

## Attendee Stats

```sql attendees_by_country
WITH country_groups AS (
    SELECT 
        count(*) as attendees,
        country, 
        CASE 
            WHEN COUNT(*) <= 2 THEN 'Other Countries'
            ELSE country 
        END AS country_grouped
    FROM read_json_auto('sources/attendees.json')
    GROUP BY country
)

SELECT 
    country_grouped, 
    sum(attendees) AS attendees
FROM country_groups
GROUP BY country_grouped
ORDER BY attendees DESC
```

<BarChart
    title="Attendees by Country"
    data={attendees_by_country}
    x=country_grouped
    y=attendees
    swapXY
/>

### Attendees by Company

```sql attendees_by_company
SELECT 
    trim(first(company)) as company_clean,
    count(*) as attendees,
FROM read_json_auto('sources/attendees.json')
GROUP by trim(lower(company))
ORDER BY attendees DESC
```

<DataTable data={attendees_by_company}/>





