select
    firstname as first_name,
    lastname as last_name,
    title,
    company,
    country,
    bio,
    personid as speaker_id,
    web as presentation_url,
    thumbnailurl as photo_url
 from read_json_auto('sources/speakers.json')


 