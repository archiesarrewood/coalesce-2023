---
sources:
- speakers.sql
---

# Speakers

Click on a speaker to see details about them and their talks.


<DataTable data={speakers} rows=all link=speaker_id search>
    <Column id=first_name />
    <Column id=last_name />
    <Column id=title />
    <Column id=company />
    <Column id=country />
</DataTable>




