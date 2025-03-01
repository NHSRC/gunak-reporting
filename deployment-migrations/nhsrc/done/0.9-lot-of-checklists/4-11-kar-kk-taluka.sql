insert into assessment_tool (name, state_id, assessment_tool_mode_id) VALUES ('Kayakalp (Karnataka)', (select id from state where name = 'Karnataka'), (select id from assessment_tool_mode where name = 'nqas'));


insert into department (name) values ('Kayakalp') on conflict do nothing;	insert into checklist (name, department_id, state_id) values ('Kayakalp', (select id from department where name = 'Kayakalp'), (select id from state where name = 'Karnataka'));	insert into assessment_tool_checklist (assessment_tool_id, checklist_id) values ((select max(assessment_tool.id) from assessment_tool join assessment_tool_mode a on assessment_tool.assessment_tool_mode_id = a.id where a.name = 'nqas' and assessment_tool.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));




insert into area_of_concern (name, reference) values ('Service Provivision', 'A');	insert into checklist_area_of_concern (checklist_id, area_of_concern_id)
select checklist.id, (select max(id) from area_of_concern where reference = 'A') from checklist
join assessment_tool_checklist on checklist.id = assessment_tool_checklist.checklist_id
       join assessment_tool a on assessment_tool_checklist.assessment_tool_id = a.id
join state on a.state_id = state.id
join assessment_tool_mode m2 on a.assessment_tool_mode_id = m2.id where state.name = 'Karnataka' and m2.name = 'nqas' and a.name = 'Kayakalp (Karnataka)';
insert into area_of_concern (name, reference) values ('Patient Rights', 'B');	insert into checklist_area_of_concern (checklist_id, area_of_concern_id)
select checklist.id, (select max(id) from area_of_concern where reference = 'B') from checklist
join assessment_tool_checklist on checklist.id = assessment_tool_checklist.checklist_id
       join assessment_tool a on assessment_tool_checklist.assessment_tool_id = a.id
join state on a.state_id = state.id
join assessment_tool_mode m2 on a.assessment_tool_mode_id = m2.id where state.name = 'Karnataka' and m2.name = 'nqas' and a.name = 'Kayakalp (Karnataka)';
insert into area_of_concern (name, reference) values ('Inputs', 'C');	insert into checklist_area_of_concern (checklist_id, area_of_concern_id)
select checklist.id, (select max(id) from area_of_concern where reference = 'C') from checklist
join assessment_tool_checklist on checklist.id = assessment_tool_checklist.checklist_id
       join assessment_tool a on assessment_tool_checklist.assessment_tool_id = a.id
join state on a.state_id = state.id
join assessment_tool_mode m2 on a.assessment_tool_mode_id = m2.id where state.name = 'Karnataka' and m2.name = 'nqas' and a.name = 'Kayakalp (Karnataka)';
insert into area_of_concern (name, reference) values ('Support Services', 'D');	insert into checklist_area_of_concern (checklist_id, area_of_concern_id)
select checklist.id, (select max(id) from area_of_concern where reference = 'D') from checklist
join assessment_tool_checklist on checklist.id = assessment_tool_checklist.checklist_id
       join assessment_tool a on assessment_tool_checklist.assessment_tool_id = a.id
join state on a.state_id = state.id
join assessment_tool_mode m2 on a.assessment_tool_mode_id = m2.id where state.name = 'Karnataka' and m2.name = 'nqas' and a.name = 'Kayakalp (Karnataka)';
insert into area_of_concern (name, reference) values ('Clinical Services', 'E');	insert into checklist_area_of_concern (checklist_id, area_of_concern_id)
select checklist.id, (select max(id) from area_of_concern where reference = 'E') from checklist
join assessment_tool_checklist on checklist.id = assessment_tool_checklist.checklist_id
       join assessment_tool a on assessment_tool_checklist.assessment_tool_id = a.id
join state on a.state_id = state.id
join assessment_tool_mode m2 on a.assessment_tool_mode_id = m2.id where state.name = 'Karnataka' and m2.name = 'nqas' and a.name = 'Kayakalp (Karnataka)';
insert into area_of_concern (name, reference) values ('Infection Control', 'F');	insert into checklist_area_of_concern (checklist_id, area_of_concern_id)
select checklist.id, (select max(id) from area_of_concern where reference = 'F') from checklist
join assessment_tool_checklist on checklist.id = assessment_tool_checklist.checklist_id
       join assessment_tool a on assessment_tool_checklist.assessment_tool_id = a.id
join state on a.state_id = state.id
join assessment_tool_mode m2 on a.assessment_tool_mode_id = m2.id where state.name = 'Karnataka' and m2.name = 'nqas' and a.name = 'Kayakalp (Karnataka)';
insert into area_of_concern (name, reference) values ('Quality Control', 'G');	insert into checklist_area_of_concern (checklist_id, area_of_concern_id)
select checklist.id, (select max(id) from area_of_concern where reference = 'G') from checklist
join assessment_tool_checklist on checklist.id = assessment_tool_checklist.checklist_id
       join assessment_tool a on assessment_tool_checklist.assessment_tool_id = a.id
join state on a.state_id = state.id
join assessment_tool_mode m2 on a.assessment_tool_mode_id = m2.id where state.name = 'Karnataka' and m2.name = 'nqas' and a.name = 'Kayakalp (Karnataka)';
insert into area_of_concern (name, reference) values ('Outcome', 'H');	insert into checklist_area_of_concern (checklist_id, area_of_concern_id)
select checklist.id, (select max(id) from area_of_concern where reference = 'H') from checklist
join assessment_tool_checklist on checklist.id = assessment_tool_checklist.checklist_id
       join assessment_tool a on assessment_tool_checklist.assessment_tool_id = a.id
join state on a.state_id = state.id
join assessment_tool_mode m2 on a.assessment_tool_mode_id = m2.id where state.name = 'Karnataka' and m2.name = 'nqas' and a.name = 'Kayakalp (Karnataka)';




