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

```sql number_of_attendees
SELECT count(*) as number_of_attendees
FROM read_json_auto('sources/attendees.json')
```

```sql number_of_countries
SELECT count(distinct country) as number_of_countries
FROM read_json_auto('sources/attendees.json')
where country != ''
```

```sql number_of_companies
SELECT count(distinct trim(lower(company))) as number_of_companies
FROM read_json_auto('sources/attendees.json')
where company IS NOT NULL AND company != '-' AND company != '' AND company != 'N/A'
```

<BigValue
    data={number_of_attendees}
    value=number_of_attendees
/>

<BigValue
    data={number_of_countries}
    value=number_of_countries
/>

<BigValue
    data={number_of_companies}
    value=number_of_companies
/>



```sql attendees_by_country
WITH country_groups AS (
    SELECT 
        count(*) as attendees,
        country, 
        CASE 
            WHEN COUNT(*) <= 10 THEN 'Other Countries'
            ELSE country 
        END AS country_grouped,
        CASE 
            WHEN COUNT(*) <= 10 THEN 0
            else count(*)
        END AS country_grouped_count
    FROM read_json_auto('sources/attendees.json')
    GROUP BY country
)

SELECT 
    country_grouped, 
    country_grouped_count,
    sum(attendees) AS attendees
FROM country_groups
WHERE country_grouped != ''
GROUP BY 1,2
ORDER BY 2 DESC
```

<BarChart
    title="Attendees by Country"
    data={attendees_by_country}
    x=country_grouped
    y=attendees
    sort=false
    swapXY
/>

### Attendees by Company

```sql attendees_by_company
SELECT 
    trim(first(company)) as company_name,
    count(*) as attendees,
FROM read_json_auto('sources/attendees.json')
where company IS NOT NULL AND company != '-' AND company != '' AND company != 'N/A'
GROUP by trim(lower(company))
ORDER BY attendees DESC
```

<DataTable data={attendees_by_company} search/>

### Attendees by Title

```sql attendees_by_title
SELECT 
    trim(first(title)) as job_title,
    count(*) as attendees,
FROM read_json_auto('sources/attendees.json')
WHERE title IS NOT NULL AND title != '-' AND title != ''
GROUP by trim(lower(title))
ORDER BY attendees DESC
LIMIT 20
```

<BarChart
    data={attendees_by_title}
    x=job_title
    y=attendees
    swapXY
/>




