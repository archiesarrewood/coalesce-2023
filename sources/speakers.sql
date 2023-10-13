select
    firstname as first_name,
    lastname as last_name,
    title,
    company,
    country,
    bio,
    id as speaker_id,
    replace(web, 'edit', 'embed') as presentation_url,
    thumbnailurl as photo_url
 from read_json_auto('sources/speakers.json')


 