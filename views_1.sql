CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `coach_pool_data_view` AS
select
    `ucm`.`user_id` AS `client_id`,
    substring_index(group_concat(`ucm`.`transition_coach_id` order by `ucm`.`created` DESC separator ','), ',', 1) AS `ts_id`
from
    `user_coach_meeting` `ucm`
where
    (`ucm`.`event_status` in (1, 3))
group by
    `ucm`.`user_id`
union all
select
    `cgm`.`user_id` AS `user_id`,
    substring_index(group_concat(`cgm`.`assigned_coach_id` order by `cgm`.`created` DESC separator ','), ',', 1) AS `Name_exp_4`
from
    `coach_group_messaging` `cgm`
group by
    `cgm`.`user_id`;
    
    
-- SL_UAT.tenant_entity_attribute_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `tenant_entity_attribute_view` AS
select
    `teca`.`tenant_id` AS `tenant_id`,
    (max(if((`teca`.`entity_column_name` = 'company_column_1'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_1_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_2'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_2_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_3'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_3_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_4'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_4_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_5'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_5_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_6'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_6_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_7'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_7_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_8'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_8_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_9'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_9_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_10'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_10_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_1'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_1_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_2'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_2_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_3'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_3_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_4'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_4_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_5'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_5_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_6'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_6_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_7'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_7_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_8'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_8_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_9'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_9_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_10'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_10_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_1'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_1_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_2'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_2_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_3'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_3_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_4'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_4_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_5'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_5_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_6'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_6_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_7'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_7_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_8'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_8_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_9'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_9_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_10'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_10_label`
from
    `tenant_entity_custom_attribute` `teca`
group by
    `teca`.`tenant_id`;
    
    
-- SL_UAT.total_jobs_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `total_jobs_view` AS
select
    `ucps`.`last_job_sent` AS `last_job_sent`,
    `ucps`.`job_sent` AS `total_sent_jobs`,
    `ucps`.`user_id` AS `user_id`
from
    `user_concierge_process_summary` `ucps`;
    
    
-- SL_UAT.rb_coach_pool_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `rb_coach_pool_data_view` AS
select
    `coach_pool_data`.`client_id` AS `client_id`,
    group_concat(`u`.`id` separator ',') AS `coach_id`,
    group_concat(distinct `u`.`first_name`, ' ', `u`.`last_name` separator ',') AS `system_user_name`
from
    (`coach_pool_data_view` `coach_pool_data`
join `user` `u` on
    ((`u`.`id` = `coach_pool_data`.`ts_id`)))
group by
    `coach_pool_data`.`client_id`;
    
    
-- SL_UAT.rb_user_interim_access_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `rb_user_interim_access_view` AS
select
    `uia`.`client_id` AS `client_id`,
    group_concat(distinct concat(`u`.`first_name`, ' ', `u`.`last_name`) separator ',') AS `system_user_name`
from
    (`user_interim_access` `uia`
join `user` `u` on
    ((`u`.`id` = `uia`.`system_user_id`)))
where
    (`uia`.`access_expiry_date` >= cast(now() as date))
group by
    `uia`.`client_id`;
    

