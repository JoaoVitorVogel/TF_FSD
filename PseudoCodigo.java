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
        
    static int[] A = {7, 15, 9, 12, 5, -23, -6, -17, -18, -21};
    static int[] B = {16, 13, 5, 9, 54, -24, -5, -8, -20, -12};
    static int[] C = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    static int[] D = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};


    public static void main(String[] args){

        
        for(t1=0; t1 < 10; t1++){
            soma();
        }

        for(t1=0; t1 < 10; t1++){
            subtrai();
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
    

    public static int multiplica(int a, int b){
        int acumula = 0;
        int vezes = b;

        // se B eh negativo, troca o sinal
        if(b < 0){
            vezes = 0 - vezes;
        }
        
        // acumula A, B vezes
        while(vezes!=0){
            acumula = acumula + a;
            vezes = vezes - 1;
        }

        // se B eh negativo, trocamos o sinal do resultado
        if(b < 0){
            acumula = 0 - acumula;
        }
        
        return acumula;
    }
}
