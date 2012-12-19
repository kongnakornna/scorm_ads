create table #prefix#scorm_data (
	id integer primary key,
	user int not null,
	ts datetime not null,
	module char(128) not null,
	key char(128) not null,
	value char(255) not null
	unique (module, user, key),
	index (module, user, ts),
	index (module, key, ts)
);

create unique index #prefix#scorm_unique on #prefix#scorm_data (module, user, key);
create index #prefix#scorm_users on #prefix#scorm_data (module, user, ts);
create index #prefix#scorm_keys on #prefix#scorm_data (module, key, ts);