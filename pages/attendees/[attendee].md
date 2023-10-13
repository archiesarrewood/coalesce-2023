---
sources: 
  - attendees.sql
---


<script>
    const name = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].first_name + " " + attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].last_name;
    const photo_url = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].photo_url;
    const company = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].company;
    const title = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].title;
    const country = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].country;
    const linkedin = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].linkedin;
    const twitter = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].twitter;
    const website = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].website;
    const summary = attendees.filter(attendee => attendee.attendee_id == $page.params.attendee)[0].summary;

</script>





<img src="{photo_url}" alt="{name}" class="rounded-full inline p-3 h-48">

# {name}

_{#if title} {title} {:else}Works{/if} {#if company}@ {company}{/if}{#if country}, {country}{/if}_

{#if website != "" && website != null}

[{website}]({website})

{/if}

{#if linkedin != "" && linkedin != null}

    <a href="{linkedin}">
        <img src="/linkedin.png" alt="LinkedIn" class="h-8 rounded-none inline pr-4">
    </a>

{/if}

{#if twitter != "" && twitter != null}

<a href=https://twitter.com/{twitter}>
    <img src="/x.png" alt="X" class="h-8 rounded-none inline">
</a>

{/if}

{#if summary != "" && summary != null}

## Summary

{summary}

{/if}
