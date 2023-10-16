---
sources:
- sessions.sql
---

# Social Events

There are various social events during the conference. Some require advance signup - follow the links below to sign up.

```sql social_events
select *,
'../sessions/' || id as link
from ${sessions}
where contains(title, '🎉') or contains(title, 'party')
```

## FLOAT Happy Hour

**Mon 16-Oct 6:30 - 9:30 PM**

Hard Rock Hotel Rooftop

Sign up: https://learn.metaplane.dev/float-happy-hour

{#each social_events as event}

    ## {event.title}
    
    **{fmt(event.start_datetime, 'ddd dd-mmm - H:MM AM/PM')}**
    
    
    {#if event.descriptionHtml}
    
        **Description** {@html event.descriptionHtml}
    
    {:else}

        No sign up required.
    
    {/if}



{/each}



