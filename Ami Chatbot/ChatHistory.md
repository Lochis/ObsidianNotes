---
id: ChatHistory
aliases:
  - ChatHistory
tags: []
---

SQL to alter cron schedule for removing old chats after 3 hours.
_To be changed or removed when account authentication is implemented_

```sql
select cron.alter_job(
  job_id := (select jobid from cron.job where jobname = 'delete-old-rows'),
  schedule := '0 */3 * * *'
);
```
