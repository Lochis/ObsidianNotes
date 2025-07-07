## 🔟 Chapter 10: Counting Principles

### 🔢 10.1 – Counting by Systematic Listing

**Purpose:** List all possible outcomes when the sample space is small.

**Techniques:**

- Tables
    
- Tree diagrams
    
- Lists
    

**Example:**  
List all 2-letter codes from {A, B, C} (repetition allowed):

- Possible outcomes: `AA, AB, AC, BA, BB, BC, CA, CB, CC`
    
- Total: $3 \times 3 = 9$ outcomes
    

---

### 📊 10.2 – Fundamental Counting Principle

**Definition:** If one event has $m$ outcomes and another has $n$, the total number of outcomes is:

$\text{Total outcomes} = m \times n$

**Extended Form:**

$\text{Total outcomes} = n_1 \cdot n_2 \cdot \cdots \cdot n_k$

**Example:**  
Choose 1 shirt (3 options), 1 pant (2 options), and 1 pair of shoes (4 options):

 $3 \times 2 \times 4 = 24 \text{ total outfits}$

---

### 📈 10.3 – Permutations & Combinations

#### 🔁 Permutations (Order Matters)

- Without repetition:
    

$P(n, r) = \frac{n!}{(n - r)!}$

- Using all items:
    
$P(n) = n!$

**Example:**  
How many ways to arrange 3 books out of 5 on a shelf?

$P(5,3)=5!(5−3)!=1202=60$
or
$P(5, 3) = \frac{5!}{(5-3)!} = \frac{120}{2} = 60$

#### 🔀 Combinations (Order Doesn't Matter)

$C(n,r)=(nr)=n!r!(n−r)!$
or
$C(n, r) = \binom{n}{r} = \frac{n!}{r!(n - r)!}$

**Example:**  
How many ways to choose 3 students out of 7?

$C\binom{7}{3} = \frac{7!}{3!4!} = \frac{5040}{6 \cdot 24} = \frac{5040}{144} = 35$

---

### 🔺 10.4 – Pascal's Triangle

Each row represents binomial coefficients:

- Row 0: 1
    
- Row 1: 1 1
    
- Row 2: 1 2 1
    
- Row 3: 1 3 3 1
    
- Row 4: 1 4 6 4 1
    

**Application:** Use for expanding binomials.

**Example:** Expand $(x + y)^4$:

$(x + y)^4 = 1x^4 + 4x^3y + 6x^2y^2 + 4xy^3 + 1y^4$

---

### 🚫 10.5 – Counting with "Not" and "Or"

#### Complement Rule:

$\text{Not A} = \text{Total} - A$

#### Addition Rule:

- Disjoint:
    
$(A∪B)=(A)+(B)(A \cup B) = (A) + (B)$

- Overlapping:
    
$(A∪B)=(A)+(B)−(A∩B)(A \cup B) = (A) + (B) - (A \cap B)$

**Example:** 40 students: 25 play piano, 18 play violin, 10 play both:

$(P∪V)=25+18−10$
$=33(P \cup V)$
$= 25 + 18 - 10$
$= 33$

---

## 🔢 Chapter 11: Probability

### 🎲 11.1 – Basic Concepts

#### Probability Formula:

$P(E) = \frac{\text{favorable outcomes}}{\text{total outcomes}}$

#### Complement:

$P(\text{Not E}) = 1 - P(E)$

**Example:**  
Probability of drawing a red card from a standard deck:

$P(\text{Red}) = \frac{26}{52} = \frac{1}{2}$

---

Six people N={A,B,C,N,O,R}N = \{ A, B, C, N, O, R \}N={A,B,C,N,O,R} form a club. 

If they choose a president **randomly**, find the **odds against Ryan** (R) becoming president.

**✅ Solution**

There are a total of 666 members.

Ryan has a $\frac{1}{6}$​ chance of being chosen, so the chance that **Ryan is _not_ chosen** is:

$\frac{5}{6}$

The **odds against Ryan** are the ratio of the number of ways Ryan is _not_ chosen to the number of ways he _is_ chosen:

$\text{Odds against Ryan} = \frac{5}{1} = 5:1$

---
### ⚖️ 11.2 – "Not" and "Or" in Probability

#### Addition Rule:

- Mutually exclusive:
    

$P(A \cup B) = P(A) + P(B)$

- Overlapping:
    

$P(A \cup B) = P(A) + P(B) - P(A \cap B)$

**Example:**  
$P(A) = 0.5, P(B) = 0.4, P(A ∩ B) = 0.2:$

$P(A \cup B) = 0.5 + 0.4 - 0.2 = 0.7$

---

### 🔗 11.3 – Conditional Probability and "And"

#### Conditional Probability:

$P(A \mid B) = \frac{P(A \cap B)}{P(B)}$

#### Independent Events:

$P(A \cap B) = P(A) \cdot P(B)$

**Example:**  
Draw 2 cards with replacement:

$P(\text{Red, then Black}) = \frac{26}{52} \cdot \frac{26}{52} = \frac{1}{4}$

Without replacement:

$P(\text{2 Reds}) = \frac{26}{52} \cdot \frac{25}{51}$

---

### 🧮 11.4 – Binomial Probability

Used when:

- Fixed number of trials $n$
    
- Only success/failure outcomes
    
- Each trial is independent
    
- Constant success probability $p$
    

#### Formula:

$P(k) = \binom{n}{k} p^k (1 - p)^{n - k}$

Where:

- $n$ = total trials
    
- $k$ = number of successes
    
- $p$ = probability of success
    
- $1 - p$ = probability of failure
    

**Example:**  
Flip a coin 4 times. What's the probability of exactly 2 heads?

- $n = 4$, $k = 2$, $p = 0.5$
    
- Plug into formula:
    

$P(2) = \binom{4}{2}(0.5)^2(0.5)^2$
$= 6 \cdot 0.25 \cdot 0.25$
$= 6 \cdot 0.0625$
$= 0.375$

---

### 💰 11.5 – Expected Value & Simulation

#### Expected Value:

$E = \sum (\text{Value} \cdot \text{Probability})$

**Example:**  
Game:

- Win $10 with P = 0.2
    
- Lose $5 with P = 0.8
    

Then:

$E = (10)(0.2) + (-5)(0.8)$
$= 2 - 4$
$= -2$

#### Simulation:

A technique for estimating probabilities using repeated random sampling (real or digital).

---

## 💡 Summary Table

| Concept                 | Formula / Rule                                 |
| ----------------------- | ---------------------------------------------- |
| Fundamental Principle   | $n_1 \cdot n_2 \cdots n_k$                     |
| Permutations            | $P(n, r) = \frac{n!}{(n - r)!}$                |
| Combinations            | $C(n, r) = \binom{n}{r} = \frac{n!}{r!(n-r)!}$ |
| Addition Rule           | $P(A \cup B) = P(A) + P(B) - P(A \cap B)$      |
| Complement              | $P(\text{Not A}) = 1 - P(A)$                   |
| Conditional Probability | $P(A \mid B) = \frac{P(A \cap B)}{P(B)}$       |
| Binomial Probability    | $P(k) = \binom{n}{k} p^k (1 - p)^{n - k}$      |
| Expected Value          | $E = \sum (\text{value} \cdot P)$              |
