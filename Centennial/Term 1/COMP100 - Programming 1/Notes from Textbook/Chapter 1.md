---
id: Chapter 1
aliases: []
tags: []
obsius: https://obsius.site/5y2h6n3d6a73520g0r0x
---

# The Programming Process

- A computer program is a set of instructions that tell a computer what to do. **_Software_**

## System Software

- describes programs that operate the computer
- Windows, Mac OS, Linux, etc.

## Application Software

- describes the programs that allow users to complete tasks
- applications

### Hardware

- constructed from circuitry that consists of small on/off switches
- Most basic circuitry-level language is called **_Machine Language_**

### Machine Language

- series of 1s and 0s

## Higher-Level Programming Language

- Allows the use of limited vocabulary of reasonable keywords

### Keywords

- predefined and reserved identifiers that have special meaning
- e.g. read, write, add instead of sequences of on/off switches
- Reasonable names to areas of computer memory instead of remembering memory locations

#### Camel casing (or lower camel casing)

- hoursWorked, payRate, numberOfHouses
- **_C# convention is that data item names use camelCasing_**
- C# is case sensitive

## Compiler

- Translates high-level language statements into machine code
- Syntax errors issue an error message

### Assemblers and Interpreters

- These language translators operate differently, but all translate higher-level language into machine language

## Logic

- executing various statements and procedures in the correct order to produce the desired results.

# Procedural and Object-Oriented Programming

## Procedural Program

- Programming languages: C and Logo

- Divides problem solution into multiple methods, each with unique name

  - then calls or invokes the methods to input, manipulate, and output the values stored in those locations
  - Can contain hundreds of variables and thousands of method calls

- Use knowledge about a programming language to create and name computer memory locations

- series of operations to manipulate those values
- Example:

```
get hoursWorked
pay = hoursWorked * 10.00
output pay
```

### Variables

- Hold values that might vary
- Referenced by a one-word name (an **_identifier_**) with no embedded spaces

### Methods (Sometimes called procedures, subroutines, or functions)

- groups of operations into one logical unit
- Convention in C# is to use **_Pascal casing_** or **_upper camel casing_**
- e.g. CalculateWithholdingTax()

# Object-oriented programming (OOP)

- taking an OOP approach to a problem means defining the objects needed to accomplish a task and developing classes that describe the objects so each object maintains its own data and carries out tasks when another object requests them.
- is said to be _natural_

- Extension of procedural programming.
- Focuses on objects that contain variables and methods

## Object

- concrete entity that has attributes and behaviors

### Attributes

- The features that an object "has"
- the values of an object's attributes constitute the **_state of the object_**
  - e.g. payee and monetary attributes might be assigned to _Alice Nelson_ and _$400_. Those are the **_state_** of the object
- the **_behaviors of the object_** are the things it "does" (methods)

## Computer Simulations

- programs that simulate real-world activities, for users to better understand real-world processes

## Graphical User Interfaces (GUI)

- programs that allow users to interact with a program in a graphical environment, mouse, touch screen

# Features of Object-Oriented Programming languages

## Classes

- describes potential objects
- recipe or blueprint
- An object is an **_instance of class_**
- Convention is to begin class names with an uppercase letter and use a singular noun.
  - e.g. a class that defines the attributes and methods of an automobile would probably be named _Automobile_
  - e.g. if requires two words: Upper Camel Casing is used _BankAccount_

## Encapsulation

- the technique of packaging an object's attributes and methods into a cohesive unit.
- Sometimes referred to as using a **_Black Box_**
  - The idea that an object can be used without knowing the low-level details of how the methods are executed.
  - This means the user must only understand the **_interface_** or interaction between method and object.

## Inheritance

- used to extend a class to create a more specific class.
  - specific class contains all attributes and methods of general class and usually contains new attributes and methods

## Polymorphism

- the ability to create methods and act appropriately depending on context.
- e.g. _fill_ method can be on **Dog** class and **Automobile** class and do different operations.
  ```
  Dog.fill() -> (hopefully robot dog in this instance) gets filled with food
  Automobile.fill() -> gets filled with gas from a gas pump
  ```

# The C# Programming Language

- developed as an object-oriented and component-oriented language.
- Part of Visual Studio
- The version number of C# tells how many major versions were released prior to most recent release.
  - e.g. C# 7.0 -> 6 major versions preceded.
- Unlike other languages, C# allows every piece of data to be treated as an object
  - employs the principals of OOP consistently.
- ideal for modern programming due to its constructs for creating components with properties, methods, and events.

## Some differences between C# and other programming languages

- C# contains a GUI, similar to Visual basic
  - C# is more concise

### C++ and C#.

- C# is modeled after the C++ programming language, but considered easier to learn
  - Most difficult features in C++ have been eliminated in C#
  - Pointers are not used in C#
  - Object destructors and forward declarations are not needed
  - #include files are not necessary
- Multiple inheritance is not allowed in C#

### Java and C#.

- similar to each other since Java was also based on C++
- C# more truly object oriented
- In java, every piece of data is not an object, in C# it is

## Literal string

- Any text between double quotation marks " "

## Arguments

- represent information that a method needs to perform a task
- .e.g MakeAppointment("September 10", "2 p.m."); "September 10" and "2 p.m." are the arguments

## Namespace

- Construct that acts like a container to provide a way to group similar classes.
- To organize classes, you can and will create your own namespaces.
- The **_System_** namespace, built into C# compiler, holds commonly used classes
- Every C# namespace knowledge in Visual Studio can be transferred to Visual C++ and Visual Basic

```
class FirstClass
{
  static void Main()
  {
    System.Console.WriteLine("This is my first C# program");
  }
}
```
