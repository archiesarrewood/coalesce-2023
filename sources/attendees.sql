select 
    case 
        when position('@' in firstname) = 0 then firstname
        else left(firstname, position('@' in firstname)-1)
    end as first_name,
    case 
        when position('@' in lastname) = 0 then lastname
        else left(lastname, position('@' in lastname)-1)
    end as last_name,
    photourl as photo_url,
    company,
    title,
    country,
    state,
    summary,
    case 
        WHEN linkedinid = '' then null
        WHEN position('http' in linkedinid) = 0 then 'https://' || linkedinid
        else linkedinid 
    end as linkedin,
    twitterhandle as twitter,
    case 
        WHEN web = '' then null
        WHEN position('http' in web) = 0 then 'https://' || web
        else web 
    end as website,
    userprofileid as attendee_id
from read_json_auto('sources/attendees.json')