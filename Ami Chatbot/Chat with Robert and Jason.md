### Ability to answer questions based on TOPDesk knowledgebase 
- This is a simple pull from API, vectorize in database, and ready to use

### Ability to answer questions based on SharePoint docs (Cleanup needed before this would be polished and accurate)
  - Very important, garbage in, garbage out
### SSO login for only staff, MFA included
   - Easy to implement for general knowledge querying
### Email chat option so users can email instead of using the web interface
 - At the base of this functionality, it would provide the same answers that the web interface would provide
   
   ## Action Items 
   - Pilot at a school after IT dept and board office
   - Clean up IT SharePoint files
   - Make it a topic to clean up files
   - Maybe take Incident Response doc and put it away
   - Create a quote/ put specifications together for a new build
   - Figure out why you can't find *SSS* subsite?!
   - Start with IT docs
	   - Then introduce other depts after we advise to clean it up
- 
   
 > [!INFO] Issue with TelusHealth
 >  - Would need to explore this with Telus
 >  - No guarantee that this would be open for us to gather their platform's data

> [!IMPORTANT] HR System integration
> - In the case a bad actor gets access to a staff member's account, they would be able to easily query AMi to get additional personal information
> 	- need to be careful in what information the AI would be able to query on behalf of the user
> - The HR department would need to be on board with this.


### Additional concerns/ questions
#### Azure hosting
- This week, I found difficulties with starting the AI VM on multiple occasions.
  
	- The issue was that there was not enough space available in Canada Central datacenters. 
		- Spoke with Dan about this, but ultimately, the VM's SKU does not have high availability across multiple Canadian datacenters.
		- Attempting to create high ability, it is likely we would have to go into the United States
		  
- Another pain point is cost. 24/7 up time would cost more than $500 a month. 
	- A much more cost effective method would be to use a server with a GPU we have bought. 
	  
	- Patrick has already started to put together a more powerful sever than Azure offers that could use one of my old personal GPUs until a more powerful one is in our possession
		- This would allow me to work on the AI at work with much higher availability than the Azure VM.
		- A decent GPU for AI calculations is around ***$1400*** before tax in the consumer market.
		- A *datacenter* grade GPU would cost around *$7300*. For this, not needed.