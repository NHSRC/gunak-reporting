insert into department (name) values ('M-OT (LaQshya)') on conflict do nothing;
insert into checklist (name, department_id) values ('M-OT (LaQshya)', (select id from department where name = 'M-OT (LaQshya)'));
insert into assessment_tool_checklist (assessment_tool_id, checklist_id) values ((select assessment_tool.id from assessment_tool join assessment_tool_mode a on assessment_tool.assessment_tool_mode_id = a.id where a.name = 'NQAS' and assessment_tool.name = 'District Hospital (DH)'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into measurable_element (name, reference, standard_id) values ('Services are available for the time period as mandated', 'A1.14', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'A1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility provides Accident & Emergency Services', 'A1.16', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'A1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility provides Intensive care Services', 'A1.17', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'A1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility provides Reproductive health Services', 'A2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'A2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility provides Maternal health Services', 'A2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'A2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('The facility provides New-born health Services', 'A2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'A2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility Provides Laboratory Services', 'A3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'A3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('The facility has uniform and user-friendly signage system', 'B1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility displays the services and entitlements available in its departments', 'B1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Access to facility is provided without any physical barrier & and friendly to people with disabilities', 'B2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Adequate visual privacy is provided at every point of care', 'B3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Confidentiality of patients records and clinical information is maintained', 'B3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility ensures the behavior of staff is dignified and respectful, while delivering the services', 'B3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility ensures privacy and confidentiality to every patient, especially of those conditions having social stigma, and also safeguards vulnerable groups', 'B3.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('There is established procedures for taking informed consent before treatment and procedures', 'B4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('The facility provides cashless services to pregnant women, mothers and neonates as per prevalent government schemes', 'B5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'B5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Departments have adequate space as per patient or work load', 'C1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Departments have layout and demarcated areas as per functions', 'C1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;









insert into measurable_element (name, reference, standard_id) values ('The facility has adequate circulation area and open spaces according to need and local law', 'C1.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has infrastructure for intramural and extramural communication', 'C1.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Service counters are available as per patient load', 'C1.6', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility and departments are planned to ensure structure follows the function/processes (Structure commensurate with the function of the hospital)', 'C1.7', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility ensures the seismic safety of the infrastructure', 'C2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility ensures safety of electrical establishment', 'C2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Physical condition of buildings are safe for providing patient care', 'C2.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('The facility has plan for prevention of fire', 'C3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has adequate fire fighting Equipment', 'C3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has a system of periodic training of staff and conducts mock drills regularly for fire and other disaster situation', 'C3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility has adequate specialist doctors as per service provision', 'C4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility has adequate nursing staff as per service provision and work load', 'C4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has adequate technicians/paramedics as per requirement', 'C4.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has adequate support / general staff', 'C4.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The departments have availability of adequate drugs at point of use', 'C5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;






insert into measurable_element (name, reference, standard_id) values ('The departments have adequate consumables at point of use', 'C5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Emergency drug trays are maintained at every point of care, where ever it may be needed', 'C5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Availability of equipment & instruments for examination & monitoring of patients', 'C6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of equipment & instruments for treatment procedures, being undertaken in the facility', 'C6.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('Availability of equipment & instruments for diagnostic procedures being undertaken in the facility', 'C6.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of equipment and instruments for resuscitation of patients and for providing intensive and critical care to patients', 'C6.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Availability of Equipment for Storage', 'C6.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Availability of functional equipment and instruments for support services', 'C6.6', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Departments have patient furniture and fixtures as per load and service provision', 'C6.7', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Criteria for Competence assessment are defined for clinical and Para clinical staff', 'C7.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Competence assessment of Clinical and Para clinical staff is done on predefined criteria at least once in a year', 'C7.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The Staff is provided training as per defined core competencies and training plan', 'C7.9 ', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'C7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;





insert into measurable_element (name, reference, standard_id) values ('The facility has established system for maintenance of critical Equipment', 'D1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('The facility has established procedure for internal and external calibration of measuring Equipment', 'D1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Operating and maintenance instructions are available with the users of equipment', 'D1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('There is established procedure for forecasting and indenting drugs and consumables', 'D2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility ensures proper storage of drugs and consumables', 'D2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility ensures management of expiry and near expiry drugs', 'D2.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has established procedure for inventory management techniques', 'D2.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('There is a procedure for periodically replenishing the drugs in patient care areas', 'D2.6', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is process for storage of vaccines and other drugs, requiring controlled temperature', 'D2.7', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is a procedure for secure storage of narcotic and psychotropic drugs', 'D2.8', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility provides adequate illumination level at patient care areas', 'D3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has provision of restriction of visitors in patient areas', 'D3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility ensures safe and comfortable environment for patients and service providers', 'D3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has security system in place at patient care areas', 'D3.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Exterior of the facility building is maintained appropriately', 'D4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Patient care areas are clean and hygienic', 'D4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Hospital infrastructure is adequately maintained', 'D4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('The facility has policy of removal of condemned junk material', 'D4.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has established procedures for pest, rodent and animal control', 'D4.6', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility has adequate arrangement storage and supply for portable water in all functional areas', 'D5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility ensures adequate power backup in all patient care areas as per load', 'D5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Critical areas of the facility ensures availability of oxygen, medical gases and vacuum supply', 'D5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility has adequate sets of linen', 'D7.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility has established procedures for changing of linen in patient care areas', 'D7.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility has standard procedures for handling , collection, transportation and washing of linen', 'D7.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility ensures the adherence to dress code as mandated by its administration / the health department', 'D11.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'D11' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('There is established procedure for initial assessment of patients', 'E2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility has established procedure for continuity of care during interdepartmental transfer', 'E3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Procedure for identification of patients is established at the facility', 'E4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is established procedure of patient hand over, whenever staff duty change happens', 'E4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is procedure for periodic monitoring of patients', 'E4.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility identifies vulnerable patients and ensure their safe care', 'E5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility identifies high risk patients and ensure their care, as per their need', 'E5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility ensured that drugs are prescribed in generic name only', 'E6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is procedure of rational use of drugs', 'E6.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('There is process for identifying and cautious administration of high alert drugs (to check)', 'E7.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Medication orders are written legibly and adequately', 'E7.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('There is a procedure to check drug before administration/ dispensing', 'E7.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('There is a system to ensure right medicine is given to right patient', 'E7.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('All the assessments, re-assessment and investigations are recorded and updated', 'E8.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E8' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('All treatment plan prescription/orders are recorded in the patient records.', 'E8.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E8' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Procedures performed are written on patients records', 'E8.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E8' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Adequate form and formats are available at point of use', 'E8.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E8' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Register/records are maintained as per guidelines', 'E8.6', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E8' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility ensures safe and adequate storage and retrieval of medical records', 'E8.7', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E8' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility has disaster management plan in place', 'E11.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E11' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('There are established procedures for Pre-testing Activities', 'E12.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E12' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There are established procedures for Post-testing Activities', 'E12.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E12' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('There is established procedure for issuing blood', 'E13.8', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E13' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is established procedure for transfusion of blood', 'E13.9', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E13' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('There is a established procedure for monitoring and reporting Transfusion complication', 'E13.10', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E13' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility has established procedures for Pre Anaesthetic Check up', 'E14.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E14' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility has established procedures for monitoring during anaesthesia', 'E14.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E14' and a2.name = 'District Hospital (DH)')) on conflict do nothing;








insert into measurable_element (name, reference, standard_id) values ('Facility has established procedures for Post Anesthesia care', 'E14.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E14' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility has established procedures OT Scheduling', 'E15.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E15' and a2.name = 'District Hospital (DH)')) on conflict do nothing;




insert into measurable_element (name, reference, standard_id) values ('Facility has established procedures for Preoperative care', 'E15.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E15' and a2.name = 'District Hospital (DH)')) on conflict do nothing;







insert into measurable_element (name, reference, standard_id) values ('Facility has established procedures for Surgical Safety', 'E15.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E15' and a2.name = 'District Hospital (DH)')) on conflict do nothing;




insert into measurable_element (name, reference, standard_id) values ('Facility has established procedures for Post operative care', 'E15.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E15' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('The facility has standard procedures for handling the death in the hospital', 'E16.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E16' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Facility staff adheres to standard procedures for routine care of newborn immediately after birth', 'E18.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E18' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('There is an established procedure for assisted and C-section deliveries per scope of services.', 'E18.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E18' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('Facility staff adheres to standard protocols for identification and management of Pre Eclampsia / Ecalmpsia', 'E18.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E18' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility staff adheres to standard protocols for identification and management of PPH.', 'E18.6', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E18' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility staff adheres to standard protocols for Management of HIV in Pregnant Woman & Newborn', 'E18.7', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E18' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('There is Established protocol for newborn resuscitation is followed at the facility.', 'E18.10', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E18' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility staff adheres to protocol for assessment of condition of mother and baby and providing adequate postpartum care', 'E19.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E19' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility staff adheres to protocol for counselling on danger signs, post-partum family planning and exclusive breast feeding', 'E19.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E19' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('The facility ensure adequate stay of mother and new born in a safe environoment as per standard protocols', 'E19.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'E19' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Facility has provision for Passive and active culture surveillance of critical & high risk areas', 'F1.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility measures hospital associated infection rates', 'F1.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('There is Provision of Periodic Medical Check-ups and immunization of staff', 'F1.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility has established procedures for regular monitoring of infection control practices', 'F1.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility has defined and established antibiotic policy', 'F1.6', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Hand washing facilities are provided at point of use', 'F2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;




insert into measurable_element (name, reference, standard_id) values ('Staff is trained and adhere to standard hand washing practices', 'F2.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('Facility ensures standard practices and materials for antisepsis', 'F2.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('Facility ensures adequate personal protection equipment''s as per requirements', 'F3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;




insert into measurable_element (name, reference, standard_id) values ('Staff is adhere to standard personal protection practices', 'F3.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('Facility ensures standard practices and materials for decontamination and clean in of instruments and procedures areas', 'F4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('Facility ensures standard practices and materials for disinfection and sterilization of instruments and equipment''s', 'F4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;











insert into measurable_element (name, reference, standard_id) values ('Functional area of the department are arranged to ensure infection control practices', 'F5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility ensures availability of standard materials for cleaning and disinfection of patient care areas', 'F5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility ensures standard practices followed for cleaning and disinfection of patient care areas', 'F5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;







insert into measurable_element (name, reference, standard_id) values ('Facility ensures air quality of high risk area', 'F5.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Facility Ensures segregation of Bio Medical Waste as per guidelines', 'F6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('Facility ensures management of sharps as per guidelines', 'F6.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Facility ensures transportation and disposal of waste as per guidelines', 'F6.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'F6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;



insert into measurable_element (name, reference, standard_id) values ('The facility has a quality team in place', 'G1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility has established internal quality assurance program at relevant departments', 'G3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility has established system for use of check lists in different departments and services', 'G3.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Departmental standard operating procedures are available', 'G4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Standard Operating Procedures adequately describes process and procedures', 'G4.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;







insert into measurable_element (name, reference, standard_id) values ('Staff is trained and aware of the standard procedures written in SOPs', 'G4.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Work instructions are displayed at Point of use', 'G4.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility maps its critical processes', 'G5.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility identifies non value adding activities / waste / redundant activities', 'G5.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility takes corrective action to improve the processes', 'G5.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G5' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility conducts periodic internal assessment', 'G6.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('The facility ensures non compliances are enumerated and recorded adequately', 'G6.3', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Action plan is made on the gaps found in the assessment / audit process', 'G6.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Planned actions are implemented through Quality improvement cycle (PDCA)', 'G6.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G6' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility has de defined quality objectives to achieve mission and quality policy', 'G7.4', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Mission, Values, Quality policy and objectives are effectively communicated to staff and users of services', 'G7.5', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility periodically reviews the progress of strategic plan towards mission, policy and objectives', 'G7.7', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G7' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Facility uses method for quality improvement in services', 'G8.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G8' and a2.name = 'District Hospital (DH)')) on conflict do nothing;
insert into measurable_element (name, reference, standard_id) values ('Facility uses tools for quality improvement in services', 'G8.2', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G8' and a2.name = 'District Hospital (DH)')) on conflict do nothing;

insert into measurable_element (name, reference, standard_id) values ('Periodic assessment for Medication and Patient care safety risks is done as per defined criteria.', 'G10.6', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'G10' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Facility measures productivity Indicators on monthly basis', 'H1.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'H1' and a2.name = 'District Hospital (DH)')) on conflict do nothing;


insert into measurable_element (name, reference, standard_id) values ('Facility measures efficiency Indicators on monthly basis', 'H2.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'H2' and a2.name = 'District Hospital (DH)')) on conflict do nothing;




insert into measurable_element (name, reference, standard_id) values ('Facility measures Clinical Care & Safety Indicators on monthly basis', 'H3.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'H3' and a2.name = 'District Hospital (DH)')) on conflict do nothing;





insert into measurable_element (name, reference, standard_id) values ('Facility measures Service Quality Indicators on monthly basis', 'H4.1', (select max(standard.id) from standard
join area_of_concern a on standard.area_of_concern_id = a.id
join checklist_area_of_concern c3 on a.id = c3.area_of_concern_id
join checklist c2 on c3.checklist_id = c2.id
join assessment_tool_checklist c4 on c2.id = c4.checklist_id
join assessment_tool a2 on c4.assessment_tool_id = a2.id
where standard.reference = 'H4' and a2.name = 'District Hospital (DH)')) on conflict do nothing;













insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT Services are available 24X7', 'Check with OT records that OT services were functional in 24X7 and surgeries are being conducted in night hours', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'A1.14'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Emergency OT services as and when required', '', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'A1.16'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Maternity HDU/ICU services in the facility', '', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'A1.17'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Post partum sterilization services', 'tubal ligation', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'A2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Elective C-section services', 'Check services are available and are being utilized', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'A2.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Emergency C-section services', 'Check services are available and are being utilized', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'A2.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Management of MTP', 'Surgical management', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'A2.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of New born resuscitation& essential new born care', 'Dedicated Functional New born Care services in Operation theatre', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'A2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of point of care diagnostic test', 'Glucometer, RDK , Blood grouping', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'A3.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of departmental signage''s', 'Numbering, main department and internal sectional signage, Restricted area signage displayed. Directional signages are given from the entry of the facility', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'B1.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Information regarding services are displayed', 'Display doctor/ Nurse on duty and updated OT schedule displayed', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'B1.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT is easily accessible', 'Availability of Wheel chair or stretcher for easy Access. Door is wide enough for passage of trolley and staff.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'B2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patients are properly draped/covered before and after procedure', 'Look patients are covered while transferred from ward to OT and vice-versa.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'B3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Visual Privacy is maintained between two OT Tables', 'Preferably only one OT table should be placed in theatre, if it is not possible because of high case load adequate visual privacy should be provided through screens of multiple patients are present in same OT', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'B3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patient Records are kept at secure place beyond access to general staff/visitors', 'In drawers/Amirah; preferably with lock facility.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'B3.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Behaviour of OT staff is dignified and respectful', 'Check that OT staff is not providing care in undignified manner such as yelling, scolding , shouting, blaming and using abusive language', TRUE, FALSE, TRUE, FALSE, (select max(id) from measurable_element where reference = 'B3.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Pregnant women is not left unattended or ignored during care in the OT', 'Check that care providers are attentive and empathetic to the pregnant women at no point of care they are left alone.', TRUE, FALSE, TRUE, FALSE, (select max(id) from measurable_element where reference = 'B3.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Consent is taken for surgical procedures', 'written consent with details of the procedure with potentials risks and complication. Should be signed by patient/next of kin and one witness', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'B4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Separate consent is taken for Anesthesia procedure', 'written consent with details of the anaesthesia with potentials risks and complication. Should be signed by patient/next of kin and one witness', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'B4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('All surgical procedure are free of cost for JSSK beneficiaries', 'free drugs, consumables , blood, referral etc.', FALSE, TRUE, TRUE, FALSE, (select max(id) from measurable_element where reference = 'B5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adequate space for accommodating surgical load', 'OT around 40 Square meter. Two OT tables are not kept in one OT', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Demarcated Protective Zone', 'Reception, waiting area, stretcher/Trolley bay, Pre and post operative rooms,', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Demarcated Clean Zone', 'Doctor''s and Nurse''s room, Anesthesia room, equipment room, emergency exit.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Demarcated sterile Zone', 'Operating room, Scrub station, Anesthesia station,', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Demarcated disposal Zone', 'Disposal corridor, janitor closet', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Changing Rooms', 'Separate for male and females', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of demarcated Pre & post Operative Room /area', 'Can be in a single room with a partition.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of earmarked area for new born Corner', 'Functional warmer, resuscitation apparatus, suction/mucous extractor, O2 cylinder, weighing scale and sterile gloves.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Scrub Area', 'Height around 96 cm with elbow taps/sensors, both hot and cold water available. Sink is deep and wide enough to avoid spoiling. Scrub area should not be inside the OT room.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of TSSU /CSSD', 'Dedicated areas with provision of Washing, Packing , Autoclaving the instruments and linen', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of store', '', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Corridors are wide enough for movement of trolleys', '7 to 10 feet.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional telephone and Intercom Services', 'Intercom should connects Operation theatre to key areas like ICU, Blood Bank, SNCU, Lab, Accident and emergency, wards, Administration', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT tables are available as per load', 'Hydraulic OT Tables
As per case load at least two', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Unidirectional flow of goods and services', 'Services are designed in a way, that there is no criss cross in moment of sterile & no sterile supplies & equipment etc.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C1.7'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Non structural components are properly secured', 'Check for fixtures and furniture like cupboards, cabinets, and heavy equipment , hanging objects are properly fastened and secured', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT does not have temporary connections and loosely hanging wires', 'No extension cord or multi-plugs', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of three phase electricity supply', 'Check electricity bill or Power Distribution Board. Meter have three wires coming out (with one neutral).', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Walls and floor of the OT covered with joint less tiles', 'made of anti-skid & Epoxy flooring', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C2.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Windows/ ventilators if any in the OT are intact and sealed', 'No broken glass, gap or cracks in window/ventilator.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C2.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT has sufficient fire exit to permit safe escape to its occupant at time of fire', 'Check the fire exits are clearly visible and routes to reach exit are clearly marked', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Labour room has installed fire Extinguishers & expiry is displayed on each fire extinguisher', 'Class A , Class B, C type or ABC type. Check the expiry date for fire extinguishers are displayed on each extinguisher as well as due date for next refilling is clearly mentioned', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C3.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check for staff competencies for operating fire extinguisher and what to do in case of fire', 'staff should be able to demonstrate how to open the extinguisher and operate it. PASS (Pull the pin, Aim at the base of fire, Sway from side to side)', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C3.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Obs. & Gynae Surgeon', '100 beds 2, 200 beds-3, 3oo beds-4, 400 beds-5 and 500 beds-6', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of anaesthetist', 'At least One', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Nursing staff', 'As per patient load , at least two', TRUE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C4.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of OT technician', 'One per shift.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C4.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of OT attendant/assistant & TSSU assistant', '1 each', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C4.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of medical gases', 'Availability of Oxygen, nitrogen Cylinders / Piped Gas supply.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of drugs for local anaesthesia', 'Procaine, lignocaine, bupivacaine, Xylocaine jelly', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of drugs for general anaesthesia', 'Inhaled agents-Halothane, nitrous oxide. Injectable: Barbiturates (Theopental, Thiamylal, methohexital, Benzodiazepines (diazepam, Lorazepam, Midazolam), Ketamine, Etomidate, Propofol . Neostigmine, Naloxone, Flumazenil, Sugammadex-as per EDL/State guidelines.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of opioid analgesics.', 'Fentanyl, Sufentanil, Morphine, Buprenorphine, Levorphanol, Methadone-As per EDL/State guidelines.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of muscle relaxants drugs', 'Succinylcholine, Vecuronium, Mivacurlum, Tubocarine as per EDL/state guidelines', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of emergency drugs', 'Inj Magsulf 50%, Inj Calcium gluconate 10%, Inj Dexamethasone, inj Hydrocortisone, Succinate, Inj diazepam, inj Pheneramine maleate, inj Corboprost, Inj Fortwin, Inj Phenergen, Betameathazon, Inj Hydrazaline, Nefidepin, Methyldopa,ceftriaxone', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of other drugs', 'Antibiotics, Analgesics, Uterotonic drugs, IV fluids and anithypertensive drugs as per EDL/ state guidelines', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of dressings Material', 'Adequate quantity of sterile pads, gauze, bandages , Antiseptic Solution.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of syringes and IV Sets', 'In adequate quantity as per load.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of consumables for new born care', 'Cord Clamp, mucous sucker, airway, NG Tube, Suction catheter, IV cannula, paed IV set and Bag and Mask (0 & 1 no.)', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Emergency drug tray is maintained in OT in pre and post operative room', 'Every tray is labelled with name and number of drugs and consumables along with their date of expiry.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional Equipment &Instruments for examination & Monitoring', 'BP apparatus, Thermometer, Pulse Oxy meter, Multiparameter , PV Set, torch & wall clock.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional instruments for Gynae and obstetrics', 'LSCS Set, Cervical Biopsy Set, Proctoscopy Set, Hysterectomy set, D&C Set', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional equipment/ Instruments for New Born Care', 'Radiant warmer, Baby tray with Two pre warmed towels/sheets for wrapping the baby, mucus extractor, bag and mask (0 &1 no.), sterilized thread for cord/cord clamp, nasogastric tube', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional General surgery equipments', 'Diathermy (Unit and Bi Polar), Cautery', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Operation Table with Trendelenburg type', 'OT Table hydraulic major and OT table hydraulic minor', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Point of care diagnostic instruments', 'Glucometer, HIV rapid diagnostic kit, USG, ABG machine', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional Instruments Resuscitation for new born & Mother', 'Resuscitation bag (Adult & paediaterics) Ambu bag, Oxygen, Suction machine , laryngoscope scope, Defibrillator (Paediatric and adult) , LMA, ET Tube', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional anaesthesia equipment', 'Boyles apparatus, Bains Circuit or Sodalime absorbent in close circuit ,AGSS (Anesthesia gas scavenging system)', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of equipment for storage of drugs & Instruments', 'Refrigerator, Crash cart/Drug trolley, instrument trolley, dressing trolley, Instrument cabinet and racks for storage of sterile items', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of equipments for cleaning', 'Three Bucket system for mopping, Separate mops for patient care area and circulation area duster, waste trolley, Deck brush', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of equipment for TSSU', 'Autoclave Horizontal & Vertical, Steriliser Big & Small', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional OT light', 'Shadow less Major & Minor, Ceiling and Stand Model, Focus Lamp', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.7'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Fixtures', 'Tray for monitors, Electrical panel for anaesthesia machine with minimum 6 electrical sockets ( 2= 15 amp power point), panel with outlet for Oxygen and vacuum, X ray view box.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'C6.7'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check parameters for assessing skills and proficiency of clinical staff has been defined', 'Check objective checklist has been prepared for assessing competence of doctors, nurses and paramedical staff based on job description defined for each cadre of staff.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C7.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check for competence assessment is done at least once in a year', 'Check for records of competence assessment including filled checklist, scoring and grading . Verify with staff for actual competence assessment done', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C7.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Advance Life support', 'ALS and CPR by recognized agency to all category of staff.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C7.9 '), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Training on OT Management', 'OT scheduling, maintenance, Fumigation, Surveillance, equipment-operation and maintenance, infection control, surgical procedures and emergency protocols.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C7.9 '), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Biomedical Waste Management& Infection control and hand hygiene ,Patient safety', 'To all category of staff. At the time of induction and once in a year.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C7.9 '), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Training on Quality Management', 'Assessment, action planning, PDCA, 5S & use of checklist', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'C7.9 '), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('All equipment are covered under AMC including preventive maintenance', 'look for MOU and visit records of the empaneled agency.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D1.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is system of timely corrective break down maintenance of the equipment', 'Back up for critical equipment. Label Defective/Out of order equipment and stored appropriately until it has been repaired', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D1.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Staff is skilled for cleaning, inspection & trouble shooting in case equipment malfunction', 'E.g. when to change water of batteries, when to oil, change fuse, replace filters etc.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D1.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('All the measuring equipment/ instrument are calibrated', 'Boyels apparatus, cautery, BP apparatus, autoclave etc. There is system to label/ code the equipment to indicate status of calibration/ verification when recalibration is due', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D1.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Up to date instructions for operation and maintenance of equipment are readily available with staff.', 'If operator doesn''t understand English, then instructions should be in local language.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is established system of timely indenting of consumables and drugs', 'Stock level are daily updated
Requisition are timely placed', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Drugs are stored in containers/tray/crash cart are labelled', 'Away from direct sunlight and temperature is maintained as per instructions of manufacturer.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Empty and filled cylinders are labelled & kept separately', 'Each cylinder is provided with a checklist & flow meter and key for opening the cylinder', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Expiry dates'' are maintained at emergency drug tray', 'Records for expiry and near expiry drugs are maintained for drug stored at department. No expirred drugs found', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D2.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is practice of calculating and maintaining buffer stock', 'At least one week of minimum buffer stock is maintained all the time in the labour room. Minimum stock and reorder level are calculated based on consumption in a week accordingly', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D2.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department maintained stock and expenditure register of drugs and consumables', 'Check that records are regularly updated', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D2.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is procedure for replenishing drug tray /crash cart', 'There is no stock out of drugs', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D2.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Temperature of refrigerators are kept as per storage requirement and records are maintained', 'Check for temperature charts are maintained and updated periodically', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D2.7'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Narcotic ,psychotropic & Anaesthetic agents are kept in lock and key', 'Under direct supervision of anaesthetist', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D2.8'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));






insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department is painted/whitewashed in uniform colour &plastered & painted', 'Painted in soothing colours Not bright colours.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Floors, walls, roof, roof tops, sinks patient care and circulation areas are Clean', 'All area are clean with no dirt,grease,littering and cobwebs', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surface of furniture and fixtures are clean', 'Look for dirt above OT light, behind stationary equipment etc.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check for there is no seepage , Cracks, chipping of plaster', 'check corners, false ceiling.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D4.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT Table are intact and without rust', 'Mattresses are intact and clean', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D4.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No unnecessary items in sterile zone', 'No slabs, almirah, storing unnecessary items like drums, equipment, Instruments etc Items not required for immediate procedures are kept out of sterile zone', FALSE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D4.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No condemned/Junk material in the OT', 'No partial compliance.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D4.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No stray animal/rodent/birds', 'Check for no stray animal in and around OT. Also no lizard, cockroach, mosquito, flies,rats etc.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D4.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of 24x7 running and potable water', 'Availability of Hot water supply', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of power back up in OT', '2 tier backup with UPS', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of UPS & Emergency light', 'Check their functionality.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Centralized /local piped Oxygen, nitrogen and vacuum supply', 'Cylinders are provided with trolleys to prevent fall and injuries.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT has facility to provide sufficient and clean linen for surgical patient', 'Drape, draw sheet, cut sheet and gown', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D7.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT has facility to provide linen for staff', 'OT dress, gown. Separate OT dress for OT staff.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D7.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Linen is changed after each procedure', 'Bed sheets, draw sheets and Macintosh.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D7.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is system to check the cleanliness and Quantity of the linen received from laundry', 'OT tech/Nurse checks Number of linen, cleanliness, whether it is torned or stained', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'D7.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Doctor, nursing staff and support staff adhere to their respective dress code', 'Check staff is wearing dress as per their dress code.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'D11.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is procedure for Pre Operative assessment', 'Physical examination, results of lab investigation, X-Rays, diagnosis and proposed surgery', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is procedure of handing over from OT to Maternity Ward, HDU and SNCU', 'Transfer Register is maintained.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is a process for ensuring the identification before any clinical procedure', 'Patient id band/ verbal confirmation etc. At least two identifiers are used.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patient hand over is given during the change in the shift', 'Handover register is maintained', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E4.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patient Vitals are monitored and recorded periodically', 'Check for use of cardiac monitor/multi parameter', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E4.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Vulnerable patients are identified and measures are taken to protect them from any harm', 'Check the measure taken to prevent new born theft, sweeping of baby or fall', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('High risk patients are identified and treatment given on priority', 'HIV, Infectious cases', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check for Case Sheet if drugs are prescribed under generic name only', 'Check at least 5 case sheets selected randomly', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E6.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check staff is aware of the drug regime and doses as per STG', 'Check if drugs are prescribed as per STG in at least 5 case sheets selected randomly', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check Case Sheet that drugs are prescribed as per STG', 'Check if drugs are prescribed as per STG in at least 5 case sheets selected randomly', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('High alert drugs available in department are identified', 'Electrolytes like Potassium chloride, Opioids, Neuro muscular blocking agent, Anti thrombolytic agent, insulin, warfarin, Heparin, Adrenergic agonist etc. as applicable', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E7.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Maximum dose of high alert drugs are defined and communicated & there is process to ensure that right doses of high alert drugs are only given', 'Value for maximum doses as per age, weight and diagnosis are available with nursing station and doctor. A system of independent double check before administration, Error prone medical abbreviations are avoided', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E7.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Every Medical advice and procedure is accompanied with date , time and signature', 'Look for pre-op, Procedure and Post op notes and instructions.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E7.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check for the writing, It comprehendible by the clinical staff', 'Ask OT/Ward staff to read the orders written by doctor.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E7.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Drugs are checked for expiry and other inconsistency before administration', 'Check for any open single dose vial with left over content intended to be used later on. In multi dose vial needle is not left in the septum', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E7.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Any adverse drug reaction is recorded and reported', 'Check for ADR forms and records.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E7.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check Nursing staff is aware 7 Rs of Medication and follows them', 'Administration of medicines done after ensuring right patient, right drugs , right route, right time, Right dose , Right Reason and Right Documentation', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E7.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Records of Monitoring/ Assessments are maintained', 'PAC, Intraoperative monitoring', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E8.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Treatment plan, first orders are written on Case Sheet', 'Treatment prescribed in nursing records', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E8.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Operative Notes are Recorded', 'Name of person in attendance during procedure, Pre and post operative diagnosis, Procedures carried out, length of procedures, estimated blood loss, Fluid administered, specimen removed, complications etc.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E8.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Anesthesia Notes are Recorded', 'Name of person in attendance during procedure, Pre and post operative diagnosis, Procedures carried out, length of procedures, estimated blood loss, Fluid administered, specimen removed, complications etc.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E8.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Standard Formats are available', 'Consent forms, Anesthesia form, surgical safety check list', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E8.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Registers and records are maintained as per guidelines', 'OT Register, Schedule, Infection control records, autoclaving records etc', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E8.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('All register/records are identified and numbered', 'Register are labelled and numbered.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E8.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Safe keeping of patient records', 'Records are kept in place without seepage, moisture, termite, pests.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E8.7'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Staff is aware of disaster plan & their role and responsibilities of staff is defined', 'Ask role of staff in case of disaster.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E11.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Container is labelled properly after the sample collection', 'Including Specimen for HPE & biopsy. Name, Age, Sex, date, UHID', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E12.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('OT is provided with the critical value of different test', 'Critical values are displayed.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E12.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of blood units in case of emergency with out replacement', 'The blood is ordered for the patient according to the MSBOS (Maximum Surgical Blood Order Schedule)', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E13.8'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Consent is taken before transfusion', 'Duly signed by patient/next of kin', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E13.9'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patient''s identification is verified before transfusion', 'At least two identifiers are used.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E13.9'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Protocol of blood transfusion is monitored & regulated', 'blood is kept on optimum temperature before transfusion. Blood transfusion is monitored and regulated by qualified person', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E13.9'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Any major or minor transfusion reaction is recorded and reported to responsible person', 'After transfusion, Reaction form is returned back to blood bank, even when there is no reaction.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E13.10'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is procedure to ensure that PAC has been done before surgery', 'There is procedure to review findings of PAC', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Minimum PAC for emergency cases', 'in emergency & life saving conditions, surgery may be started with General physical examination of the patient & sending the sample for lab. Examination', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Anesthesia plan is documented before starting surgery', 'Type of anaesthesia planned-local/general/spinal/epidural. Time is mentioned on all entries of anaesthesia monitoring sheet', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Anesthesia Safety Checklist is used for safe administration of anaesthesia', 'Check use of WHO Anesthesia Safety Checklist', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Anesthesia equipment are checked before induction', 'Sufficient reserve of gases. Vaporizers are connected, Laryngoscope, ET tube and suction App are ready and clean', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Food intake status of Patient is checked', 'Time of last food intake is mentioned', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patients vitals are recorded during anaesthesia', 'Heart rate , cardiac rate , BP, O2 Saturation, temperature, Respiration rate.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Airway security is ensured', 'Breathing system of anaesthesia equipment that delivers gas to the patient is securely and correctly assembled and breathing circuits are clean', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Potency and level of anaesthesia is monitored', 'Recorded in the Anesthesia Record Form.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Anesthesia note is recorded', 'Check for the adequacy, signed, complete, and post anaesthesia instructions.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Any adverse Anesthesia Event is recorded and reported', 'Reduced level of consciousness, reparatory depression, malignant hyperpyrexia, bone marrow depression, life threatening pressure effect, anaphylaxis', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Post anaesthesia status is monitored and documented', 'Check for anaesthetic notes & post operating instructions in post operative room & area', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E14.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('List of Elective Surgeries for the day is prepared and displayed outside OT.', 'Surgery list is prepared in consonance with availability of the OT hours and patients requirement.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surgery list is complete in all respect', 'Day, date and time of surgeries.
Name, Age, Gender of patients.
Clear description of the procedure ( name of procedure which side, )
Name of the surgeon & anaesthetist.
Major or minor case.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E15.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Operation list is sent to OT well in advance', 'By 12:00 hours, a day before the surgery.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surgery list is informed to surgeon and ward sister.', 'Verify the surgery register/email', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('The operation list does not exceed the time allocated to it.', 'This does not refer to the time during an operation of an individual patient', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Patient evaluation before surgery is done and recorded', 'Vitals , Patients fasting status etc.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Antibiotic Prophylaxis and Tetanus given as indicated', 'As per instructions of surgeon/anaesthetist.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surgeries planned under local anaesthesia/Regional Block sensitivity test is done', 'lidocaine sensitivity test', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is a process to prevent wrong site and wrong surgery', 'Surgical Site is marked before entering into OT', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No shaving of the surgical site', 'Only clipping on the day of surgery in OT is done', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Skin preparation before surgery is done.', 'Bathing with soap and water prior to surgery in ward.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Skin preparation is done as per protocol', 'Prepare the skin with antiseptic solution (Chlorhexidine gluconate and iodine), starting in the centre and moving out to the periphery. This area should be large enough to include the entire incision and an adjacent working area.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Draping is done as per protocol', 'Scrub, gown and glove before covering the patient with sterile drapes. Leave uncovered only the operative field and those areas necessary for the maintenance of anaesthesia.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E15.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surgical Safety Check List is used for each surgery', 'Check for Surgical safety check list has been used for surgical procedures', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Sponge and Instrument Count Practice is implemented', 'Instrument, needles and sponges are counted before beginning of case, before final closure and on completing of procedure & documented', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adequate Haemostasis is secured during surgery', 'Check for functional Cautery, use of artery forceps and suture ligation techniques', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Appropriate suture material is used for surgery as per requirement', 'For closing abdominal wall or ligating blood vessel use non-absorbable sutures (braided suture, nylon, polyester etc). absorbable sutures in urinary tract. Braided Biological sutures are not used for dirty wounds, Catgut is not used for closing fascial layers of abdominal wounds or where prolonged support is required', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check for suturing techniques are applied as per protocol', 'Braided sutures for interrupted stiches. Absorbable and non-absorbable monofilament sutures for continuous stiches.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Post operative monitoring is done before discharging to ward', 'Check for post operative operation room /area is used and patients are not immediately shifted to wards after surgery', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Post operative notes and orders are recorded', 'Post operative notes contains Vital signs, Pain control, Rate and type of IV fluids, Urine and Gastrointestinal fluid output, other medications and Laboratory investigations', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Information & instructions are given to nursing staff before shifting the patient to the ward from the OT', 'Instructions given by surgeon and anaesthetist.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E15.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Death note including efforts done for resuscitation is noted in patient record', 'Includes both maternal and neonatal death. Death summary is given to patient attendant quoting the immediate cause and underlying cause if possible', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E16.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Wipes the baby with a clean pre-warmed towel and wraps baby in second pre-warmed towel;', 'Check staff competence through demonstration or case observation', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E18.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Performs delayed cord clamping and cutting (1-3 min);', 'Check staff competence through demonstration or case observation', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E18.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Initiates breast-feeding soon after birth', 'Check staff competence through demonstration or case observation', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E18.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Records birth weight and gives injection vitamin K', 'Check staff competence through demonstration or case observation', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'E18.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Pre operative care and part preparation', 'Check for Haemoglobin level is estimated , and arrangement of Blood, Catheterization, Administration of Antacids Proper cleaning of perineal area before procedure with antisepsis', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Proper selection Anesthesia technique', 'Check Both General and Spinal Anesthesia Options are available. Ask for what are the criteria for using spinal and GA. Regional block and epidural anaesthesia used wherever required/indicated', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Intraoperative care', 'Check for measures taken to prevent Supine Hypotension (Use of pillow/Sandbag to tilt the uterus), Technique for Incision, Opening of Uterus, Delivery of Foetus and placenta, and closing of Uterine Incision', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Post operative care', 'Frequent monitoring of vitals, Strict IO charting, Flat bed without pillow for SA, NPO depending on type of anaesthesia and surgery.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Management of PIH/Eclampsia', 'Ask for how to secure airway and breathing, Loading and Maintenance dose of Magnesium sulphate , Administration of anti Hypertensive Drugs', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Postpartum Haemorrhage', 'IV fluids, parental oxytocin and antibiotics, manual removal of placenta, blood transfusion, B-lynch suturing, surgery', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Ruptured Uterus', 'Put patient in left lateral position, maintain Airway, breathing and circulation, IV Fluid, antibiotics, urgent laparotomy and hysterectomy.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Provides ART for seropositive mothers/ links with ART center', 'Check case records and Interview of staff', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.7'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Provides syrup Nevirapine to newborns of HIV seropositive mothers', 'Check case records and Interview of staff', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.7'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('New born Resuscitation', 'Ask Nursing staff to demonstrate Resuscitation Technique', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E18.10'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Prevention of Hypothermia', 'Skin contact, Kangaroo mother care, radiant warmer, warm clothes.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E19.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Initiation of Breastfeeding with in 1 Hour', 'Shall be initiated as early as possible and exclusive breast feeding', FALSE, TRUE, TRUE, FALSE, (select max(id) from measurable_element where reference = 'E19.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is established criteria for shifting new born to SNCU', 'only the new born requiring intensive care should be transferred to SNCU', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'E19.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surface and environment samples are taken for microbiological surveillance', 'Swab are taken from infection prone surfaces', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F1.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is procedure to report cases of Hospital acquired infection', 'Patients are observed for any sign and symptoms of HAI like fever, purulent discharge from surgical site .', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F1.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is procedure for immunization medical check-up of the staff', 'Hepatitis B, Tetanus Toxoid etc', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F1.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Regular monitoring of infection control practices', 'Hand washing and infection control audits done at periodic intervals', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F1.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check for Doctors are aware of Hospital Antibiotic Policy', 'Antibiotics prescribed are in line with Antibiotic Policy.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F1.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of hand washing with running Water Facility at Point of Use', 'Check for availability of wash basin near the point of use Ask to Open the tap. Ask Staff water supply is regular', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of antiseptic soap with soap dish/ liquid antiseptic with dispenser.', 'Check for availability/ Ask staff if the supply is adequate and uninterrupted.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Display of Hand washing Instruction at Point of Use', 'Prominently displayed above the hand washing facility , preferably in Local language', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of elbow operated taps', 'elbow /foot operated or sensor', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Hand washing sink is wide and deep enough to prevent splashing and retention of water', 'Tap should be approx. 96 cm from the ground.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adequate preparation for surgical scrub.', 'Check Finger nails of staff. They should not reach beyond finger tip. No nail polish or artificial nails. All jewelry on the fingers, wrists and arms should be removed. Adjust water to a comfortable temperature.', TRUE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F2.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adherence to Surgical scrub method', 'Procedure should be repeated several times so that the scrub lasts for 3 to 5
minutes. Hands must always be kept above elbow level. The hands and forearms should be dried with a sterile towel only.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Use of antibiotic soap/liquid', 'Check adequate quantity of antibiotic soap/Chlorhexidine solution is available and used.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Staff aware of when to hand wash', 'Ask for 5 moments of hand washing', FALSE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Antiseptic Solutions', 'Povidine iodine solution', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Proper cleaning of procedure site with antisepsis', 'like before giving IM/IV injection, drawing blood, putting Intravenous and urinary catheter', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check sterile field is maintained during surgery', 'Surgical site covered with sterile drapes, sterile instruments are kept within the sterile field.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F2.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Sterile gloves are available at OT and Critical areas', 'In adequate quantity, as per load', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Masks', 'In adequate quantity, as per load', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of Caps & gown/ Apron', 'In adequate quantity, as per load', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Personal protective kit for infectious patients', 'Disposable surgery kit for HIV patients', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of gum boots', 'In adequate quantity, as per load', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No reuse of disposable gloves, Masks, caps and aprons.', 'Check Autoclaving/sterilization records.', TRUE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F3.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Compliance to correct method of wearing and removing the gloves', 'Adherence to standard technique so that sterile area is not in contact with unsterile at any given point of time.', FALSE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F3.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Compliance to standard technique of wearing and removing of gown', 'Adherence to standard technique so that sterile area is not in contact with unsterile at any given point of time.', FALSE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F3.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Decontamination of operating & Procedure surfaces', 'Ask staff about how they decontaminate the procedure surface like OT Table, Stretcher/Trolleys etc.
(Wiping with .5% Chlorine solution)', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Cleaning of instruments after use', 'Ask staff how they clean the instruments like ambubag, suction canulae, Surgical Instruments
(Soaking in 0.5% Chlorine Solution, Wiping with 0.5% Chlorine Solution or 70% Alcohol as applicable )', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Proper handling of Soiled and infected linen', 'No sorting ,Rinsing or sluicing at Point of use/ sterile area', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Staff know how to make disinfectant solution', 'Carbolic acid, chlorine solution, glutaraldehyde or any other disinfectant used', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Equipment and instruments are sterilized after each use as per requirement', 'Autoclaving/Chemical Sterilization', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Chemical sterilization of instruments/equipment''s is done as per protocols', 'Ask staff about method, concentration and contact time required for chemical sterilization.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Glutaraldehyde solution is changed as per manufacturer instructions', 'Date of preparation & due date of change of solution is mentioned on container and staff is aware of When to change the chemical.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Autoclaved linen and Dressing are used for procedure', 'Gowns, draw sheets , Cotton, Gauze, bandages.etc.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Instruments are packed as per standard protocol', 'Check for Window of autoclave drum is closed, drum is not filled more than 3/4th, instruments are not hinged,', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Autoclaving of instruments is done as per protocols', 'Ask staff about temperature, pressure and time', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Regular validation of sterilization through chemical indicators', 'Indicators (temperature sensitive tape) that change colour after being exposed to certain temperature.', TRUE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Regular validation of sterilization through biological indictor', 'Bacillus Thermophilus spores are used, for measuring biological performance of autoclaving process. Performed monthly. Label the spore ampule, place in horizontal position, kept at the bottom or farthest part of autoclave', TRUE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Maintenance of records of sterilization', 'Autoclave Register have column: Date, Time started, Time finished, Temp, pressure, Autoclave tape, spore test,', TRUE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is a procedure to ensure the traceability of sterilized packs', 'Each Sterilized pack is marked with Date/Time of sterilization, contents, name/signature of the Technician,', TRUE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Sterility of autoclaved packs is maintained during storage', 'Sterile packs are kept in clean, dust free, moist free environment.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Facility layout ensures separation of routes for clean and dirty items', 'Facility layout ensures separation of general traffic from patient traffic. Separate disposal zone', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('CSSD/TSSU has demarcated separate area for receiving dirty items, processes, keeping clean and sterile items', 'Sterile & unsterile store are separately.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of disinfectant as per requirement', 'Chlorine solution, Glutaraldehyde, carbolic acid , fumigation material', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of cleaning agent as per requirement', 'Hospital grade phenyl, disinfectant detergent solution', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Spill management protocols are implemented', 'spill management kit. staff training, protocol displayed', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Mercury Spill management Kit is available', 'Hospital should aspire to be mercury free. If used than Hg spill management kit should be available with gloves, cap, mask, goggles, polybag, Plastic container & torch.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Cleaning of patient care area with detergent solution', 'Washing of floor with luke warm water and detergent.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Standard practice of mopping and scrubbing are followed', 'Use of three bucket system for mopping', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Cleaning equipment''s like broom are not used in patient care areas', 'Look in janitors closet', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Fumigation as per schedule', 'check that Formalin is not used. safer commercially available disinfectants such as Bacillicidal are used for fumigation', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('External footwears are restricted', 'adequate numbers are available at the entrance', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Entry to sterile zone is permitted only after hand washing, change of clothes, gowning & PPE', 'only persons really required are allowed to enter the sterile zone', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Positive Pressure in OT', 'OT to have an independent air handling unit with controlled ventilation such that the lay-up room and the OT table is under positive pressure', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F5.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Adequate air exchanges are maintained', 'Independent AHU also allows to maintain required number of Air exchange side. 20-25.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'F5.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of colour coded bins & Plastic bags at point of waste generation', 'Adequate number. Covered. Foot operated.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Segregation of Anatomical and soiled waste in Yellow Bin', 'Human Anatomical waste, Items contaminated with blood, body fluids,dressings, plaster casts, cotton swabs and bags containing residual or discarded blood and blood components.', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Segregation of infected plastic waste in red bin', 'Items such as tubing, bottles, intravenous tubes and sets, catheters, urine bags, syringes (without needles and fixed needle syringes) and vaccutainers with their needles cut) and gloves', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Display of work instructions for segregation and handling of Biomedical waste', 'Pictorial and in local language', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of functional needle cutters & puncture proof, leak proof, temper proof white container for seggregation of sharps', 'See if it has been used or just lying idle.', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Availability of post exposure prophylaxis & Protcols', 'Ask if available. Where it is stored and who is in charge of that. Also check PEP issuance register
Staff knows what to do in condition of needle stick injury', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Contaminated and broken Glass are disposed in puncture proof and leak proof box/ container with Blue colour marking', 'Includes used vials, slides and other broken infected glass', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check bins are not overfilled', 'Not more than two-third.', FALSE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Disinfection of liquid waste before disposal', 'Through Local Disinfection', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'F6.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Quality circle has been formed in the operation theatre', 'Check if quality circle formed and functional in the OT', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G1.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('There is system of daily round by matron/hospital manager/ hospital superintendent/ OT in charge for monitoring of services', 'Check for entries in Round Register.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Departmental checklist are used for monitoring and quality assurance', 'Staff is designated for filling and monitoring of these checklists', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G3.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Standard operating procedure for department has been prepared and approved', 'Can be prepared by junior surgeon and approved by HOD/OT in charge', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Current version of SOP are available with process owner', 'Look for version.', TRUE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department has documented procedure for ensuring patients rights including consent, privacy, confidentiality & entitlement', 'Check SOP for adequacy', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department has documented procedure for safety & risk management', 'Check SOP for adequacy', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department has documented procedure for support services & facility management.', 'Check SOP for adequacy', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department has documented procedure for general patient care processes', 'Check SOP for adequacy', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department has documented procedure for specific processes to the department', 'Check SOP for adequacy', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department has documented procedure for infection control & bio medical waste management', 'Check SOP for adequacy', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department has documented procedure for quality management & improvement', 'Check SOP for adequacy', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Department has documented procedure for data collection, analysis & use for improvement', 'Check SOP for adequacy', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check staff is a aware of relevant part of SOPs', 'Ask staff how they carry out a specific activity.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G4.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Work instruction/clinical protocols are displayed', 'processing and sterilization of equipment''s,', TRUE, FALSE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'G4.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Process mapping of critical processes done', 'Critical process are the ones where is some problem-delays, errors, cost, time, etc. and improvement will make our process effective and efficient.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G5.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Non value adding activities are identified', 'Non value adding activities are wastes. In these steps resources are expended, delays occur, and no value is added to the service.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G5.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Processes are improved & implemented', 'Look for the improvements made in the critical process.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G5.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Internal assessment is done at periodic interval', 'Check for assessment records such as circular, assessment plan and filled checklists. Internal assessment should be done at least quarterly', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G6.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('C-Section Audits are done on Monthly Bases', 'Check with audit records', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G6.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Non Compliance are enumerated and recorded', 'Check points having scores partial and Non Compliances are listed', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G6.3'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Action plan prepared', 'with details of action to be taken, responsibility, time line and Feedback mechanism.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G6.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check correction & corrective actions are taken', 'Check actions have been taken to close the gap. Can be in form of Action taken report or Quality Improvement (PDCA) project report', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G6.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check if SMART Quality Objectives have framed', 'Check short term valid quality objectivities have been framed addressing key quality issues in each department and cores services. Check if these objectives are Specific, Measurable, Attainable, Relevant and Time Bound.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G7.4'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check of staff is aware of Mission , Values, Quality Policy and objectives', 'Interview with staff for their awareness. Check if Mission Statement, Core Values and Quality Policy is displayed prominently in local language at Key Points', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G7.5'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check time bound action plan is being reviewed at regular time interval', 'Review the records that action plan on quality objectives being reviewed at least once in month by departmental in charges and during the quality team meeting. The progress on quality objectives have been recorded in Action Plan tracking sheet', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G7.7'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Basic quality improvement method', 'PDCA & 5S', TRUE, TRUE, FALSE, FALSE, (select max(id) from measurable_element where reference = 'G8.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('7 basic tools of Quality', 'Minimum 2 applicable tools are used in each department', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G8.2'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Check periodic assessment of medication and patient care safety risk is done using defined checklist periodically', 'Verify with the records. A comprehensive risk assessment of all clinical processes should be done using pre define criteria at least once in three month.', FALSE, TRUE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'G10.6'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));


insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('C-Section Rate', 'Total LSCS done x 100/Total deliveries conducted (Normal +LSCS)', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H1.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Percentage of C-Sections done in the night', 'Total C-Section done in night x 100/Total surgeries conducted (Day Night)', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H1.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Downtime critical equipment', 'Sum total of time Elapsed between when equipment had problem and when the problem is sorted out for critical equipment.', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No of C-Section per OBG surgeon', 'Total number of C-Section done/No. of OBG Surgeon available', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Percentage of elective C-Sections', 'No. of elective LSCS x 100/Total LSCS (Elective + Emergency)', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No of drug stock out in the month', '', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H2.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Surgical Site infection Rate', 'No. of observed surgical site infections*100/total no. of Major surgeries', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('No of adverse events per thousand patients', 'No of Adverse events reported x 1000/total no of patient treated in OT', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('% of environmental swab culture reported positive', 'No. of swab culture reported positive x 100/Total no. of swab sent for culture', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Perioperative Death Rate', 'Deaths occurred from pre operative procedure to discharge of the patient', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Percentage of C-Sections conducted using Safe Surgery Checklist', 'No. of C- Section Conducted using safe surgery checklist *100/Total no. C-Section Conducted', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H3.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));

insert into checkpoint (name, means_of_verification, am_observation, am_staff_interview, am_patient_interview, am_record_review, measurable_element_id, checklist_id) values ('Operation Cancellation rates', 'No. of cancelled operation*1000 /total operation done', FALSE, FALSE, FALSE, TRUE, (select max(id) from measurable_element where reference = 'H4.1'), (select max(id) from checklist where name = 'M-OT (LaQshya)'));
