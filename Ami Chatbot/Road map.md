
I am thinking that version 0.1 of the chatbot should have two functions:  

1. Provide answers to documents regarding IT's training documents and guidelines **with** links to sources    This is practically done, needs to be polished though.
2. Completing tasks based on file uploads and a user's instruction set such as summarizing, transforming into different file types

To improve security and reduce the risk of the AI getting into student's access, I will implement authentication via Azure.

- Polish chat history
- Add each Sharepoint site's main documents
- Implement Row Level Security to protect the AI from replying with unauthorized information
- Saving and/or emailing conversations to user's self
- Give AMi an email address and answering emails it receives
- ISYS database integration for questions regarding pay and other personal information (To be determined)