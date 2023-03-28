import java.util.*;
public class product
{
    String pname,pcode;
    float pprice;
    product (String xpname,String xpcode,float xpprice)
    {
        pname=xpname; //if using the same variable names for parameters use "this" keyword
        pcode=xpcode;
        pprice=xpprice;
    }

    void readdata(String xxpname,String xxpcode,float xxpprice)
    {
        
    }

    public static void main(String[] args)
    {
        product p1=new product("Santoor","Batch100",50);
        product p2=new product("Lux","Batch101",60);
        product p3=new product("Fiama","Batch102",40);

        if (p1.pprice<p2.pprice && p1.pprice<p3.pprice)
        {
            System.out.println("Product with Lowest Price is "+p1.pname+"\nPrice : "+p1.pprice);
        }
        else if (p2.pprice<p1.pprice && p2.pprice<p3.pprice)
        {
            System.out.println("Product with Lowest Price is "+p2.pname+"\nPrice : "+p2.pprice);
        }
        else
        {
            System.out.println("Product with Lowest Price is "+p3.pname+"\nPrice : "+p3.pprice);
        }

    }
}