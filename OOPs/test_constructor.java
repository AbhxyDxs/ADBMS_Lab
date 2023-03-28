public class test_constructor
{
    int a,b,c;
    test_constructor(int x,int y)
    {
        a=x;
        b=y;
    }
    void sum()
    {
        c=a+b;
        System.out.println("Sum of "+a+" + "+b+" = "+c);
    }
    public static void main(String[] args)
    {
        test_constructor t1=new test_constructor(10,5);
        test_constructor t2=new test_constructor(12,5);
        t1.sum();
        t2.sum();

        
    }
}