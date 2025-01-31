```csharp
using System;  
  
namespace StaticKeywordProgram  
{  
    public static class StaticClass  
    {  
        public static string Greeting = "Hello, this is static class.";  
  
        public static void DisplayGreeting()  
        {  
            Console.WriteLine(Greeting);  
        }  
    }  
  
    public class NonStaticClass  
    {  
        public static int Counter = 0;  
  
        public string InstanceName;  
  
        public NonStaticClass(string Name)  
        {  
            InstanceName = Name;  
            Counter++;  
        }  
  
        public static void DisplayCounter()  
        {  
            Console.WriteLine($"Number of times the counter ran is: {Counter}");  
        }  
  
        public void DisplayInstanceName()  
        {  
            Console.WriteLine($"Instance name is {InstanceName}");  
        }  
  
    }  
class Program  
    {  
        private static string ProgramName = "Static Keyword Program";  
        private static void showProgramName()  
        {  
            Console.WriteLine(ProgramName);  
        }  
  
        public static void Main()  
        {  
            StaticClass.DisplayGreeting();  
  
            Console.WriteLine($"Counter from Non Static class: {NonStaticClass.Counter}");  
  
            NonStaticClass instance1 = new NonStaticClass("First Instance");  
            NonStaticClass instance2 = new NonStaticClass("Second Instance");  
            NonStaticClass instance3 = new NonStaticClass("Third Instance");  
  
            instance1.DisplayInstanceName();  
            instance2.DisplayInstanceName();  
  
            NonStaticClass.DisplayCounter();  
  
            showProgramName();  
        }  
    }  
}
```

```csharp
using System;  
  
namespace OperatorOverloading  
{  
    public class Number  
    {  
        public int Value { get; set; }  
        public Number(int value)  
        {  
            Value = value;  
        }  
  
        public static Number operator -(Number n1, Number n2)  
        {  
            return new Number(n1.Value / n2.Value); // We are changing the functionality of subtraction to be used as division  
        }  
  
        public override string ToString()  
        {  
            return Value.ToString();  
        }  
    }  
  
    class Program  
    {  
        public static void Main(string[] args)  
        {  
            var n1 = new Number(10);  
            var n2 = new Number(5);  
  
            Console.WriteLine($"Number 1 is {n1}");  
            Console.WriteLine($"Number 2 is {n2}");  
  
            var i = n1 - n2;  
            Console.WriteLine($"The output of {n1} - {n2} is {i}");  
        }  
    }  
}
```

```csharp
using System;  
using System.Net.Sockets;  
  
namespace PartialAndNestedClass  
{  
    public partial class Person  
    {  
        public string FirstName { get; set; }  
        public string LastName { get; set; }  
        public void Display()  
        {  
            Console.WriteLine($"Full Name is {FirstName} {LastName}");  
        }  
    }  
  
    public partial class Person  
    {  
        public Address PersonAddress { get; set; }  
    }  
  
    public class Address  
    {  
        public string City { get; set; }  
        public string Country { get; set; }  
        public Address(string city, string country)  
        {  
            City = city;  
            Country = country;  
        }  
  
        public void DisplayAddress()  
        {  
            Console.WriteLine($"Address: {City}, {Country}");  
        }  
    }





class Program  
    {  
        public static void Main(string[] args)  
        {  
            var p1 = new Person { FirstName = "Arpit", LastName = "Singh", PersonAddress = new Address("Toronto", "Canada") };  
            p1.Display();  
            p1.PersonAddress.DisplayAddress();  
        }  
    }  
}
```