insert into standard (name, reference, area_of_concern_id) values ('Pest & Animal Control', 'A1', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Water Conservation', 'A9', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Maintenance of Open Areas', 'A3', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Landscaping & Gardening', 'A2', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('PHC Appearance', 'A4', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Maintenance of Furniture & Fixture', 'A7', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Removal of Junk Material', 'A8', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Infrastructure Maintenance', 'A5', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Work Place Management', 'A10', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Illumination', 'A6', (select max(id) from area_of_concern where reference = 'A'));
insert into standard (name, reference, area_of_concern_id) values ('Cleanliness of Wards', 'B2', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Cleanliness of Circulation Area', 'B1', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Cleanliness of Auxiliary Areas', 'B5', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Cleanliness of Ambulatory & Diagnostic Areas', 'B4', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Use of standards materials and Equipment for Cleaning', 'B7', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Monitoring of Cleanliness Activities', 'B9', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Cleanliness of Procedure Areas', 'B3', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Use of Standard Methods for Cleaning', 'B8', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Drainage and Sewage Management', 'B10', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Cleanliness of Toilets', 'B6', (select max(id) from area_of_concern where reference = 'B'));
insert into standard (name, reference, area_of_concern_id) values ('Collection and Transportation of Biomedical Waste', 'C2', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Sharp Management', 'C3', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Storage of Biomedical Waste', 'C4', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Solid General Waste Management', 'C7', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Equipment and Supplies for Bio Medical Waste Management', 'C9', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Segregation of Biomedical Waste', 'C1', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Disposal of Biomedical waste', 'C5', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Statuary Compliances', 'C10', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Management Hazardous Waste', 'C6', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Liquid Waste Management', 'C8', (select max(id) from area_of_concern where reference = 'C'));
insert into standard (name, reference, area_of_concern_id) values ('Hospital Acquired Infection Surveillance', 'D9', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Hand Hygiene', 'D1', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Personal Protective Practices', 'D3', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Decontamination and Cleaning of Instruments', 'D4', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Isolation and Barrier Nursing', 'D7', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Personal Protective Equipment (PPE)', 'D2', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Infection Control Program', 'D8', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Spill Management', 'D6', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Environment Control', 'D10', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Disinfection & Sterilization of Instruments', 'D5', (select max(id) from area_of_concern where reference = 'D'));
insert into standard (name, reference, area_of_concern_id) values ('Pharmacy and Stores', 'E3', (select max(id) from area_of_concern where reference = 'E'));
insert into standard (name, reference, area_of_concern_id) values ('Water Sanitation', 'E2', (select max(id) from area_of_concern where reference = 'E'));
insert into standard (name, reference, area_of_concern_id) values ('Laundry Services & Linen Management', 'E1', (select max(id) from area_of_concern where reference = 'E'));
insert into standard (name, reference, area_of_concern_id) values ('Outreach Services', 'E5', (select max(id) from area_of_concern where reference = 'E'));
insert into standard (name, reference, area_of_concern_id) values ('Security Services', 'E4', (select max(id) from area_of_concern where reference = 'E'));
insert into standard (name, reference, area_of_concern_id) values ('Training and Capacity Building and Standardization', 'F4', (select max(id) from area_of_concern where reference = 'F'));
insert into standard (name, reference, area_of_concern_id) values ('Leadership and Team work', 'F3', (select max(id) from area_of_concern where reference = 'F'));
insert into standard (name, reference, area_of_concern_id) values ('Community Monitoring & Patient Participation', 'F1', (select max(id) from area_of_concern where reference = 'F'));
insert into standard (name, reference, area_of_concern_id) values ('Information Education and Communication', 'F2', (select max(id) from area_of_concern where reference = 'F'));
insert into standard (name, reference, area_of_concern_id) values ('Staff Hygiene and Dress Code', 'F5', (select max(id) from area_of_concern where reference = 'F'));
insert into standard (name, reference, area_of_concern_id) values ('Aesthetics of Surrounding area', 'G5', (select max(id) from area_of_concern where reference = 'G'));
insert into standard (name, reference, area_of_concern_id) values ('Cleanliness of approach road and surrounding area', 'G3', (select max(id) from area_of_concern where reference = 'G'));
insert into standard (name, reference, area_of_concern_id) values ('Maintenance of surrounding area and Waste Management', 'G6', (select max(id) from area_of_concern where reference = 'G'));
insert into standard (name, reference, area_of_concern_id) values ('Public Amenities in Surrounding Area', 'G4', (select max(id) from area_of_concern where reference = 'G'));
insert into standard (name, reference, area_of_concern_id) values ('Promotion of Swachhata & Coordination with Local bodies', 'G1', (select max(id) from area_of_concern where reference = 'G'));
insert into standard (name, reference, area_of_concern_id) values ('Leadership & tapping alternative source of funding for Swachhata', 'G2', (select max(id) from area_of_concern where reference = 'G'));




insert into measurable_element (name, reference, standard_id) values ('No stray animals within the facility premises', 'A1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Measures for Mosquito free environment are in place', 'A1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Pest Control Measures are implemented in the facility', 'A1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has a functional rain water harvesting system', 'A9.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Preventive measures are taken to reduce wastage and reuse of water', 'A9.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Water supply system is maintained in the PHC', 'A9.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is no abandoned / dilapidated building within the premises', 'A3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is no unauthorised occupation within the facility, nor there is encroachment on PHC land', 'A3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No water logging in open areas', 'A3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Internal Roads, Pathways, etc. are even and clean', 'A2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Provision of Herbal Garden', 'A2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Front area/ Parks/ Open spaces are well maintained', 'A2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Walls are well-plastered and painted', 'A4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Uniform signage system in the PHC', 'A4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Name of the PHC is prominently displayed at the entrance', 'A4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Window and doors are maintained', 'A7.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Patients'' furniture are in good condition', 'A7.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Furniture at the nursing station, staff room, administrative office are maintained', 'A7.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has demarcated space for keeping condemned junk material', 'A8.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No junk material within the PHC premises', 'A8.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has documented and implemented States'' Condemnation policy', 'A8.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has intact boundary wall and functional gates at entry', 'A5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC Infrastructure is well maintained', 'A5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has adequate facility for parking of vehicles', 'A5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Useful articles, records, drugs, etc. are arranged systematically', 'A10.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The Staff periodically sorts useful and unnecessary articles at work stations', 'A10.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Articles are labelled for easy recognition and easy retrieval.', 'A10.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Adequate illumination inside the building', 'A6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Adequate illumination in Outside of the PHC', 'A6.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Use of energy efficient bulbs', 'A6.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'A6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No dirt/Grease/Stains/ Cobwebs/Bird Nest/ Dust/ vegetation on the walls and roof in the PHC''s ward', 'B2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Wards are cleaned at least thrice in a day with wet mop', 'B2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Surfaces are conducive for effective cleaning', 'B2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Corridors are cleaned at least twice in a day with wet mop', 'B1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No dirt/Grease/Stains/ Cobwebs/Bird Nest/ Dust/ vegetation on the walls and roof in the PHC''s circulation area', 'B1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Surfaces are conducive for effective cleaning', 'B1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Surfaces are conducive of effective cleaning', 'B5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No dirt/Grease/Stains and Cobwebs/Bird Nest/ Vegetation/ Dust on walls and roof in Auxiliary area', 'B5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Auxiliary areas are cleaned at least twice in a day with wet mop', 'B5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Surfaces are conducive of effective cleaning', 'B4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Ambulatory and Diagnostic areas are cleaned at least twice in a day with wet mop', 'B4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No dirt/Grease/Stains and Cobwebs/Bird Nest/ Dust on walls and roof in Ambulatory & Diagnostic area', 'B4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Cleaning Equipment', 'B7.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Detergent Disinfectant solution / Hospital Grade Phenyl for Cleaning purpose', 'B7.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of carbolic Acid/ Reputed compound (Aldehyde & other chemicals e.g. Bacillocid) for surface cleaning in procedure areas- Labour Room, OT (As Applicable)', 'B7.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Use of Housekeeping Checklist', 'B9.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Periodic Monitoring of Housekeeping activities', 'B9.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Monitoring of adequacy and quality of material used for cleaning', 'B9.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No dirt/Grease/Stains/ Cobwebs/Bird Nest/ Dust/ vegetation on the walls and roof in the procedure area.', 'B3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Surfaces are conducive for effective cleaning', 'B3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Procedure area are cleaned at least twice in a day/ after every procedure (as applicable)', 'B3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Use of Three bucket system for cleaning', 'B8.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Use unidirectional method and outward mopping', 'B8.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No use of brooms in patient care areas', 'B8.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of connection with Municipal Sewage System/ soak pit/ septic tank', 'B10.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of closed drainage system with adequate gradient', 'B10.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No blocked/ over-flowing drains in the facility', 'B10.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No dirt/Grease/Stains/ Garbage in Toilets', 'B6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No foul smell in the Toilets and its dry', 'B6.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Toilets have running water and functional cistern', 'B6.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'B6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Transportation of biomedical waste is done in closed container/trolley', 'C2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has linkage with a CWTF Operator or has deep burial pit (with prior approval of the prescribed authority)', 'C2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Biomedical waste bins are covered', 'C2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Disinfection of Broken / Discarded Glassware is done as per recommended procedure', 'C3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Staff is aware of needle stick injury Protocol', 'C3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Sharp Waste is stored in Puncture proof containers', 'C3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Dedicated Storage facility is available for biomedical waste', 'C4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Access to waste storage facility is secured', 'C4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No Biomedical waste is stored for more than 48 Hours', 'C4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Disposal of General Waste', 'C7.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Innovations in managing general waste', 'C7.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Compost pit as per specification', 'C7.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Needle/ Hub cutter and puncture proof boxes', 'C9.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Colour coded liners for Biomedical waste and general waste', 'C9.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Bins for segregated collection of waste at point of use', 'C9.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Check if the staff is aware of segregation protocol', 'C1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Display of work instructions for segregation and handling of Biomedical waste', 'C1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Segregation of BMW is done as per BMW management rule,2016 & amendment', 'C1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has adequate facility for disposal of Biomedical waste', 'C5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility manages recyclable waste as per approved procedure', 'C5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Deep Burial Pit is constructed as per norms given in the Biomedical Waste Rules 2016 & amendment', 'C5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC maintains records, as required under the Biomedical Waste Rules 2016 & amendment', 'C10.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has a valid authorization for Bio Medical waste Management from the prescribed authority', 'C10.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC submits Annual report to pollution control board', 'C10.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Disposal of Expired or discarded medicine', 'C6.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Mercury Spill Management Kit and Staff is aware of Mercury Spill management', 'C6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Disposal of used Disinfectant solution like Glutaraldehyde', 'C6.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has treatment facility for managing infectious liquid waste', 'C8.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Liquid waste is made safe before mixing with other waste water', 'C8.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The laboratory has a functional protocol for managing discarded samples', 'C8.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'C8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility measures the Health care associated infections', 'D9.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Regular Monitoring of infection control practices', 'D9.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility reports all notifiable diseases and events', 'D9.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D9' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Sink and running water at point of use', 'D1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Display of Hand washing Instructions', 'D1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Staff is aware of standard hand washing protocol', 'D1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Correct method of wearing and removing PPEs', 'D3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The staff is aware of use of gloves, when to use (occasion) and its type', 'D3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No re-use of disposable personal protective equipment', 'D3.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Decontamination and cleaning of instruments after use', 'D4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Decontamination of operating and Surface examination table, dressing tables etc. after every procedures', 'D4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Staff knows how to make Chlorine solution', 'D4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Infectious patients are not mixed for general patients', 'D7.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Restriction of external foot wear in critical areas', 'D7.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Maintenance of adequate bed to bed distance in wards', 'D7.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D7' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Use of Heavy Duty Gloves and gumboot by waste handlers', 'D2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Use of Gloves during procedures and examination', 'D2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Use of Masks ,Head cap and Lab coat, Apron etc.', 'D2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Antibiotic Policy is implemented at the facility', 'D8.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Infection Control Committee is constituted and functional in the PHC', 'D8.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Immunization and medical check-up of Service Providers', 'D8.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D8' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Spill management protocols are displayed at points if use', 'D6.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of spill management Kit', 'D6.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Staff is aware of how to manage spills', 'D6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Preventive measures for air borne infections has been taken', 'D10.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Adequate number of Air-exchange in Laboratory', 'D10.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Cross-ventilation at Patient Care areas (ward, labour room and dressing room)', 'D10.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D10' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Adherence to Protocols for sterilization', 'D5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Adherence to Protocol for High Level disinfection', 'D5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Use of autoclave tape for monitoring of sterilization', 'D5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'D5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Cold storage equipment''s are clean and managed properly', 'E3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Cold storage equipment are not used for storing other items, than vaccine .', 'E3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Medicines are arranged systematically', 'E3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Drinking Water is tested and chlorinated', 'E2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility receives adequate quantity of water as per requirement', 'E2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is storage tank for the water and tank is cleaned periodically', 'E2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Bed-sheets and pillow cover are stain free and clean', 'E1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has adequate stock (including reserve) of linen', 'E1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Bed-sheets and linen are changed daily', 'E1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Medical officers monitor cleanliness and hygiene of outreach sessions and sub centres.', 'E5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('ASHA''s are promoting cleanliness and hygiene practices', 'E5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Biomedical waste generated during outreach session are transported to the PHC on the same day', 'E5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Security personal reprimands attendants, who found indulging into unhygienic behaviour - spitting, open field urination & defecation, etc.', 'E4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Departments are locked after working hours', 'E4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('One Security Guard per shift', 'E4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'E4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Bio medical waste Management training has been provided to the staff', 'F4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has documented Standard Operating procedures for Cleanliness, Bio-Medical waste management and Infection Control', 'F4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Infection control Training has been provided to the staff', 'F4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Cleanliness and infection control committee has representation of all cadre of staff including Group ‘D’ and cleanings staff', 'F3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Roles and responsibility of different staff members have been assigned and communicated', 'F3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC leadership review the progress of the cleanliness drive on weekly basis', 'F3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The Health facility has a system to take feed-back from patients and visitors for maintaining the cleanliness of the facility', 'F1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Local community and organisations are involved in monitoring and promoting cleanliness', 'F1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Patients are made aware of their responsibility of keeping the health facility clean', 'F1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('IEC regarding importance of maintaining hand hygiene is displayed in PHC premises', 'F2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('IEC regarding use of toilets is displayed within PHC premises', 'F2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('IEC regarding Swachhta Abhiyan is displayed within the facilities’ premises', 'F2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('PHC has dress code policy for all cadre of staff', 'F5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is a regular monitoring of hygiene of staff', 'F5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Identity cards and name plates have been provided to all staff', 'F5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'F5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Parks and green areas in the surrounding area are well maintained', 'G5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No loose hanging wires in and around bill boards, electrical polls etc.', 'G5.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Illumination in surrounding area', 'G5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('No unwanted/broken/torn/ loose hanging posters/billboards.', 'G5.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There are no stray animals in surrounding area', 'G5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G5' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('All drains/sewer are covered.', 'G3.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Approach road are even and free from pot-holes', 'G3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('On the way signages are available', 'G3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Area around the facility is clean, neat and tidy', 'G3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Functional street lights are available on the approach road', 'G3.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G3' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Surrounding areas are well maintained', 'G6.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Innovations in managing waste', 'G6.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of bins for General recyclable and biodegradable wastes', 'G6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of garbage storage area/ compost pit', 'G6.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Regular repairs and maintained of roads, footpaths and pavements', 'G6.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G6' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Vendors & hawkers have designated place outside the facility', 'G4.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Such toilets/Urinal are neat & clean', 'G4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of adequate parking facilities for Public Transport such as Cycle Rickshaw, Tanga, Auto, Taxi', 'G4.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Presence of Safe Drinking Water facility outside the boundary wall', 'G4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of Public toilets/ Urinal in surrounding Area', 'G4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G4' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The Facility coordinates with local Gram Panchayat/Urban local bodies and NGOs for improving Swachhata in vicinity of the health facility', 'G1.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility coordinates with other departments for improving Swachhata', 'G1.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Implementation of IEC activities related to '' Swachh Bharat Abhiyan''', 'G1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Local community actively participates during Swachhata Pakhwara(Fortnight)', 'G1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Community awareness by organising cultural programme and competitions', 'G1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G1' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Surrounding area is declared Open Defecation Free', 'G2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The Facility has undertaken initiative for community mobilization in the surrounding for improving Swachhata', 'G2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The Facility endeavours to attract financial support from other organisations', 'G2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility engages the local Community for reducing household pollutions in the vicinity', 'G2.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility endeavours to attract financial support from local support', 'G2.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
join state on a2.state_id = state.id
where standard.reference = 'G2' and a2.name = 'Kayakalp (Karnataka)')) on conflict do nothing;




insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No stray animals within the facility premises', 'Observe for the presence of stray animals such as dogs, cats, cattle, pigs, etc. within the premises. Also discuss with the facility staff. Check at the entrance of the facility that cattle trap has been provided.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A1.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Measures for Mosquito free environment are in place', 'Check for a. Wire Mesh in windows b. Desert Coolers (if in use) are cleaned regularly/ oil is sprinkled c. No water collection to prevent mosquito breeding within the premisesd. Gambusia fish cultivatione. Usage of Mosquito nets by the admitted patients f. Availability of adequate stock of Mosquito nets( If Applicable)', TRUE, TRUE, TRUE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A1.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Pest Control Measures are implemented in the facility', 'Check for the evidence at the facility (Presence of Pests, Record of Purchase of Pesticides and availability of the rat trap) and Interview the staff about its usage', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A1.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has a functional rain water harvesting system', 'If the such system is available, please check its functionality', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A9.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Preventive measures are taken to reduce wastage and reuse of water', 'Check self closing taps are installedReuse of water for activities like gardening.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A9.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Water supply system is maintained in the PHC', 'Check for leaking taps, pipes, over-flowing tanks and dysfunctional cisterns', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A9.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is no abandoned / dilapidated building within the premises', 'Check for presence of any ‘abandoned building’ within the facility premises', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A3.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is no unauthorised occupation within the facility, nor there is encroachment on PHC land', 'Check for PHC premises and access road have not been encroached by the vendors, unauthorized shops/ occupants,No thoroughfare / general traffic in PHC premises etc.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A3.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No water logging in open areas', 'Check for water accumulation in open areas because of faulty drainage, leakage from the pipes, etc.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A3.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Internal Roads, Pathways, etc. are even and clean', 'Check that pathways, corridors, courtyards, etc. are clean and landscaped.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A2.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Provision of Herbal Garden', 'Check if the facility maintains a herbal garden for the medicinal plants', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A2.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Front area/ Parks/ Open spaces are well maintained', 'Check that wild vegetation does not exist. Shrubs and Trees are well maintained. Over grown branches of plants/ tree have been trimmed regularly. Dry leaves and green waste are removed on daily basis.Gardens/ green area are secured with fence', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A2.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Walls are well-plastered and painted', 'Check that wall (Internal and External) plaster is not chipped-off and the building is painted/ whitewashed in uniform approved colour and Paint has not faded away. Check for presence of any outdated Posters', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A4.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Uniform signage system in the PHC', 'All signage''s (directional & departmental) are in local language and follow uniform colour scheme.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A4.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Name of the PHC is prominently displayed at the entrance', 'Name of the PHC is prominently displayed as per state’s policy.The name board of the facility is well illuminated / florescent to have visibility in night', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A4.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Window and doors are maintained', 'Check, if Window panes are intact, and provided with Grill/ Wire Mesh. Doors are intact and painted /varnished', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A7.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patients'' furniture are in good condition', 'Check that Patient beds are not rusted and are painted. Mattresses are clean and not tornTrolleys, Stretchers, Wheel Chairs, etc. are well maintained( As applicable)', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A7.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Furniture at the nursing station, staff room, administrative office are maintained', 'Check the condition of furniture at nursing station, duty room, office, etc. The furniture is not broken, painted/polished and clean.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A7.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has demarcated space for keeping condemned junk material', 'Check for availability of a demarcated & secured space for collecting and storing the junk material before its disposal', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A8.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No junk material within the PHC premises', 'Check if unused/ condemned articles, and outdated records are kept in the Nursing stations, OPD clinics, Labour Room , Injection Room , Dressing Room, Wards, stairs, open areas, roof tops, balcony etc.No condemned vehicles are parked', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A8.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has documented and implemented States'' Condemnation policy', 'Check if PHC has drafted its condemnation policy or have got one from the state. Check whether it has been complied.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A8.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has intact boundary wall and functional gates at entry', 'Check that there is a proper boundary wall of adequate height without any breach. The Wall is painted in uniform colour', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A5.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC Infrastructure is well maintained', 'No major cracks, seepage, chipped plaster & floors is seen within the building. The Building is periodically maintained', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A5.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has adequate facility for parking of vehicles', '', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A5.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Useful articles, records, drugs, etc. are arranged systematically', 'Check if drugs, instruments, records, have been kept systematically near their usage points in demarcated areas. They are not lying in haphazard manner.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A10.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The Staff periodically sorts useful and unnecessary articles at work stations', 'Ask the staff about the frequency of sorting and removal of unnecessary articles from their work place like Nursing stations, work bench, dispensing counter in Pharmacy, etc.Check for presence of unnecessary articles.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A10.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Articles are labelled for easy recognition and easy retrieval.', 'Check that drugs, instruments, records, etc. are labelled for facilitating easy identification.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A10.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adequate illumination inside the building', 'Check for Adequate lighting arrangements through Natural Light or Electric Bulbs inside PHC', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A6.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adequate illumination in Outside of the PHC', 'Check that PHC front, entry gate and access road are well illuminated', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A6.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use of energy efficient bulbs', 'Check that PHC uses energy efficient bulb like CFL or LED for lighting purpose within the PHC Premises', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'A6.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No dirt/Grease/Stains/ Cobwebs/Bird Nest/ Dust/ vegetation on the walls and roof in the PHC''s ward', 'Check the floors and walls of wards for any visible or tangible dirt, grease, stains, etc.Check the roof, walls, corners of wards for any Cobweb, Bird Nest, etc.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B2.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Wards are cleaned at least thrice in a day with wet mop', 'Ask cleaning staff about frequency of cleaning in a day. Verify with the Housekeeping records', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B2.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surfaces are conducive for effective cleaning', 'Check if surfaces are smooth for cleaning Check the floors and walls for cracks, uneven or any other defects which may adversely impact the cleaning procedure', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B2.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Corridors are cleaned at least twice in a day with wet mop', 'Ask cleaning staff about frequency of cleaning in a day. Verify with Housekeeping records.Corridors are rigorously cleaned with scrubbing / flooding once in a month', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B1.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No dirt/Grease/Stains/ Cobwebs/Bird Nest/ Dust/ vegetation on the walls and roof in the PHC''s circulation area', 'Check that floors and walls of Corridors, Waiting area, stairs, roof top for any visible or tangible dirt, grease, stains, etc.Check that roof, walls, corners of Corridors, Waiting area, stairs, roof top for any Cobweb, Bird Nest, etc.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B1.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surfaces are conducive for effective cleaning', 'Check if surfaces are smooth for cleaning Check the floors and walls for cracks, uneven or any other defects which may adversely impact the cleaning procedure', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B1.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surfaces are conducive of effective cleaning', 'Check if surfaces are smooth enough for cleaning check floors and walls for cracks, uneven or any other defects which may affect cleaning procedure', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B5.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No dirt/Grease/Stains and Cobwebs/Bird Nest/ Vegetation/ Dust on walls and roof in Auxiliary area', 'Check that floors and walls of Pharmacy, Stores, Cold chain Room, Meeting Room etc. (As applicable) for any visible or tangible dirt, grease, stains, etc.Check that roof, walls, corners of these area for any Cobweb, Bird Nest, etc.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B5.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Auxiliary areas are cleaned at least twice in a day with wet mop', 'Ask cleaning staff about frequency of cleaning in a day. Verify with Housekeeping recordsAreas are rigorously cleaned with scrubbing / flooding once in a month', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B5.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surfaces are conducive of effective cleaning', 'Check if surfaces are smooth for ensuring cleaning Check the floors and walls for cracks, uneven or any other defects which may affect cleaning procedure', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B4.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Ambulatory and Diagnostic areas are cleaned at least twice in a day with wet mop', 'Ask cleaning staff about frequency of cleaning in a day. Verify with Housekeeping records', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B4.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No dirt/Grease/Stains and Cobwebs/Bird Nest/ Dust on walls and roof in Ambulatory & Diagnostic area', 'Check that floors and walls of OPD, Lab, X-ray etc. (If available) for any visible or tangible dirt, grease, stains, etc.Check that roof, walls, corners of these area for any Cobweb, Bird Nest, etc.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B4.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Cleaning Equipment', 'Check the availability of mops, brooms, collection buckets etc. as per requirement.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B7.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Detergent Disinfectant solution / Hospital Grade Phenyl for Cleaning purpose', 'Check for good quality PHC cleaning solution preferably a ISI mark. Composition and concentration of solution is written on label. Check with cleaning staff if they are getting adequate supply. Verify the consumption records.Check, if the cleaning staff is aware of correct concentration and dilution method for preparing cleaning solution.', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B7.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of carbolic Acid/ Reputed compound (Aldehyde & other chemicals e.g. Bacillocid) for surface cleaning in procedure areas- Labour Room, OT (As Applicable)', 'Check for adequacy of the supply. Verify with the records for stock-outs, if any', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B7.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use of Housekeeping Checklist', 'Check that Housekeeping Checklist is displayed in PHC and updated. Check Housekeeping records if checklists are daily updated', TRUE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B9.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Periodic Monitoring of Housekeeping activities', 'Periodic Monitoring is done by MOIC or another person designated. Please check record of such monitoring', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B9.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Monitoring of adequacy and quality of material used for cleaning', 'Check if there is any system of monitoring that adequate concentration of disinfectant solution is used for cleaning. PHC administration take feedback from cleaning staff about efficacy of the solution and take corrective action if required.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B9.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No dirt/Grease/Stains/ Cobwebs/Bird Nest/ Dust/ vegetation on the walls and roof in the procedure area.', 'Check that floors and walls of Procedure area like Labour Room, OT, Dressing Room, Immunization Room etc. (As Applicable) for any visible or tangible dirt, grease, stains, etc.Check that roof, walls, corners of these area for any Cobweb, Bird-nest, vegetation, etc.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B3.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surfaces are conducive for effective cleaning', 'Check if surfaces are smooth for ensuring cleaning Check the floors and walls for cracks, uneven or any other defects which may affect cleaning procedure', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B3.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Procedure area are cleaned at least twice in a day/ after every procedure (as applicable)', 'Ask cleaning staff about frequency of cleaning in a day. Verify with Housekeeping records.Areas are rigorously cleaned with scrubbing / flooding once in a week', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B3.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use of Three bucket system for cleaning', 'Check if cleaning staff uses three bucket system for cleaning. (One bucket for Cleaning solution, second for plain water and third one for wringing the mop.) Ask the cleaning staff about the process. Disinfection and washing of mops after every cleaning cycle need to be undertaken.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B8.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use unidirectional method and outward mopping', 'Ask the cleaning staff to demonstrate, how they apply mop on floors. It should be in one direction without returning to the starting point. The mop should move from inner area to outer area of the room. Separate mop is used for the Procedure area.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B8.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No use of brooms in patient care areas', 'Check if brooms are stored in patient care areas. Ask cleaning staff if they use brooms for sweeping in wards, OT, Labour room. Brooms should not be used in patient care areas.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B8.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of connection with Municipal Sewage System/ soak pit/ septic tank', 'Check if PHC sewage has a connection with municipal system. If there is no access to municipal system, there should be septic tank. Check condition of septic tank e. g. Periodicity of cleaning, mosquito proofing of manhole, etc.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B10.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of closed drainage system with adequate gradient', 'Check, PHC should have a closed drainage system or else drains should be properly covered.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B10.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No blocked/ over-flowing drains in the facility', 'Observe that the drains are not overflowing or blockedAll the drains are cleaned once in a week', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B10.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No dirt/Grease/Stains/ Garbage in Toilets', 'Check some of the toilets randomly in indoor and outdoor areas for any visible dirt, grease, stains, water accumulation in toilets', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B6.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No foul smell in the Toilets and its dry', 'Check some of the toilets randomly in indoor and outdoor areas for the foul smell and dryness of floor.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B6.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Toilets have running water and functional cistern', 'Please operate cistern and water taps', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'B6.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Transportation of biomedical waste is done in closed container/trolley', 'Check if transportation of waste from clinical areas to storage areas is done in covered trolleys / Bins. Trolleys used for patient shifting should not be used for transportation of waste.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C2.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The facility has linkage with a CWTF Operator or has deep burial pit (with prior approval of the prescribed authority)', 'Check record for functional linkage with a CWTFIn absence of such linkage, check existence of deep burial pit, which has approval of the prescribed authority.', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C2.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Biomedical waste bins are covered', 'Check that bins meant for bio medical waste are covered with a lid', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C2.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Disinfection of Broken / Discarded Glassware is done as per recommended procedure', 'Check if such waste is either pre-treated with 1-2%% Sodium Hypochlorite (having 30% residual chlorine) for 20 minutes or by autoclaving/ microwave/ hydroclave, followed storage in puncture proof and leak proof boxes or containers with blue coloured marking for re-cycling.', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C3.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Staff is aware of needle stick injury Protocol', 'Ask staff immediate management of exposure site; and Medical Officer knows criteria for PEP. There should be functional linkage to DH / SDH/ CHC for PEP follow-up and check records of such referrals and follow-up', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C3.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Sharp Waste is stored in Puncture proof containers', 'Check availability of Puncture & leak proof container (White Translucent) at point of use for storing needles, syringes with fixed needles, needles from cutter/burner, scalpel blade, etc.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C3.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Dedicated Storage facility is available for biomedical waste', 'Check if PHC has dedicated room for storage of Biomedical waste before disposal/handing over to Common Treatment Facility.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C4.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Access to waste storage facility is secured', 'Observe the display of Biohazard symbol at storage areasCheck that the BMW storage is situated away from the main building and is kept under lock and key', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C4.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No Biomedical waste is stored for more than 48 Hours', 'Verify that the waste is being disposed / handed over to CTF within 48 hour of generation. Check the record especially during holidays', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C4.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Disposal of General Waste', 'There is a mechanism of removal of general waste from the facility and its disposal.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C7.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Innovations in managing general waste', 'Look for efforts of the health facility in managing General Waste, such as Recycling of paper waste, vermicomposting, waste to energy initiative, etc.', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C7.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Compost pit as per specification', 'Availability of compost pit for Bio degradable general waste.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C7.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Needle/ Hub cutter and puncture proof boxes', 'At each point of generation of sharp waste', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C9.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Colour coded liners for Biomedical waste and general waste', 'Check all the bins are provided with chlorine free liners. Ask staff about adequacy of supply.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C9.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Bins for segregated collection of waste at point of use', 'One set of bins of appropriate size at each point of generation for Biomedical and General waste.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C9.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check if the staff is aware of segregation protocol', 'Ask staff about the segregation protocol.', FALSE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C1.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Display of work instructions for segregation and handling of Biomedical waste', 'Check for instructions for segregation of waste in different colour coded bins are displayed at point of use.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C1.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Segregation of BMW is done as per BMW management rule,2016 & amendment', 'Anatomical waste and soiled dressing material are segregated in Yellow BinGeneral and infectious waste are not mixed', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C1.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has adequate facility for disposal of Biomedical waste', 'The Health facility within 75 KM of CTF shall have a valid contract with a Common Treatment facility for disposal of Bio medical waste. Or else facility should have Deep Burial Pit and Sharp Pit within premises of Health facility. Such deep burial pit should have approval of the Prescribed Authority', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C5.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Facility manages recyclable waste as per approved procedure', 'Check management of IV Bottles (Plastic), IV tubes, Urine Bags, Syringes, Catheter, etc.(Autoclaving/ Microwaving/ Hydroclaving followed by shredding or a combination of sterilisation and shredding. Later treated waste is handed over to registered vendors.)', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C5.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Deep Burial Pit is constructed as per norms given in the Biomedical Waste Rules 2016 & amendment', 'Located away from the main PHC building and water source, A pit or trench should be dug about two meters deep. It should be half filled with waste, then covered with lime within 50 cm of the surface, before filling the rest of the pit with soil.Secured from animals . If waste disposed through CTF, then a deep burial pit is not required.(Give Full Compliance)', TRUE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C5.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC maintains records, as required under the Biomedical Waste Rules 2016 & amendment', 'Check following records -a. Yearly Health Check-up record of all handlersb. BMW training records of all staff (once in year training)c. Immunisation records of all waste handlers', FALSE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C10.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has a valid authorization for Bio Medical waste Management from the prescribed authority', 'Check for the validity of authorization certificate', FALSE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C10.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC submits Annual report to pollution control board', 'Check the records that reports have been submitted to the prescribed authority on or before 30th June every year.', FALSE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C10.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Disposal of Expired or discarded medicine', 'Returned back to manufacturer or supplierAlternatively handed over to CWTF Operator for incineration at temperature > 12000C', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C6.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Mercury Spill Management Kit and Staff is aware of Mercury Spill management', 'Check for Mercury Spill Management Kit and ask staff what he/she would do in case of Mercury spill. (If facility is mercury free give full compliance)', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C6.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Disposal of used Disinfectant solution like Glutaraldehyde', 'System of pre-treatment before', FALSE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C6.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The facility has treatment facility for managing infectious liquid waste', 'Check the availability of effluent treatment system.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C8.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Liquid waste is made safe before mixing with other waste water', 'Check for the procedure - staff interview and direct observation', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C8.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The laboratory has a functional protocol for managing discarded samples', 'A copy of such protocol should be available and staff should be aware of the same.', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'C8.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Facility measures the Health care associated infections', 'Check for monitoring of Healthcare Associated Infection that may occur in a Primary healthcare setting like Injection abscess, Postpartum sepsis, infection at dressing and suturing sites etc.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D9.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Regular Monitoring of infection control practices', 'Check, if there is any practice of daily monitoring of infection control practice like hand hygiene and personal protection', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D9.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Facility reports all notifiable diseases and events', 'Check that the facility has list of all notifiable disease needs immediate/periodic reporting to higher authority.Check records that notifiable disease have been reported in program such as IDSP and AEFI Surveillance.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D9.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Sink and running water at point of use', 'Check for washbasin with functional tap, soap and running water at all points of use', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D1.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Display of Hand washing Instructions', 'Check that Hand washing instructions are displayed preferably at all points of use', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D1.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Staff is aware of standard hand washing protocol', 'Ask facility staff to demonstrate 6 steps of normal hand wash and 5 moments of hand washing', FALSE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D1.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Correct method of wearing and removing PPEs', 'Ask the staff to demonstrate correct method of wearing and removing Gloves, caps and masks etc.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D3.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The staff is aware of use of gloves, when to use (occasion) and its type', 'Check with the staff when do they wear gloves, and when gloves are not required. The Staff should also know difference between clean & sterilized gloves and when to use', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D3.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No re-use of disposable personal protective equipment', 'Check that disposable gloves and mask are not re-used. Reusable Gloves and mask are used after adequate sterilization.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D3.4' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Decontamination and cleaning of instruments after use', 'Check whether instruments are decontaminated with 0.5% chlorine solution for 10 minutes. Check instruments are cleaned thoroughly with water and soap before sterilization', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D4.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Decontamination of operating and Surface examination table, dressing tables etc. after every procedures', 'Ask staff when and how they clean the operating surfaces either by chlorine solution or Disinfectant like carbolic acid', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D4.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Staff knows how to make Chlorine solution', 'Ask the staff how to make 1% chlorine solution from Bleaching powder and Hypochlorite solution', FALSE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D4.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Infectious patients are not mixed for general patients', 'Check infectious patients are separated from other patients', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D7.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Restriction of external foot wear in critical areas', 'External foot wear are not allowed in labour room, OT etc.( As Applicable)', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D7.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Maintenance of adequate bed to bed distance in wards', 'A distance of 3.5 Foot is maintained between two beds in wards', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D7.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use of Heavy Duty Gloves and gumboot by waste handlers', 'Check, if the housekeeping staff and waste handlers are using heavy duty gloves and gum boots', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D2.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use of Gloves during procedures and examination', 'Check, if the staff uses gloves during examination, and while conducting procedures', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D2.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use of Masks ,Head cap and Lab coat, Apron etc.', 'Check, if staff uses mask head caps , Lab coat and aprons in patient care and procedure areas', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D2.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Antibiotic Policy is implemented at the facility', 'Check if the PHC has documented Anti biotic policy and doctors are aware of it.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D8.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Infection Control Committee is constituted and functional in the PHC', 'Check for the enabling order and minutes of the meeting', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D8.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Immunization and medical check-up of Service Providers', 'PHC staff has been immunized against Hepatitis BCheck for the records and lab investigations of staff', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D8.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Spill management protocols are displayed at points if use', 'Check for display', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D6.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of spill management Kit', 'Check availability of kits', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D6.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Staff is aware of how to manage spills', 'Check for adherence to protocols', FALSE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D6.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Preventive measures for air borne infections has been taken', 'Check staff is aware, adhere and promote respiratory hygiene and cough etiquettes', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D10.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adequate number of Air-exchange in Laboratory', 'Please check availability and serviceability of exhaust fan in the laboratory', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D10.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Cross-ventilation at Patient Care areas (ward, labour room and dressing room)', 'Check availability of Fans/ air conditioning/ Heating/ exhaust/ Ventilators as per environment condition and requirement', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D10.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adherence to Protocols for sterilization', 'Check about awareness of recommended temperature, duration and pressure for autoclaving instruments - 121 degree C, 15 Pound Pressure for 20 Minutes (30 Minutes if wrapped) Linen - 121 C, 15 Pound for 30 Minutes.Check if the staff know the protocol for sterilization of laparoscope soaking it in 2% Glutaraldehyde solution for 10 Hours', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D5.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adherence to Protocol for High Level disinfection', 'Check with the staff process about of High Level disinfection using Boiling for 20 minutes with lid on, soaking in 2% Glutaraldehyde/Chlorine solution for 20 minutes.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D5.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use of autoclave tape for monitoring of sterilization', 'Check autoclaving records for use of sterilization indicators (signal Lock)', TRUE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'D5.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Cold storage equipment''s are clean and managed properly', 'Check ILR, Deep freezers and Ice packs are cleanCheck there is a practice of regular cleaning.Check vaccines are kept in sequenceCheck work instruction for storage of vaccines are displayed at point of use', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E3.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Cold storage equipment are not used for storing other items, than vaccine .', 'Check eatables are not kept in ILR/Deep Freezers', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E3.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Medicines are arranged systematically', 'Check all the shelves/racks containing medicines are labelled in pharmacy and drug storeHeavy items are stored at lower shelves/racksFragile items are not stored at the edges of the shelvesDrugs and consumables are stored away from water and sources of heat, direct sunlight etc.Drugs are not stored at floor and adjacent to wall', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E3.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Drinking Water is tested and chlorinated', 'Presence of free chlorine at 0.2 ppm is tested in the samples drawn at the consumer''s end.', FALSE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E2.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The facility receives adequate quantity of water as per requirement', 'At least 200 litres of water per bed per day is available (if municipal supply). or the water is available on 24x7 basis at all points of usage', FALSE, TRUE, TRUE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E2.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is storage tank for the water and tank is cleaned periodically', 'The PHC should have capacity to store 48 hours water requirement Water tank is cleaned at six monthly interval and records are maintained.', FALSE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E2.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Bed-sheets and pillow cover are stain free and clean', 'Observe the condition of linen in use in the wards and other patient care area', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E1.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The facility has adequate stock (including reserve) of linen', 'Check the stock position and its turn-over during last one year in term of demand and availability', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E1.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Bed-sheets and linen are changed daily', 'Check, if the bedsheets and pillow cover have been changed daily. Please interview the patients as well.', TRUE, TRUE, TRUE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E1.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Medical officers monitor cleanliness and hygiene of outreach sessions and sub centres.', 'Check with medical officers and records of monthly meeting ''''Swachh Baharat Abhiyan'''' has been followed up during monthly meetings with extension workers like MPW, ASHA, ANM etc.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E5.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('ASHA''s are promoting cleanliness and hygiene practices', 'Check for ASHA''s counsel mothers for hand hygiene, toilets, water sanitation etc.', FALSE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E5.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Biomedical waste generated during outreach session are transported to the PHC on the same day', 'Check the records and ask staff', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E5.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Security personal reprimands attendants, who found indulging into unhygienic behaviour - spitting, open field urination & defecation, etc.', 'Check, if security personnel watch behaviour of patients and their attendants, particularly in respect of hygiene, sanitation, etc. and take appropriate actions, as deemed.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E4.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Departments are locked after working hours', 'Departments like OPD, Lab, Administrative office etc. are locked after working hours.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E4.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('One Security Guard per shift', 'Check for the presence of one security personnel at PHC every shift', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'E4.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Bio medical waste Management training has been provided to the staff', 'Verify with the training records', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F4.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has documented Standard Operating procedures for Cleanliness, Bio-Medical waste management and Infection Control', 'Check availability of SOP with respective users', FALSE, FALSE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F4.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Infection control Training has been provided to the staff', 'Check staff are trained at the time of induction and once in every year', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F4.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Cleanliness and infection control committee has representation of all cadre of staff including Group ‘D’ and cleanings staff', 'Verify with the records', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F3.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Roles and responsibility of different staff members have been assigned and communicated', 'Ask different members about their roles and responsibilities', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F3.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC leadership review the progress of the cleanliness drive on weekly basis', 'Check about regularity of meetings and monitoring activities regarding cleanliness drive', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F3.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The Health facility has a system to take feed-back from patients and visitors for maintaining the cleanliness of the facility', 'Check if there is a feedback system for the patients. Verify the records', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F1.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Local community and organisations are involved in monitoring and promoting cleanliness', 'Members of RKS and Local Governance bodies monitor the cleanliness of the PHC at pre-defined intervalsLocal NGO/ Civil Society Organizations/Panchayati Raj Institution are involved in cleanliness of the PHC', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F1.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patients are made aware of their responsibility of keeping the health facility clean', 'Ask patients about their roles& responsibilities with regards to cleanliness. Patient’s responsibilities should be prominently displayed', TRUE, FALSE, TRUE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F1.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('IEC regarding importance of maintaining hand hygiene is displayed in PHC premises', 'Should be displayed prominently in local language', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F2.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('IEC regarding use of toilets is displayed within PHC premises', 'Should be displayed prominently in local language', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F2.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('IEC regarding Swachhta Abhiyan is displayed within the facilities’ premises', 'Should be displayed prominently in local language', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F2.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('PHC has dress code policy for all cadre of staff', 'PHCs staff adhere to dress code', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F5.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is a regular monitoring of hygiene of staff', 'Check about personal hygiene and clean dress of staff', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F5.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Identity cards and name plates have been provided to all staff', 'Check staff uses I Card and name plate', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'F5.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Parks and green areas in the surrounding area are well maintained', 'Check that there no wild vegetation & growth in the surroundings. Shrubs and trees are well maintained. Dry leaves and green waste are removed regularly.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G5.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No loose hanging wires in and around bill boards, electrical polls etc.', 'Check for any loose hanging wires', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G5.5' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Illumination in surrounding area', 'Check that hospital front, approach road and surrounding area are well illuminated with street lights', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G5.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No unwanted/broken/torn/ loose hanging posters/billboards.', 'Check that hospital surrounding are not studded with irrelevant and out dated posters, slogans, wall writings, graffiti, etc.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G5.4' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There are no stray animals in surrounding area', 'Observe for the presence of stray animals such as pigs, dogs cattle, etc.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G5.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('All drains/sewer are covered.', 'Check for open manhole and overflowing drains.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G3.4' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Approach road are even and free from pot-holes', 'Check that approach roads are clean and free from pot-holes and water stagnation', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G3.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('On the way signages are available', 'Check for directional signage with name of the facility on the approach road.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G3.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Area around the facility is clean, neat and tidy', 'Check for any litter/garbage/ in the surrounding area of the facility.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G3.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Functional street lights are available on the approach road', 'Check for street lights and their functionality.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G3.5' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surrounding areas are well maintained', 'Check that there is no over grown shrubs, weeds, grass, potholes, bumps etc. in surrounding areas', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G6.4' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Innovations in managing waste', 'Check, if certain innovative practices have been introduced for managing waste e.g. Vermicomposting/Re-cycling of papers/Waste to energy/Compost Activators, etc.', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G6.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of bins for General recyclable and biodegradable wastes', 'Check availability adequate number of bins for Biodegradable and recyclable general waste in the nearby market', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G6.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of garbage storage area/ compost pit', 'Garbage storage area is away from residential/commercial areas and is covered/ fenced. It is not causing public nuisance. In rural set-up there should be a compost pit.', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G6.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Regular repairs and maintained of roads, footpaths and pavements', 'Check when was the last repair done and current condition of the road- pot-holes, broken footpath etc.', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G6.5' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Vendors & hawkers have designated place outside the facility', 'Check for the availability of designated place for vendors & hawkers and cleanliness', TRUE, TRUE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G4.5' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Such toilets/Urinal are neat & clean', 'Check availability of water and level of cleanliness', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G4.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of adequate parking facilities for Public Transport such as Cycle Rickshaw, Tanga, Auto, Taxi', 'Check signage & parking space: Also check that such transports are parked haphazardly', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G4.4' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Presence of Safe Drinking Water facility outside the boundary wall', 'Check for its presence and functionality', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G4.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Public toilets/ Urinal in surrounding Area', 'Check for availability separate toilets/ Urinal for male and female', TRUE, FALSE, FALSE, FALSE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G4.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The Facility coordinates with local Gram Panchayat/Urban local bodies and NGOs for improving Swachhata in vicinity of the health facility', 'Look for evidence of collective action such as cleaning of drains, maintenance of parking space, orderly arrangement of hawkers (outside the facility), rickshaw, auto, taxi, construction & maintenance of public toilets, improving street-lighting, removing cattle nuisance, etc.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G1.4' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Facility coordinates with other departments for improving Swachhata', 'Look for evidence of coordination with departments such as Education (school programs on hygiene promotions), Water and Sanitation (making area ODF), PWD (Repair & Maintenance), Forest Department (Plantation Drive) etc., which contributes strengthening towards of hygiene & sanitation', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G1.5' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Implementation of IEC activities related to '' Swachh Bharat Abhiyan''', 'Advertisement in news-papers/electronic media, distribution of booklets/ pamphlets, posters/wall writing-promoting use of toilets, hand washing, safe drinking water and tree plantation, etc.', TRUE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G1.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Local community actively participates during Swachhata Pakhwara(Fortnight)', 'Local community is actively involved in administration of ''''Swachhata Pledge'''' and distribution of caps/T-shirts, badge with cleanliness message and logos of ''''Swachh Bharat Abhiyan'''' and ''''Kayakalp''''.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G1.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Community awareness by organising cultural programme and competitions', 'Like rally/marathon/ Swachhata walk/human chain, street plays, essay/ poem/slogan/painting competition, etc.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G1.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surrounding area is declared Open Defecation Free', 'Check block/Ward is declared ODF', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G2.1' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The Facility has undertaken initiative for community mobilization in the surrounding for improving Swachhata', 'Check for any mobilization activities in line with VISHWAS campaign initiated by MoHFW, involving VHSNC/MAS', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G2.2' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The Facility endeavours to attract financial support from other organisations', 'Look for evidence that the health facility has been supported by other organisations such as Industry, Business houses, NGOs, Rotary & Lions clubs, market associations, welfare associations etc. for improving the cleanliness in the surroundings', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G2.3' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The facility engages the local Community for reducing household pollutions in the vicinity', 'Look for evidence that the facility has engaged in reducing household level pollution in near vicinity of the health facility – Presence of community bins for segregated collection of general (biodegradable & recyclable), Compost-pits, Roll-out of PM Ujjwala Scheme in nearby slum, etc.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G2.5' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Facility endeavours to attract financial support from local support', 'Look for evidence that local MPs/MLAs/Municipal Councillors/Panchayat Members/Zila Parisad/ individual donations have supported health facility in its cleanliness efforts.', FALSE, TRUE, FALSE, TRUE, (select max(measurable_element.id) from measurable_element
  join standard on measurable_element.standard_id = standard.id
  join area_of_concern a on standard.area_of_concern_id = a.id
  join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
  join checklist c2 on c3.checklist_id = c2.id
  join assessment_tool_checklist c4 on c2.id = c4.checklist_id
  join assessment_tool a2 on c4.assessment_tool_id = a2.id
  join state on a2.state_id = state.id
where measurable_element.reference = 'G2.4' and a2.name = 'Kayakalp (Karnataka)'), (select max(id) from checklist where name = 'Kayakalp'));
