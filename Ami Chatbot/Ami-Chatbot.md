---
id: Ami-Chatbot
aliases:
  - AI Chatbot
tags: []
obsius: https://obsius.site/6o343f6t6e435s5i5n5a
---

> [!WARNING] Potential Issues
> Web scraping [AMDSB Polices and Procedures web page](https://www.amdsb.ca/apps/pages/policiesprocedures)
> edlio, our website provider, has Cloudflare anti-web scraping enabled on our AP URLs.
> May need to download every AP manually, and map out the links separately.

> [!TODO]
>
> - [ ] Map out link paths of The Core Navigation bar
> - [ ] Figure out how AMDSB main website and school sites would be scraped
> - [ ] Flush out the `System Template` for Ami to reply with better information on paths and links

## Files that may not want to be given to the AI

These files may expose too much contact information such as Jason, Andrea, Kenneth, Jane, Lisa Walsh's (old) phone numbers, etc.

- Under [IT Guidelines](https://amdsb.sharepoint.com/sites/Info/SSS/Documents/Forms/AllItems.aspx?viewpath=%2Fsites%2FInfo%2FSSS%2FDocuments%2FForms%2FAllItems%2Easpx&id=%2Fsites%2FInfo%2FSSS%2FDocuments%2FIT%20Information%20%26%20Resources%2FIT%20Guidelines&viewid=67b932a0%2Dcd43%2D4b96%2Db390%2Da8f723df8543)
  - [15_AMDSB Cyber Incident Repsonse plan](https://amdsb.sharepoint.com/:b:/r/sites/Info/SSS/Documents/IT%20Information%20%26%20Resources/IT%20Guidelines/15_AMDSB%20Cyber%20Incident%20Reponse%20Plan.pdf?csf=1&web=1&e=g2jRie)
  - [16_AMDSB Vulnerability and Patch Management](https://amdsb.sharepoint.com/:b:/r/sites/Info/SSS/Documents/IT%20Information%20%26%20Resources/IT%20Guidelines/16_AMDSB%20Vulnerability%20and%20Patch%20Management%20Guidelines.pdf?csf=1&web=1&e=i4Rq8a)
  - [17_AMDSB Disaster Recovery Plan](https://amdsb.sharepoint.com/:b:/r/sites/Info/SSS/Documents/IT%20Information%20%26%20Resources/IT%20Guidelines/17_AMDSB%20Disaster%20Recovery%20Plan.pdf?csf=1&web=1&e=CBewQd)

# How are we going to host it?

## 1. Physical Server

> [!IMPORTANT] 1, singular, decent machine, estimated pricing.
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

> [!info] If this is the path taken, there are topics needed to be handled.
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

## 2. Cloud Hosting

[Instances.vantages.sh - Site for comparing/ looking at instances quickly](https://instances.vantage.sh/)

---

### Cons

- Overtime this will cost more money

### Pros

- Scaling if needed is simple and can be automatic

---

### <u>AWS Solution</u>

> [!info] Starting out, the entry level AWS EC2 instance is [g4dn.xlarge](https://instances.vantage.sh/aws/ec2/g4dn.xlarge)
>
> - It offers 1 Nvidia Tensor Code (16GBs of VRAM), 16GBs of RAM, and 4 vCPUs.
> - The On Demand pricing is $0.5840USD per hour ($426.32 per month/ $5115.84USD per year)
> - The 1 Year reserve is $0.3680USD per hour ($268.64USD per month/ $3223.68USD per year)

The [g4dn.12xlarge](https://instances.vantage.sh/aws/ec2/g4dn.12xlarge?region=ca-central-1&os=linux&cost_duration=annually&reserved_term=Standard.noUpfront) offers considerable more power.

- It offers 4 of the same GPUs, 192GBs of RAM, and 48 vCPUs
- On Demand pricing is $38,044USD per year
- 1 year reserved is $23,967USD per year

---

### <u>Azure Solution</u>

> [!info] Starting out, entry level Azure VM is the NC4as T4 v3
>
> - This is similar to the AWS g4dn.xlarge instance.
> - Offers the a T4 GPU, 16GB of VRAM, 28GBs of RAM, and 4 vCPUs

### <u>Other Solutions:</u>

> #### [LambdaLabs](https://lambdalabs.com/)

> #### [Vast](https://vast.ai/)
