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

_{title} at {company}, {country}_


## Bio

{bio}

{#if presentation_url}

## Presentation

[Link to slides]({presentation_url})

<iframe src="{presentation_url}/embed" width="100%" height="500px"></iframe>

{/if}