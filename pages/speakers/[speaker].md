---
sources:
- speakers.sql
---

<script>
    const speaker=speakers.filter(speaker => speaker.speaker_id == $page.params.speaker)[0]
</script>


<img src="{speaker.photo_url}" alt="{speaker.first_name} {speaker.last_name}" class="rounded-full inline p-3 h-48">

# {speaker.first_name} {speaker.last_name} 

_{#if speaker.title} {speaker.title} {:else}Works{/if} {#if speaker.company}@ {speaker.company}{/if}{#if speaker.country}, {speaker.country}{/if}_

{#if speaker.linkedin != "" && speaker.linkedin != null}

    <a href="{speaker.linkedin}">
        <img src="/linkedin.png" alt="LinkedIn" class="h-8 rounded-none inline pr-4">
    </a>

{/if}

{#if speaker.twitter != "" && speaker.twitter != null}

<a href=https://twitter.com/{speaker.twitter}>
    <img src="/x.png" alt="X" class="h-8 rounded-none inline">
</a>

{/if}



{#if speaker.bio}
## Bio

{speaker.bio}

{/if}

{#if speaker.presentation_url}

## Presentation

[Link to slides]({speaker.presentation_url})

<iframe src="{speaker.presentation_url}" title=slides width="100%" height="360px"></iframe>

{/if}