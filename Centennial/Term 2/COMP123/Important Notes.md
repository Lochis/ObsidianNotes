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


#### Implicit vs Explicit Casting
**Implicit** means *automatic*
**Explicit** means that we are *manually* casting

An explicit accessor of both the getter and the setter **MUST BE** less restrictive than the property accessor

If the accessor modifier for the property is omitted, then private is assumed

If accessor modifiers for the getter and the setter are omitted then the accessibility of the property is assumed


![[Pasted image 20250117141838.png]]


For an array, you must specify the size on initialization

For a List Collection, you can add more and more values


```csharp
class Program  
{  
    enum Days  
    {  
        Sunday,  
        Monday,  
        Tuesday,  
        Wednesday,  
        Thursday,  
        Friday,  
        Saturday  
    }  
    public static void Main()  
    {  
        Days today = Days.Saturday;  
        Console.WriteLine($"Today is: {today}");  
  
        if ( today == Days.Sunday  || today == Days.Saturday)  
        {  
            Console.WriteLine("Its a weekend");  
        }  
        else  
        {  
            Console.WriteLine("Its a working day");  
        }  
    }  
}
```
