

Way to solve 90% of the problems
![[Pasted image 20240918234204.png]]\

Explicit Casting (int) vs Convert Class

Convert.ToInt32 will round the double up or down, depending on the decimal (1.2 vs 1.8)  
Casting (int) will truncate the decimals

``` c#
string first = "hi";
string second = "HI";

// case-insensitive comparison, we make the case lowercase.
first.ToLower() == second.ToLower(); // true

// by default, string comparisons are case-sensitive
first.Contains(second); // false

```
