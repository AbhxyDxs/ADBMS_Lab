import java.util.*;
public class user_sort
{
 public static void main(String[] args)
 {
  int i,j;
  Scanner sc= new Scanner(System.in);    
  System.out.print("Enter size of array");  
  int size= sc.nextInt();  

  int[] arr = new int[10];
  System.out.println("Enter array elemnets");
  for(i=0;i<size;++i)
  {
  arr[i] = sc.nextInt();
  } 
 


   for(i=0;i<size;++i)
   {
     for(j=0;j<size;++j)
     {
       int temp = 0;
       if(arr[i]<arr[j])
       {
         temp=arr[i];
         arr[i]=arr[j];
         arr[j]=temp;
        }
      }
   }
   System.out.println("======================");
    System.out.println("After Sorting");
  
   for(i=0;i<size;++i)
   {
    System.out.println(arr[i]);
   }
   System.out.println("======================");
}
}
