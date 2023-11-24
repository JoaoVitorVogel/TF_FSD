# João Vitor Vogel
# joao.vogel@edu.pucrs.br
# 23/11/2023

.text
	.globl	main		# onde o código inicia.
	
main:
    xor	$t0,$t0,$t0 	# zera o $t0 = (i)
    xor	$t1,$t1,$t1	    # zera o $t1 = variavel vetor A
    xor	$t2,$t2,$t2    	# zera o $t2 = variavel vetor B
    xor	$t3,$t3,$t3	    # zera o $t3 = resultado de operação
    xor	$t4,$t4,$t4	    # zera o $t4 = endereço vetor A
    xor	$t5,$t5,$t5	    # zera o $t5 = endereço vetor B
    xor	$t6,$t6,$t6     # zera o $t6 = endereço vetor C

    la  $t4, a          # $t4 recebe o endereço de A(i)
    la  $t5, b          # $t5 recebe o endereço de B(i)
    la  $t6, c          # $t6 recebe o endereço de C(i)
soma:
    lw  $t1, 0($t4)     # $t1 recebe o valor de A(i)
    lw  $t2, 0($t5)     # $t2 recebe o valor de B(i)

    add $t3, $t1, $t2   # $t3 recebe ($t1 + $t2)
    sw  $t3, 0($t6)     # guarda $t3 na memoria C(i)

    add	$t0,$t0,1	    # incrementa o (i)
    add	$t4,$t4,4	    # incrementa o endereço de A (+4 porque é uma word)
	add	$t5,$t5,4	    # incrementa o endereço de B (+4 porque é uma word)
    add	$t6,$t6,4	    # incrementa o endereço de D (+4 porque é uma word)

    blt	$t0, 10, soma	# pula para a "soma" se i < n ($t0 < 10)


    xor	$t0,$t0,$t0 	# zera o $t0 = (i)
    xor	$t1,$t1,$t1	    # zera o $t1 = variavel vetor A
    xor	$t2,$t2,$t2    	# zera o $t2 = variavel vetor B
    xor	$t3,$t3,$t3	    # zera o $t3 = resultado de operação
    xor	$t4,$t4,$t4	    # zera o $t4 = endereço vetor A
    xor	$t5,$t5,$t5	    # zera o $t5 = endereço vetor B
    xor	$t6,$t6,$t6     # zera o $t6 = endereço vetor D

    la  $t4, a          # $t4 recebe o endereço de A(i)
    la  $t5, b          # $t5 recebe o endereço de B(i)
    la  $t6, d          # $t6 recebe o endereço de D(i)
subtrai:
    lw  $t1, 0($t4)     # $t1 recebe o valor de A(i)
    lw  $t2, 0($t5)     # $t2 recebe o valor de B(i)

    sub $t3, $t1, $t2   # $t3 recebe ($t1 - $t2)
    sw  $t3, 0($t6)     # guarda $t3 na memoria D(i)

    add	$t0,$t0,1	    # incrementa o (i)
    add	$t4,$t4,4	    # incrementa o endereço de A (+4 porque é uma word)
	add	$t5,$t5,4	    # incrementa o endereço de B (+4 porque é uma word)
    add	$t6,$t6,4	    # incrementa o endereço de D (+4 porque é uma word)

    blt	$t0, 10, subtrai # pula para o "subtrai" se i < n ($t0 < 10)


    xor	$t0,$t0,$t0 	# zera o $t0 = (i)
    xor	$t1,$t1,$t1	    # zera o $t1 = variavel vetor C
    xor	$t2,$t2,$t2    	# zera o $t2 = variavel vetor D
    xor	$t3,$t3,$t3	    # zera o $t3 = resultado de operação
    xor	$t4,$t4,$t4	    # zera o $t4 = endereço vetor C
    xor	$t5,$t5,$t5	    # zera o $t5 = endereço vetor D
    xor	$t6,$t6,$t6	    # zera o $t6 = endereço de mv

    la  $t4, c          # $t4 recebe o endereço de C(i)
    la  $t5, d          # $t5 recebe o endereço de D(i)
    la  $t6, mv         # $t6 recebe o endereço de mv
