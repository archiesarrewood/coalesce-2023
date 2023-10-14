---
sources: 
  - attendees.sql
---

<script>
    const attendee = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0]
</script>

<img src="{attendee.photo_url}" alt="{attendee.last_name}" class="rounded-full inline p-3 h-48">

# {attendee.first_name} {attendee.last_name}

_{#if attendee.title} {attendee.title} {:else if attendee.company}Works{/if} {#if attendee.company}@ {attendee.company}{/if}{#if attendee.country}, {attendee.country}{/if}_

{#if attendee.website != "" && attendee.website != null}

[{attendee.website}]({attendee.website})

{/if}

{#if attendee.linkedin != "" && attendee.linkedin != null}

    <a href="{attendee.linkedin}">
        <img src="/linkedin.png" alt="LinkedIn" class="h-8 rounded-none inline pr-4">
    </a>

{/if}

{#if attendee.twitter != "" && attendee.twitter != null}

<a href=https://twitter.com/{attendee.twitter}>
    <img src="/x.png" alt="X" class="h-8 rounded-none inline">
</a>

{/if}

{#if attendee.summary != "" && attendee.summary != null}

## Summary

{attendee.summary}

{/if}
