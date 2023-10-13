select *,
epoch_ms(startdate+startminute*60*1000) as start_datetime,
epoch_ms(enddate+endminute*60*1000) as end_datetime,
sessions->'$.speakers[0].speakerId' as speaker_1_id,
sessions->'$.speakers[1].speakerId' as speaker_2_id,
sessions->'$.speakers[2].speakerId' as speaker_3_id,
sessions->'$.speakers[3].speakerId' as speaker_4_id,
sessions->'$.speakers[4].speakerId' as speaker_5_id
from read_json_auto('sources/sessions.json') as sessions