maior:
    lw  $t1, 0($t4)     # $t1 recebe o valor de C(i)
    lw  $t2, 0($t5)     # $t2 recebe o valor de D(i)

    blt	$t1, $t3, proximoMaiorC # pula para o "proximoMaiorC" se $t1 < $t3 (c < mv)
    add $t3, $t1, 0

proximoMaiorC:
    blt	$t2, $t3, proximoMaiorD # pula para o "proximoMaiorD" se $t2 < $t3 (d < mv)
    add $t3, $t1, 0

proximoMaiorD:
    add	$t0,$t0,1	    # incrementa o (i)
    add	$t4,$t4,4	    # incrementa o endereço de A (+4 porque é uma word)
	add	$t5,$t5,4	    # incrementa o endereço de B (+4 porque é uma word)

    blt	$t0, 10, maior  # pula para o "maior" se i < n ($t0 < 10)

    sw  $t3, 0($t6)     # guarda $t3 na memoria mv



    xor	$t0,$t0,$t0 	# zera o $t0 = (i)
    xor	$t1,$t1,$t1	    # zera o $t1 = variavel vetor C
    xor	$t2,$t2,$t2    	# zera o $t2 = variavel vetor D
    xor	$t3,$t3,$t3	    # zera o $t3 = resultado de operação
    xor	$t4,$t4,$t4	    # zera o $t4 = endereço vetor C
    xor	$t5,$t5,$t5	    # zera o $t5 = endereço vetor D
    xor	$t6,$t6,$t6	    # zera o $t6 = endereço de st

    la  $t4, c          # $t4 recebe o endereço de C(i)
    la  $t5, d          # $t5 recebe o endereço de D(i)
    la  $t6, st         # $t5 recebe o endereço de st
somaTotal:
    lw  $t1, 0($t4)     # $t1 recebe o valor de C(i)
    lw  $t2, 0($t5)     # $t2 recebe o valor de D(i)

    add $t3, $t3, $t1   # $t3 recebe ele mais $t1
    add $t3, $t3, $t2   # $t3 recebe ele mais $t2

    add	$t0,$t0,1	    # incrementa o (i)
    add	$t4,$t4,4	    # incrementa o endereço de A (+4 porque é uma word)
	add	$t5,$t5,4	    # incrementa o endereço de B (+4 porque é uma word)

    blt	$t0, 10, somaTotal	# pula para a "somaTotal" se i < n ($t0 < 10)

    sw  $t3, 0($t6)     # guarda $t3 na memoria mv


    xor	$t0,$t0,$t0 	# zera o $t0 = (i)
    xor	$t1,$t1,$t1	    # zera o $t1 = variavel mv
    xor	$t2,$t2,$t2    	# zera o $t2 = variavel st
    xor	$t3,$t3,$t3	    # zera o $t3 = resultado de operação
    xor	$t4,$t4,$t4	    # zera o $t4 = endereço mv
    xor	$t5,$t5,$t5	    # zera o $t5 = endereço st
    xor	$t6,$t6,$t6	    # zera o $t6 = endereço sm

    la  $t4, mv         # $t4 recebe o endereço de mv
    la  $t5, st         # $t5 recebe o endereço de st
    lw  $t1, 0($t4)     # $t1 recebe o valor de mv
    lw  $t2, 0($t5)     # $t2 recebe o valor de st
    la  $t6, sm         # $t5 recebe o endereço de sm
multiplica:

    add $t3, $t3, $t2   # $t3 recebe ele mais $t2
    
    add	$t0,$t0,1	    # incrementa o (i)

    blt	$t0, $t1, multiplica    # pula para o "multiplica" se i < n ($t0 < 10)

    sw  $t3, 0($t6)     # guarda $t3 na memoria sm

end:	j	end


.data
a:	.word	7 15 9 22 5 -3 -6 -17 -1 -21	# Vetor A
b:	.word	16 13 5 9 54 -4 -5 -8 -2 -12	# Vetor B
c:	.word	0 0 0 0 0 0 0 0 0 0				# Vetor C
d:	.word	0 0 0 0 0 0 0 0 0 0				# Vetor D
mv:	.word	0								# Maior valor
st:	.word	0								# Resultado soma
sm:	.word	0								# Resultado final
