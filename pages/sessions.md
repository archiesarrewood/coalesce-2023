# Sessions

```sql sessions
select *,
epoch_ms(startdate+startminute*60*1000) as start_datetime,
epoch_ms(enddate+endminute*60*1000) as end_datetime
 from read_json_auto('sources/sessions.json')
```

## 16th Oct - Monday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-16' && session.start_datetime < '2023-10-17' )} rows=all >
<Column id=start_datetime fmt='dd-mmm HH:MM'/>
<Column id=title/>
<Column id=description/>
</DataTable>

## 17th Oct - Tuesday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-17' && session.start_datetime < '2023-10-18' )} rows=all >
<Column id=start_datetime fmt='dd-mmm HH:MM'/>
<Column id=title/>
<Column id=description/>
</DataTable>

## 18th Oct - Wednesday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-18' && session.start_datetime < '2023-10-19' )} rows=all >
<Column id=start_datetime fmt='dd-mmm HH:MM'/>
<Column id=title/>
<Column id=description/>
</DataTable>

## 19th Oct - Thursday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-19' && session.start_datetime < '2023-10-20' )} rows=all >
<Column id=start_datetime fmt='dd-mmm HH:MM'/>
<Column id=title/>
<Column id=description/>
</DataTable>




