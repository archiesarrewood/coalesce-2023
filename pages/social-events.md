---
sources:
- sessions.sql
---

# Coalesce 2023 Social Events

[View on GitHub](https://github.com/evidence-dev/coalesce-2023/blob/main/pages/social-events.md) | [Edit on GitHub](https://github.com/evidence-dev/coalesce-2023/edit/main/pages/social-events.md)

There are various social events during the conference. Some vendor run events require advance signup - follow the links below.


```sql social_events
select *
from ${sessions}
where contains(title, '🎉') or contains(title, 'party')
```


<!--  add social events manually below, here -->

test add


## FLOAT Happy Hour

**Mon 16-Oct 6:30 - 9:30 PM**

Hard Rock Hotel Rooftop

Sign up: https://learn.metaplane.dev/float-happy-hour


<!--  in coalesce social events -->

{#each social_events as event}

    ## {event.title}
    
    **{fmt(event.start_datetime, 'ddd dd-mmm - H:MM AM/PM')}**
    
    
    {#if event.description_html}
    
        **Description** {@html event.description_html}
    
    {:else}

        No sign up required.
    
    {/if}



{/each}



