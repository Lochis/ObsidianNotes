### UserAccount  
**Responsibilities:**  
- Store user credentials and preferences  
- Manage authentication and role assignments  

**Collaborators:**  
- Student  
- Teacher  
- Administrator  

---

### Student  
**Responsibilities:**  
- Enroll in courses  
- Maintain a study schedule  
- Track progress  

**Collaborators:**  
- UserAccount (inherits from)  
- Course  
- StudySchedule  
- LearningPath  

---

### Teacher  
**Responsibilities:**  
- Teach courses  
- Create learning paths  
- View reports  

**Collaborators:**  
- UserAccount (inherits from)  
- Course  
- LearningPath  
- Report  

---

### Administrator  
**Responsibilities:**  
- Manage system users and permissions  
- View reports  

**Collaborators:**  
- UserAccount (inherits from)  
- Report  

---

### Course  
**Responsibilities:**  
- Contain learning materials  
- Assign deadlines  
- Track student grades  

**Collaborators:**  
- Student  
- Teacher  
- Deadline  

---

### AIAgent  
**Responsibilities:**  
- Analyze schedules and deadlines  
- Personalize study plans  

**Collaborators:**  
- StudySchedule  
- Calendar  

---

### StudySchedule  
**Responsibilities:**  
- Store and organize student tasks  
- Track time slots  

**Collaborators:**  
- Student  
- AIAgent  
- Task  

---

### Task  
**Responsibilities:**  
- Represent an individual study activity  
- Track priority and due dates  

**Collaborators:**  
- StudySchedule  

---

### Calendar  
**Responsibilities:**  
- Store events and deadlines  

**Collaborators:**  
- LMS  
- Deadline  
- AIAgent  

---

### Deadline  
**Responsibilities:**  
- Store due dates for coursework  
- Track associated courses  

**Collaborators:**  
- Calendar  
- Course  
- Task  

---

### LearningPath  
**Responsibilities:**  
- Define study modules and objectives for students  

**Collaborators:**  
- Teacher  
- Student  

---

### Report  
**Responsibilities:**  
- Store performance and progress reports  

**Collaborators:**  
- Teacher  
- Student  
- Administrator  
