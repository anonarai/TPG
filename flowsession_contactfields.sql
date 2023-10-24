select
    distinct(contact_id),
    n.id, n.run_no, n.created_on, n.ended_on, n.output, n.events, n.path, n.flow, n.results,
    f.value:contact:fields as contact
from {{ref('tpg_unnest_flowsession')}} n,
    lateral flatten(input => n.events) f
where contact is not null
