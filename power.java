import java.util.*;
public class power{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        sc.close();
        int p = a;
        int i = 1;
        while(i < b){
            p *= a;
            i++;
        }
        System.out.println(p);
    }
}