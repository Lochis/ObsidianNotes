---
id: 1721935098-ASZH
aliases:
  - match_documents SQL function for vector similarity search
tags: []
---

# match_documents SQL function for vector similarity search

``` sql
create or replace function match_documents(
  query_embedding vector(768),
  match_count int,
  filter jsonb default '{}'
)
returns table (
  id integer,
  content text,
  metadata jsonb,
  similarity float
)
language plpgsql
as $$
begin
  return query
  select
    documents.id,
    documents.content,
    documents.metadata,
    1 - (documents.embedding <=> query_embedding) as similarity
  from documents
  where (filter = '{}' or documents.metadata @> filter)
  order by documents.embedding <=> query_embedding
  limit match_count;
end;
$$
;

-- Grant necessary permissions
grant execute on function match_documents(vector(768), int, jsonb) to authenticated, anon, service_role;
```