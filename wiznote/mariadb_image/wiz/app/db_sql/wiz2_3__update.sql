use `wizasent`;
update `wiz_server` set `SERVER_URL`='http://127.0.0.1', `INTERNAL_SERVER_URL`='http://127.0.0.1' where `SERVER_GUID`='00000000-0000-0000-0000-000000000000';
use `wizksent`;
ALTER TABLE `wiz_document_tag` ADD UNIQUE INDEX `uniq_kb_doc_tag` (KB_GUID,DOCUMENT_GUID, TAG_GUID);
ALTER TABLE `wiz_document_param` ADD UNIQUE INDEX `uniq_kb_doc_param` (KB_GUID, DOCUMENT_GUID, PARAM_NAME);



