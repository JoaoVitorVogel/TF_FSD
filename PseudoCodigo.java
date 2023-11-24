/*
 * Pseudo código referente ao tF de fundamentos de sistemas digitai
 * 
 * João Vitor Vogel 23/11/2023
 */

public class PseudoCodigo {
    // Simula os registradores
    static int t1 = 0; //contador para for
    static int t2 = 0; //variavel primeiro vetor
    static int t3 = 0; //variavel segundo vetor
    static int t4 = 0; //resultado de operacao
    static int t5 = 0;
    static int t6 = 0;
    static int t7 = 0;

    static int t8 = 0;
    static int t9 = 0;

    //Declaração de variaveis na memoria
        
    static int[] A = {7, 15, 9, 22, 5, -3, -6, -17, -1, -21};
    static int[] B = {16, 13, 5, 9, 54, -4, -5, -8, -2, -12};
    static int[] C = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    static int[] D = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    static int mv = 0;  //maior valor dos vetores
    static int st = 0;  //soma total dos vetores
    static int sm = 0;  //resultado final da multuplicação


    public static void main(String[] args){

        
        for(t1=0; t1 < 10; t1++){
            soma();
        }

        for(t1=0; t1 < 10; t1++){
            subtrai();
        }

        t4 = 0;
        for(t1=0; t1 < 10; t1++){
            maiorValor();
        }
        mv = t4;

        t4 = 0;
        for(t1=0; t1 < 10; t1++){
            somaTodos();
        }
        st = t4;

        
        t2 = st; //resultado da soma
        t3 = mv; //maior valor, ou total de repetições
        t4 = 0; 

        for(t1=0; t1 < t3; t1++){
            multiplica();
        }
        
        sm = t4;

    
    }

    public static void multiplica(){
        
        t4 = t4 + t2;
    }

    public static void somaTodos(){

        t2 = C[t1];
        t3 = D[t1];

        t4 = t4 + t2;
        t4 = t4 + t3;

    }

    public static void maiorValor(){
        
        t2 = C[t1];
        t3 = D[t1];

        if(t4 < t2){
            t4 = t2;
        }
        if(t4 < t3){
            t4 = t3;
        }
    }

    public static void soma(){
        
        t2 = A[t1];
        t3 = B[t1];

        t4 = t2 + t3;
        C[t1] = t4;

    }

    public static void subtrai(){
        
        t2 = A[t1];
        t3 = B[t1];

        t4 = t2 + t3;
        D[t1] = t4;

    }
    
}
