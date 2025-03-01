insert into assessment_tool_mode (name, short_name) VALUES ('MusQan', 'MQ');
insert into assessment_tool (name, type, assessment_tool_mode_id, sort_order)
    VALUES ('Annexure A - DH', 'INDICATOR', (select id from assessment_tool_mode where name = 'MusQan'), 50);
insert into assessment_tool (name, type, assessment_tool_mode_id, sort_order)
    VALUES ('Annexure A - CHC', 'INDICATOR', (select id from assessment_tool_mode where name = 'MusQan'), 40);

insert into assessment_type (name, assessment_tool_mode_id) values ('External', (select id from assessment_tool_mode where name = 'MusQan'));
insert into assessment_type (name, assessment_tool_mode_id) values ('Internal', (select id from assessment_tool_mode where name = 'MusQan'));
insert into assessment_type (name, assessment_tool_mode_id) values ('State', (select id from assessment_tool_mode where name = 'MusQan'));
insert into assessment_type (name, assessment_tool_mode_id) values ('Surveillance', (select id from assessment_tool_mode where name = 'MusQan'));
