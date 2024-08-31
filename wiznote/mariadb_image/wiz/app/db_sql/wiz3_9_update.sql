use `wizksent`;

create table if not exists wiz_note_member2 (
    id                bigint  unsigned      not null    AUTO_INCREMENT,
    user_guid         char(36)              not null,
    kb_guid           binary(16)            not null,
    doc_guid          binary(16)            not null,
    member_id         char(36)              not null,
    permission        char(1)               not null,
    created           TIMESTAMP             NOT NULL    DEFAULT CURRENT_TIMESTAMP,
    modified          TIMESTAMP             NOT NULL    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (id),
    unique key member (kb_guid, doc_guid, member_id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;