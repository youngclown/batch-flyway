CREATE TABLE IF NOT EXISTS `cms_banner` (
    id                       bigint auto_increment primary key,
    banner_type_id           bigint       null,
    title                    varchar(100) not null,
    deep_link                varchar(200) null,
    is_display               tinyint(1)   not null,
    display_begin_at         datetime     not null,
    display_end_at           datetime     not null,
    created_at               datetime     not null,
    updated_at               datetime     not null,
    deleted_at               datetime     null,
    banner_category_id       bigint       null,
    last_update_auth_user_id int          null,
    create_auth_user_id      int          null);

create index if not exists banner_category_id
    on cms_banner (banner_category_id);

create index if not exists banner_type_id
    on cms_banner (banner_type_id);

create index if not exists create_auth_user_id
    on cms_banner (create_auth_user_id);

create index if not exists last_update_auth_user_id
    on cms_banner (last_update_auth_user_id);
