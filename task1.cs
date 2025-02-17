using System;

public class HelloWorld
{
    public static void Main(string[] args)
    {
        Console.Write("Enter the first number: ");
        int x = Convert.ToInt32(Console.ReadLine());
        Console.Write("Enter the operator number[+-/*]: ");
        char op = Convert.ToChar(Console.ReadLine());
        Console.Write("Enter the second number: ");
        int y = Convert.ToInt32(Console.ReadLine());
        if(op == '+'){
          int plus= x+y;
          Console.WriteLine(plus);
        }
        else if(op == '-'){
            int minus= x-y;
            Console.WriteLine(minus);
        }
        else if(op == '*'){
            int multiplication = x*y;
            Console.WriteLine(multiplication);
        }
        
        else if(op == '/' && y == 0){
            Console.WriteLine("can't divide by zero");
        }
        
        else if(op == '/'){
           int divide=x/y; 
           Console.WriteLine(divide);
        }
    }
}