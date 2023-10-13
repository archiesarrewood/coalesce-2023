---
sources:
- sessions.sql
- speakers.sql
---

<script>
const title = sessions.filter(session => session.id == $page.params.session)[0].title;
const start_datetime = sessions.filter(session => session.id == $page.params.session)[0].start_datetime;
const description = sessions.filter(session => session.id == $page.params.session)[0].description;
const description_html = sessions.filter(session => session.id == $page.params.session)[0].descriptionHtml;
const speaker1_id = sessions.filter(session => session.id == $page.params.session)[0].speaker_1_id;
const speaker2_id = sessions.filter(session => session.id == $page.params.session)[0].speaker_2_id;
const speaker3_id = sessions.filter(session => session.id == $page.params.session)[0].speaker_3_id;
const speaker4_id = sessions.filter(session => session.id == $page.params.session)[0].speaker_4_id;
const speaker5_id = sessions.filter(session => session.id == $page.params.session)[0].speaker_5_id;

</script>

# {title}

**Time:** {fmt(start_datetime, "dddd dd-mmm HH:mmAM/PM")}

## Description

{@html description_html}

## Speakers

{speaker1_id}, {speaker2_id}, {speaker3_id}, {speaker4_id}, {speaker5_id}
