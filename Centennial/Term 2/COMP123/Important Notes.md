Static makes objects properties/ fields sharable.
e.g.
```csharp

class Person { public static int age; public statiic int program = 3409;}

Person p1 = new Person();
p1.age = 19;

Person p2 = new Person();
p2.age = 21;

Console.WriteLine(p1.age); // 21, since age is static, changed from 19 -> 21. Any object can change it

// if static is not present, the object will hold the field/ property to itself. Not shareable.

```