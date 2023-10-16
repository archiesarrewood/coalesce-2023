select *,
epoch_ms(startdate+startminute*60*1000) as start_datetime,
epoch_ms(enddate+endminute*60*1000) as end_datetime,
descriptionHtml as description_html,
sessions->'$.speakers[0].speakerId' as speaker_1_id,
sessions->'$.speakers[1].speakerId' as speaker_2_id,
sessions->'$.speakers[2].speakerId' as speaker_3_id,
sessions->'$.speakers[3].speakerId' as speaker_4_id,
sessions->'$.speakers[4].speakerId' as speaker_5_id
from read_json_auto('sources/sessions.json') as sessions
where 
    (sublocationId != '43312' 
    AND sublocationId != '43313' 
    AND sublocationId != '43314'
    AND sublocationId != '43323' 
    AND sublocationId != '43328'
    AND contains(title, '(ASL Version)' ) = false )
    OR sublocationId is null

order by start_datetime