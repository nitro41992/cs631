--CreateUsersTable
 create table "users" ("id" bigserial primary key not null, "name" varchar(255) not null, "email" varchar(255) not null, "email_verified_at" timestamp(0) without time zone null, "password" varchar(255) not null, "remember_token" varchar(100) null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateUsersTable
 alter table "users" add constraint "users_email_unique" unique ("email")
--CreatePasswordResetsTable
 create table "password_resets" ("email" varchar(255) not null, "token" varchar(255) not null, "created_at" timestamp(0) without time zone null)
--CreatePasswordResetsTable
 create index "password_resets_email_index" on "password_resets" ("email")
--CreateDocumentsTable
 create table "documents" ("document_id" bigserial primary key not null, "title" varchar(50) not null, "p_date" timestamp(0) without time zone not null, "publisher_id" integer not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateAuthorsTable
 create table "authors" ("author_id" bigserial primary key not null, "a_name" varchar(100) not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateWritesTable
 create table "writes" ("id" bigserial primary key not null, "author_id" integer not null, "document_id" integer not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateWritesTable
 alter table "writes" add constraint "writes_author_id_foreign" foreign key ("author_id") references "authors" ("author_id") on delete cascade
--CreateWritesTable
 alter table "writes" add constraint "writes_document_id_author_id_unique" unique ("document_id", "author_id")
--CreateBooksTable
 create table "books" ("id" bigserial primary key not null, "document_id" integer not null, "isbn" char(13) not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateBooksTable
 alter table "books" add constraint "books_document_id_foreign" foreign key ("document_id") references "documents" ("document_id") on delete cascade
--CreateBooksTable
 alter table "books" add constraint "books_document_id_unique" unique ("document_id")
--CreateJournalVolumesTable
 create table "journal_volumes" ("id" bigserial primary key not null, "document_id" integer not null, "j_volume" integer not null, "editor_id" integer not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateJournalVolumesTable
 alter table "journal_volumes" add constraint "journal_volumes_document_id_foreign" foreign key ("document_id") references "documents" ("document_id") on delete cascade
--CreateJournalIssuesTable
 create table "journal_issues" ("id" bigserial primary key not null, "document_id" integer not null, "issue_no" integer not null, "scope" text not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateJournalIssuesTable
 alter table "journal_issues" add constraint "journal_issues_document_id_foreign" foreign key ("document_id") references "documents" ("document_id") on delete cascade
--CreateJournalIssuesTable
 alter table "journal_issues" add constraint "journal_issues_document_id_issue_no_unique" unique ("document_id", "issue_no")
--CreateChiefEditorsTable
 create table "chief_editors" ("editor_id" bigserial primary key not null, "e_name" varchar(100) not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateInvEditorsTable
 create table "inv_editors" ("id" bigserial primary key not null, "document_id" integer not null, "issue_no" integer not null, "ie_name" varchar(100) not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateInvEditorsTable
 alter table "inv_editors" add constraint "inv_editors_document_id_issue_no_foreign" foreign key ("document_id", "issue_no") references "journal_issues" ("document_id", "issue_no")
--CreateInvEditorsTable
 alter table "inv_editors" add constraint "inv_editors_document_id_issue_no_ie_name_unique" unique ("document_id", "issue_no", "ie_name")
--CreateProceedingsTable
 create table "proceedings" ("id" bigserial primary key not null, "document_id" integer not null, "c_date" timestamp(0) without time zone not null, "c_location" varchar(255) not null, "c_editor" varchar(255) not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateProceedingsTable
 alter table "proceedings" add constraint "proceedings_document_id_foreign" foreign key ("document_id") references "documents" ("document_id") on delete cascade
--AlterTableWritesAddForeignTagBooksDocumentId
 alter table "writes" add constraint "writes_document_id_foreign" foreign key ("document_id") references "books" ("document_id") on delete cascade
--AlterTableJournalVolumesAddForeignTagChiefEditorEditorId
 alter table "journal_volumes" add constraint "journal_volumes_editor_id_foreign" foreign key ("editor_id") references "chief_editors" ("editor_id") on delete cascade
--CreatePublishersTable
 create table "publishers" ("publisher_id" bigserial primary key not null, "pub_name" varchar(255) not null, "address" varchar(255) not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--AlterTableDocumentsAddForeignTagPublisherPublisherId
 alter table "documents" add constraint "documents_publisher_id_foreign" foreign key ("publisher_id") references "publishers" ("publisher_id")
--CreateBranchesTable
 create table "branches" ("lib_id" bigserial primary key not null, "l_name" varchar(255) not null, "l_location" varchar(255) not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateCopiesTable
 create table "copies" ("id" bigserial primary key not null, "document_id" integer not null, "copy_no" integer not null, "lib_id" integer not null, "position" char(6) not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateCopiesTable
 alter table "copies" add constraint "copies_lib_id_foreign" foreign key ("lib_id") references "branches" ("lib_id")
--CreateCopiesTable
 alter table "copies" add constraint "copies_document_id_copy_no_lib_id_unique" unique ("document_id", "copy_no", "lib_id")
--CreateReadersTable
 create table "readers" ("reader_id" bigserial primary key not null, "r_type" varchar(255) not null, "r_name" varchar(255) not null, "address" varchar(255) not null, "card_num" integer not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateReadersTable
 alter table "readers" add constraint "readers_card_num_unique" unique ("card_num")
--CreateReservesTable
 create table "reserves" ("res_number" bigserial primary key not null, "reader_id" integer not null, "document_id" integer not null, "copy_no" integer not null, "lib_id" integer not null, "d_time" timestamp(0) without time zone not null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateReservesTable
 alter table "reserves" add constraint "reserves_reader_id_foreign" foreign key ("reader_id") references "readers" ("reader_id")
--CreateReservesTable
 alter table "reserves" add constraint "reserves_document_id_copy_no_lib_id_foreign" foreign key ("document_id", "copy_no", "lib_id") references "copies" ("document_id", "copy_no", "lib_id")
--CreateBorrowsTable
 create table "borrows" ("bor_number" bigserial primary key not null, "reader_id" integer not null, "document_id" integer not null, "copy_no" integer not null, "lib_id" integer not null, "bd_time" timestamp(0) without time zone not null, "rd_time" timestamp(0) without time zone null, "created_at" timestamp(0) without time zone null, "updated_at" timestamp(0) without time zone null)
--CreateBorrowsTable
 alter table "borrows" add constraint "borrows_reader_id_foreign" foreign key ("reader_id") references "readers" ("reader_id")
--CreateBorrowsTable
 alter table "borrows" add constraint "borrows_document_id_copy_no_lib_id_foreign" foreign key ("document_id", "copy_no", "lib_id") references "copies" ("document_id", "copy_no", "lib_id")
