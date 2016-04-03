use demo;

CREATE  TABLE `jhi_user` (
  `id` BIGINT(20) NOT NULL ,
  `login` VARCHAR(45) NULL DEFAULT NULL ,
  `password_hash` VARCHAR(45) NULL ,
  `first_name` VARCHAR(45) NULL ,
  `last_name` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `activated` BIT(1) NULL ,
  `lang_key` VARCHAR(45) NULL ,
  `activation_key` VARCHAR(45) NULL ,
  `reset_key` VARCHAR(45) NULL ,
  `created_by` VARCHAR(45) NOT NULL ,
  `created_date` TIMESTAMP NOT NULL ,
  `reset_date` TIMESTAMP NULL ,
  `last_modified_by` VARCHAR(45) NULL ,
  `last_modified_date` TIMESTAMP NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) );


CREATE  TABLE `jhi_authority` (
  `name` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`name`) );

CREATE  TABLE `jhi_persistent_audit_event` (
  `event_id` BIGINT(20) NULL DEFAULT NULL ,
  `principal` VARCHAR(255) NULL DEFAULT NULL ,
  `event_date` TIMESTAMP NULL DEFAULT NULL ,
  `event_type` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`event_id`) );


CREATE  TABLE `jhi_persistent_audit_evt_data` (
  `event_id` BIGINT(20) NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `value` VARCHAR(45) NULL ,
  PRIMARY KEY (`event_id`) );


CREATE  TABLE `jhi_user_authority` (
  `user_id` BIGINT(20) NOT NULL ,
  `authority_name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`user_id`, `authority_name`) );

insert into jhi_user(login,password_hash,first_name,last_name,email,activated,lang_key,activation_key,reset_key,created_by,created_date,reset_date,last_modified_by,last_modified_date) values
('system','$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG','System','System','system@localhost','yes','en','NULL','NULL','system',now(),now(),'NULL','NULL');
 
insert into `jhi_user_authority`(user_id,`authority_name`) values(1,'ROLE_ADMIN');

insert into `jhi_authority`(name) values('ROLE_ADMIN');

