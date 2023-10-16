---
sources:
- sessions.sql
- session_word_frequency.sql
---

# Sessions

Select an session to view details.

## 16th Oct - Monday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-16' && session.start_datetime < '2023-10-17' )} rows=all link=id>
<Column id=start_datetime fmt='HH:MM am/pm' title="Time"/>
<Column id=title/>
<Column id=description/>
</DataTable>

## 17th Oct - Tuesday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-17' && session.start_datetime < '2023-10-18' )} rows=all link=id>
<Column id=start_datetime fmt='HH:MM am/pm' title="Time"/>
<Column id=title/>
<Column id=description/>
</DataTable>

## 18th Oct - Wednesday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-18' && session.start_datetime < '2023-10-19' )} rows=all link=id>
<Column id=start_datetime fmt='HH:MM am/pm' title="Time"/>
<Column id=title/>
<Column id=description/>
</DataTable>

## 19th Oct - Thursday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-19' && session.start_datetime < '2023-10-20' )} rows=all link=id>
<Column id=start_datetime fmt='HH:MM am/pm' title="Time"/>
<Column id=title/>
<Column id=description/>
</DataTable>

## Stats

```sql sessions_by_start_time
select 
    date_trunc('hour',start_datetime) as start_hour,
    count(*) as sessions
from ${sessions}
group by start_hour
order by start_hour
```

<BarChart 
    title="Sessions by Start Time"
    data={sessions_by_start_time} 
    x=start_hour
    y=sessions 
    fmt='HH:MM am/pm'
/>


<BarChart 
    title="Most Common Words in Session Descriptions"
    data={session_word_frequency} 
    x=word 
    y=frequency 
    swapXY
/>