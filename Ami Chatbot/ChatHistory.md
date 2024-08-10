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

SQL to look at all cron jobs

```sql
select * from cron.job;
```

## I am having an issue with incorporating Chat History/ Contextual responses.

> [!IMPORTANT] I believe the order needs to be like so:
>
> 1. prompt comes in from user
> 2. Reformat prompt to be more AI friendly
> 3. Send reformatted prompt to llm with chat History
>
>    - which will return another formatted prompt/ question
>
> 4. Take question to be query vector database/ retriever
> 5. Finish with final call to llm to get the answer.
