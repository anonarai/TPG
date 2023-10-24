select
    id,
    contact_id,
    created_on,
    current_flow_id,
    ended_on,
    parse_json(output) as output,
    output_url,
    responded,
    session_type,
    status,
    timeout_on,
    uuid,
    wait_started_on,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    _airbyte_flows_flowsession_hashid,
    _airbyte_normalized_at
from airbyte_db.ccl.flows_flowsession
where org_id = 65
