**🎓 Gauss's Sum Formula Cheat Sheet  
Gauss's method is designed to quickly and efficiently calculate the sum of a sequence of consecutive numbers, especially from 1 to n, without having to add each number one by one.

---

**🔷 Problem:**  
Find the sum of all whole numbers from 1 to **n**.

---

**✅ Formula:**  
Sum = n(n + 1) ÷ 2

---

**🔷 Example:**  
Find the sum from 1 to 300:

Sum = 300 × (300 + 1) ÷ 2  
Sum = 300 × 301 ÷ 2  
Sum = 45,150

---

**📝 Why it works (in plain language):**

- Pair numbers from opposite ends: (1 + n), (2 + n−1), (3 + n−2), etc.
- Each pair adds to the same total.
- There are n ÷ 2 such pairs (if n is even).

---

**🧩 Tips to Remember:**

- "n(n + 1) ÷ 2" is your shortcut.
- Works for any sequence starting at 1.
- To sum numbers from **a to b**, use:  
    Sum = [b(b + 1) ÷ 2] − [(a − 1)a ÷ 2]


## Set Formulas

- **Union of Two Sets:**  
    n(A∪B)=n(A)+n(B)−n(A∩B)n(A∪B)
    =n(A)+n(B)−n(A∩B)
    
- **Union of Disjoint Sets:**  
    If A∩B=∅A∩B=∅ (no elements in common),  
    n(A∪B)=n(A)+n(B)n(A∪B)=n(A)+n(B)
    
- **Union of Three Sets (Inclusion-Exclusion Principle):**
    
    n(A∪B∪C)=n(A)+n(B)+n(C)−n(A∩B)−n(B∩C)−n(A∩C)+n(A∩B∩C)n(A∪B∪C)=n(A)+n(B)+n(C)−n(A∩B)−n(B∩C)−n(A∩C)+n(A∩B∩C)

- **Intersection of Two Sets (using union):**  
    n(A∩B)=n(A)+n(B)−n(A∪B)n(A∩B)=n(A)+n(B)−n(A∪B)
    
- **Union in terms of set differences:**  
    n(A∪B)=n(A−B)+n(B−A)+n(A∩B)n(A∪B)=n(A−B)+n(B−A)+n(A∩B)