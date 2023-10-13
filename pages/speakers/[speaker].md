---
sources:
- speakers.sql
---



<script>
    const name = speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0].first_name + " " + speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0].last_name;
    const photo_url = speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0].photo_url;
    const company = speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0].company;
    const title = speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0].title;
    const country = speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0].country;
    const bio = speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0].bio;
    const presentation_url = speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0].presentation_url;
</script>


<img src="{photo_url}" alt="{name}" class="rounded-full inline p-3 h-48">

# {name}

_{#if title} {title} {:else}Works{/if} {#if company}@ {company}{/if}{#if country}, {country}{/if}_



{#if bio}
## Bio

{bio}

{/if}

{#if presentation_url}

## Presentation

[Link to slides]({presentation_url})

<iframe src="{presentation_url}" title=slides width="100%" height="360px"></iframe>

{/if}