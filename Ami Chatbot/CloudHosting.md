---
id: CloudHosting
aliases:
  - CloudHosting
tags: []
---

# CloudHosting

[Instances.vantages.sh - Site for comparing/ looking at instances quickly](https://instances.vantage.sh/)

---

### Cons

- Overtime this will cost more money

### Pros

- Scaling if needed is simple and can be automatic

---

### <u>AWS Solution</u>

> [!TIP]
>
> ## Starting out, the entry level AWS EC2 instance is [g4dn.xlarge](https://instances.vantage.sh/aws/ec2/g4dn.xlarge)
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

> [!TIP]
>
> ## Starting out, entry level Azure VM is the NC4as T4 v3
>
> - This is similar to the AWS g4dn.xlarge instance.
> - Offers the a T4 GPU, 16GB of VRAM, 28GBs of RAM, and 4 vCPUs

### <u>Other Solutions:</u>

#### [LambdaLabs](https://lambdalabs.com/)

#### [Vast](https://vast.ai/)
