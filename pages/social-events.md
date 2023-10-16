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

{#each social_events as event}

    ## {event.title}
    
    **{fmt(event.start_datetime, 'ddd dd-mmm - H:MM AM/PM')}**
    
    
    {#if event.descriptionHtml}
    
        **Description:** {@html event.descriptionHtml}
    
    {:else}

        No sign up required.
    
    {/if}



{/each}



