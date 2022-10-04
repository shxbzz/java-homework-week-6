package javaworksheethomework;

import java.util.Scanner;
public class Sum_Sub_Mul_Div{
    public static void main(String[]args){
        Scanner sc = new Scanner (System.in);
        System.out.println ("Input the first number");
        int n1 = sc.nextInt();
        System.out.println ("Input the second number");
        int n2 = sc.nextInt();
        //sum
        System.out.println(n1 + "x" + n2 + "=" + (n1 * n2));
    }
}
