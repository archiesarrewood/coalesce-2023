---
sources:
- sessions.sql
---

# Sessions

## 16th Oct - Monday

<DataTable data={sessions.filter(session => session.start_datetime > '2023-10-16' && session.start_datetime < '2023-10-17' )} rows=all link=id>
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




