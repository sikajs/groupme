CREATE TABLE "groups" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime, "user_id" integer, "posts_count" integer DEFAULT 0);
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "group_id" integer, "created_at" datetime, "updated_at" datetime, "user_id" integer);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime, "updated_at" datetime, "fb_id" varchar(20), "token" varchar(255), "name" varchar(255));
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "group_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "group_id" integer, "user_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO schema_migrations (version) VALUES ('20140606030322');

INSERT INTO schema_migrations (version) VALUES ('20140606030324');

INSERT INTO schema_migrations (version) VALUES ('20140608060152');

INSERT INTO schema_migrations (version) VALUES ('20140608132831');

INSERT INTO schema_migrations (version) VALUES ('20140610111332');

INSERT INTO schema_migrations (version) VALUES ('20140611041811');

INSERT INTO schema_migrations (version) VALUES ('20140611090510');

INSERT INTO schema_migrations (version) VALUES ('20140611094301');

INSERT INTO schema_migrations (version) VALUES ('20140613094856');
