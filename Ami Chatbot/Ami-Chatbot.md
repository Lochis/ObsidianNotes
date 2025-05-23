---
id: Ami-Chatbot
aliases:
  - AI Chatbot
tags: []
obsius: https://obsius.site/6o343f6t6e435s5i5n5a
---
[[Road map]]

**Button that can email auth'd user current chat**

>[!INFO] Project Scope
>Project Scope: AI-Powered Knowledge Management and Support System “AMi”
>Project Overview
>This project aims to develop an AMDSB AI-powered system named “AMi” to enhance our internal knowledge management and support capabilities. The system will leverage existing resources, including the TOPDesk knowledgebase, SharePoint documents, and other data sources to provide accurate and timely responses to staff inquiries. Additionally, it will integrate secure Single Sign-On (SSO) with Multi-Factor Authentication (MFA) and offer an email chat option for user convenience.
>
> Objectives
>1. Enable AMi to answer questions based on the TOPDesk knowledgebase, ensuring quick and accurate information retrieval.
>2. Enable AMi to answer questions based on Core resources ensuring quick and accurate information retrieval. 
>3. Integrate AMi with all SharePoint repositories to answer queries based on stored documents. This will require a preliminary cleanup of the SharePoint repository to ensure data accuracy and relevance.
>4. Implement SSO with MFA to ensure that only authorized staff can access the AMi system, enhancing security and user experience. 
>5. Provide an email chat option, allowing AMDSB staff to interact with the AMi system via email, in addition to the web interface.


> [!WARNING]
>
> Web scraping [AMDSB Polices and Procedures web page](https://www.amdsb.ca/apps/pages/policiesprocedures)
> edlio, our website provider, has Cloudflare anti-web scraping enabled on our Admin Procedure URLs.
> May need to download every AP manually, and map out the links separately.



> [!TODO]- TODO
> - [ ] Finish Admin calls
> - [ ] Make admin calls secure by checking if authenticated and if user role is Global Admin
>       
>       
> - [ ] [Contextual responses/ Chat History](ChatHistory.md)
> - [ ] Map out link paths of The Core Navigation bar
> - [ ] Figure out how AMDSB main website and school sites would be scraped
> - [ ] Flush out the `System Template` for Ami to reply with better information on paths and links

> [!IMPORTANT] Code/ SQL queries
> [Chat History](ChatHistory.md)

> [!Warning]- Files that may not want to be given to the AI
> These files may expose too much contact information such as Jason, Andrea, Kenneth, Jane, Lisa Walsh's (old) phone numbers, etc.
> Under [IT Guidelines](https://amdsb.sharepoint.com/sites/Info/SSS/Documents/Forms/AllItems.aspx?viewpath=%2Fsites%2FInfo%2FSSS%2FDocuments%2FForms%2FAllItems%2Easpx&id=%2Fsites%2FInfo%2FSSS%2FDocuments%2FIT%20Information%20%26%20Resources%2FIT%20Guidelines&viewid=67b932a0%2Dcd43%2D4b96%2Db390%2Da8f723df8543)
>
> - [15_AMDSB Cyber Incident Repsonse plan](https://amdsb.sharepoint.com/:b:/r/sites/Info/SSS/Documents/IT%20Information%20%26%20Resources/IT%20Guidelines/15_AMDSB%20Cyber%20Incident%20Reponse%20Plan.pdf?csf=1&web=1&e=g2jRie)
> - [16_AMDSB Vulnerability and Patch Management](https://amdsb.sharepoint.com/:b:/r/sites/Info/SSS/Documents/IT%20Information%20%26%20Resources/IT%20Guidelines/16_AMDSB%20Vulnerability%20and%20Patch%20Management%20Guidelines.pdf?csf=1&web=1&e=i4Rq8a)
> - [17_AMDSB Disaster Recovery Plan](https://amdsb.sharepoint.com/:b:/r/sites/Info/SSS/Documents/IT%20Information%20%26%20Resources/IT%20Guidelines/17_AMDSB%20Disaster%20Recovery%20Plan.pdf?csf=1&web=1&e=CBewQd)

# How are we going to host it?

1.  [Physical Server](PhysicalServer.md)
2.  [Cloud Hosting](CloudHosting.md)

---

## **Current Conclusion**

Due to the cost of Cloud Hosting overtime, but it's advantages to scale up and down during initial testing:

#### 1. I believe that it is necessary to start with a g4dn.xlarge instance at AWS.

- Scale up and down testing out dozens of people sending in prompts and check the time to respond and usage resources.
- Technically, hundreds of people could be using Ami at a single time and scaling to the needed amount of instances/ GPUs is imperative for adequate up-time.

#### 2. Once we realize our needs we buy physical machines

- This is more cost effective in the long run. (2+ years)
- One physical machine could be enough if it is powerful enough. (enough VRAM, decent CPU, enough RAM)
- The vector database could run off of the one machine that has enough ram. A VM could suffice with current estimates.

##### It could be totally possible that this less intense usage of AI, a chatbot, could be run fully on one powerful enough machine.

One powerful machine would be slower than two slightly slower machines.

- This is because one GPU can only, realistically, send one response at a time.
- e.g. 1 x 24GB VRAM 4090 vs 2 x 16GB VRAM 3080s
