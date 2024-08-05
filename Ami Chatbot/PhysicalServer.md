---
id: 1722880895-TYAB
aliases:
  - Physical Server
tags: []
---

# Physical Server

> [!NOTE]
>
> ## 1, singular, decent machine, estimated pricing.
>
> CPU: A high-performance multi-core processor, such as an Intel Xeon or AMD EPYC server CPU.
> Estimated cost: $2,000 - $5,000
>
> ---
>
> RAM: At least 128GB to 256GB of RAM to handle multiple concurrent sessions.
> Estimated cost: $1,000 - $2,000
>
> ---
>
> GPU: A powerful GPU for AI model inference, such as an NVIDIA A100 or A6000.
> Estimated cost: $5,000 - $10,000
>
> ---
>
> Storage: Fast SSD storage, at least 1TB-2TB for the operating system, AI models, and data.
> Estimated cost: $500 - $1,000
>
> ---
>
> Server chassis and power supply
> Estimated cost: $1,000 - $2,000
>
> ---
>
> Total hardware cost estimate: $9,500 - $20,000

---

> [!WARNING]
> My estimate is that this would be fine for up to 100 people at a time. There would be delay.
> More people = More delay in response as people would be queued up for the next chance the gpu can process the request.
>
> - This means, as a test / first adoption of AI chatbot, one machine would work.
>   - However, as more use cases and more data is supplied to the chatbot, the more processing power it needs to fulfill the same response times.

> [!important]
>
> ## If this is the path taken, there are topics needed to be handled.
>
> 1. Load balancing.
>
> - If there are multiple machines running the back-end for the chatbot, load balancing will be necessary in order to queue requests
>
> 2. Linux is the quickest and most cost effective OS.
>
> - Can we handle this with our current security tech stack?

Current docker location: `Directory: C:\Users\Lochis\ami-chatbot-db-supabase\supabase\docker`

Self-hosting Vector DB: Supabase

- [Instructions](https://supabase.com/docs/guides/self-hosting/docker)

```bash
# Stop and remove the containers

docker compose down

# Recreate and start the containers

docker compose up -d
```

[match_documents SQL function for vector similarity search](match_documents.md)

> [!IMPORTANT]
> Make sure to enable extension: **Vector** in the **Public Schema**
