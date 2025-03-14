drop function if exists create_checklist(varchar, bigint, bigint, varchar);
drop function if exists create_checklist(checklist_name varchar, existing_department_id bigint, existing_assessment_tool_id bigint, ch_uuid varchar);
drop function if exists create_checklist_area_of_concern(aoc_uuid varchar, checklist_uuid varchar);
drop function if exists create_checkpoint(checkpoint_name varchar, chp_uuid varchar, me_id bigint, ch_id bigint, mov varchar, ob boolean, si boolean, pi boolean, rr boolean);
drop function if exists create_department(department_name varchar, d_uuid varchar);
drop function if exists create_district(district_name varchar, state_id bigint, d_uuid varchar);
drop function if exists create_facility(facility_name varchar, district_id bigint, facility_type_id bigint, ft_uuid varchar);
drop function if exists create_facility_type(facility_type_name varchar, ft_uuid varchar);
drop function if exists create_facility_type(facility_type_name varchar, ft_uuid varchar);
drop function if exists create_measurable_element(measurable_element_name varchar, measurable_element_ref varchar, std_id bigint, me_uuid varchar);
drop function if exists create_standard(standard_name varchar, standard_ref varchar, aoc_id bigint, std_uuid varchar);
drop function if exists create_state(state_name varchar, st_uuid varchar);
drop function if exists create_area_of_concern(area_of_concern_name varchar, area_of_concern_ref varchar, aoc_uuid varchar);
drop function if exists create_assessment_tool(assessment_tool_name varchar, at_uuid varchar, mode varchar);
drop function if exists jss_cg_create_reference_data();
drop function if exists verify_checklist(assessment_tool_name varchar, checklist_name varchar);
drop function if exists verify_checkpoint(assessment_tool_name varchar, checklist_name varchar, measurable_element_name varchar, checkpoint_name varchar);