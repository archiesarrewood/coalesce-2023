---
sources:
- sessions.sql
- speakers.sql
---

<script>
const session=sessions.filter(session => session.id == $page.params.session)[0]
const speaker1_id = session.speaker_1_id;
const speaker2_id = session.speaker_2_id;
const speaker3_id = session.speaker_3_id;
const speaker4_id = session.speaker_4_id;
const speaker5_id = session.speaker_5_id;
const speaker1_name = speakers.filter(speaker => speaker.speaker_id == speaker1_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker1_id)[0]?.last_name;
const speaker2_name = speakers.filter(speaker => speaker.speaker_id == speaker2_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker2_id)[0]?.last_name;
const speaker3_name = speakers.filter(speaker => speaker.speaker_id == speaker3_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker3_id)[0]?.last_name;
const speaker4_name = speakers.filter(speaker => speaker.speaker_id == speaker4_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker4_id)[0]?.last_name;
const speaker5_name = speakers.filter(speaker => speaker.speaker_id == speaker5_id)[0]?.first_name + " " + speakers.filter(speaker => speaker.speaker_id == speaker5_id)[0]?.last_name;
</script>

# {session.title}


**Time:** {fmt(session.start_datetime, "dddd dd-mmm HH:mmAM/PM")}

{#if session.description_html}

## Description

{@html session.description_html}

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