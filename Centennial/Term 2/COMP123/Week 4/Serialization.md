```csharp

using System;
using System.IO;
using System.Collections.Generic;
using System.Xml.Serialization;
using System.Text.Json;
//using Newtonsoft.Json;

public class Student
{
    public int SID { get; set; }
    public string Name { get; set; }
    public int Age { get; set; }
    public List<string> Courses { get; set; }

    public Student() { }
    public Student(int id, string name, int age, List<string> courses)
    {
        SID = id;
        Name = name;
        Age = age;
        Courses = courses;
    }
}

class Program
{
    public static void Main()
    {
        Student s1 = new Student(101,"Arpit Singh",18, new List<string> { "Java", "Python","Business"});

        //The below code demonstrates the working of XML Serialization.
        //Console.WriteLine("XML Serialiaztion in Progress: ");
        //Console.WriteLine("XML Serialiaztion in Completed.");
        XMLSerialize(s1);
        XMLDeSerialize();

        //The below code demonstrates the working of JSON Serialization
        JsonSerialize(s1);
        JsonDeSerialize();

        //The below code using NewtonSoft JSON
        /*
        string json = JsonConvert.SerializeObject(s1);
        Console.WriteLine(json);

        Student de = JsonConvert.DeserializeObject<Student>(json);
        Console.WriteLine(de.Name);
        */
    }

    public static void XMLSerialize(Student s)
    {
        XmlSerializer serializer = new XmlSerializer(typeof(Student));
        using (TextWriter writer = new StreamWriter("student.xml")) { 
        serializer.Serialize(writer, s);
                }
        Console.WriteLine("Student object has been serialized as an XML File.");
    }

    public static void XMLDeSerialize()
    {
        XmlSerializer serializer = new XmlSerializer (typeof(Student));
        using (TextReader reader = new StreamReader("student.xml"))
        {
            Student deserialized = (Student)serializer.Deserialize(reader);
            PrintStudentDetails(deserialized, "XML");
        }
    }
    
    public static void JsonSerialize(Student s)
    {
        string json = JsonSerializer.Serialize(s, new JsonSerializerOptions { WriteIndented = true });
        File.WriteAllText("student.json", json);
        Console.WriteLine("Student JSON file created successfully");
    }

    public static void JsonDeSerialize()
    {
        string json = File.ReadAllText("student.json");
        Student deserialized = JsonSerializer.Deserialize<Student>(json);
        PrintStudentDetails(deserialized,"JSON");
    }
    
    public static void PrintStudentDetails(Student student, string format)
    {
        Console.WriteLine($"[{format} Deserialization]");
        Console.WriteLine($"Student ID: {student.SID}");
        Console.WriteLine($"Student Name: {student.Name}");
        Console.WriteLine($"Student Age: {student.Age}");
        Console.WriteLine($"Student Courses: {string.Join(",", student.Courses)}");
    }
}

```