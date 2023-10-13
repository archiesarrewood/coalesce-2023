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
const speaker1_name = speakers.filter(speaker => speaker.speaker_id == speaker1_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker1_id)[0]?.last_name;
const speaker2_name = speakers.filter(speaker => speaker.speaker_id == speaker2_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker2_id)[0]?.last_name;
const speaker3_name = speakers.filter(speaker => speaker.speaker_id == speaker3_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker3_id)[0]?.last_name;
const speaker4_name = speakers.filter(speaker => speaker.speaker_id == speaker4_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker4_id)[0]?.last_name;
const speaker5_name = speakers.filter(speaker => speaker.speaker_id == speaker5_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker5_id)[0]?.last_name;
</script>

# {title}


**Time:** {fmt(start_datetime, "dddd dd-mmm HH:mmAM/PM")}

{#if description_html}

## Description

{@html description_html}

{/if}

{#if speaker1_id}
## Speakers
- [{speaker1_name}](../../speakers/{speaker1_id})

{/if}
{#if speaker2_id}

- [{speaker2_name}](../../speakers/{speaker2_id})
    
{/if}
{#if speaker3_id}

- [{speaker3_name}](../../speakers/{speaker3_id})

{/if}
{#if speaker4_id}

- [{speaker4_name}](../../speakers/{speaker4_id})

{/if}
{#if speaker5_id}

- [{speaker5_name}](../../speakers/{speaker5_id})

{/if}