select 
n.id,
f.path as run_no,
n.contact_id,
n.created_on,
n.ended_on,
f.value as output,
parse_json(f.value:events) as events,
f.value:path as path,
f.value:flow:name as flow,
f.value:results as results

from {{ref('tpg_flowsession_to_json')}} n,
    lateral flatten(input => n.output:runs) f

order by id, run_no
