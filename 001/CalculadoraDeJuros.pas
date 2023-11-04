Program CalculadoraDeJuros;

var
	entrada: string;
	entradaComErro: integer;
	desejaUsarNovamente: integer;
	taxaDeJuros: real;
	valorCapital: real;
	valorJuros: real;
	tempo: integer;
	valorComJuros: real;
	tipoJuros: string;
	i: integer;	
Begin

  repeat 
    ClrScr;
    
  	writeLn('Bem vindo a maior Calculadora de Juros De Todos os Tempos');
  	
  	repeat
  			writeLn();
				writeLn('Escolha uma opção: ');
			 	writeLn('1 - Juros Simples');
			 	writeLn('2 - Juros Composto');
			 	writeLn('0 - Sair do programa');
			 	entrada := readkey();
		  	writeLn();
			 
			 	if entrada = '0' then
			 		exit
			 	else if ( entrada = '1' ) OR ( entrada = '2' ) then
			  begin
			  
			  	tipoJuros := entrada;
			  	
			  	repeat
			  	
				  	write('Digite o valor do capital em Reais (Ex.: 9.99): ');
			  		readln(entrada);
			  		
		  			val(entrada,valorCapital,entradaComErro);
		  			
		  			if entradaComErro = 1 then
							WriteLn('Valor inválido!')
						else
						begin
							
					  	repeat
					  	
						  	write('Digite a porcentagem de juros a.m. (Ex.: 15.5): ');
					  		readln(entrada);
					  		
				  			val(entrada,taxaDeJuros,entradaComErro);
				  			
				  			if entradaComErro = 1 then
									WriteLn('Valor inválido!')
								else
								begin
								
							  	repeat
							  	
								  	write('Digite a quantide de meses (Ex.: 5): ');
							  		readln(entrada);
							  		
						  			val(entrada,tempo,entradaComErro);
						  			
						  			if entradaComErro = 1 then
											WriteLn('Valor inválido!')
										else
										begin
											
											if tipoJuros = '1' then
											begin
												valorJuros := taxaDeJuros/100 * valorCapital * tempo;
												valorComJuros := valorCapital + valorJuros;
												
												writeLn();
												writeLn('Resultado: ');
												writeLn('Capital Inicial: R$ ', valorCapital:2:2);    
												writeLn('Taxa de Juros:   ', taxaDeJuros:2:2, '% a.m.');
												writeLn('Tempo:           ',((tempo)DIV(12)), ' anos(s) e ',((tempo)MOD(12)), ' mes(es)');  
												writeLn('Valor de Juros:  R$ ', valorJuros:2:2);  
												writeLn('Valor Final:     R$ ', valorComJuros:2:2);
											end
											else if tipoJuros = '2' then 
											begin
											
												valorComJuros := valorCapital;
												writeLn();
												writeLn('Resultado: ');
												writeLn();
												writeLn(' MÊS  |  VALOR CAPITAL  |  VALOR JUROS  |  TOTAL ACUMULADO ');
												writeLn();
												for i := 1 to tempo do
              					begin
              						valorJuros :=  valorComJuros * (taxaDeJuros / 100);
              						valorComJuros := valorComJuros + valorJuros;
              						
													writeLn('  ',i:2, '  |  R$ ', (valorComJuros-valorJuros):7:2, '  |  R$ ',valorJuros:5:2, '  |  ', valorComJuros:7:2 );
              					end;
              					
												writeLn();
												writeLn('Resumo: ');
												writeLn('Capital Inicial: R$ ', valorCapital:2:2);    
												writeLn('Taxa de Juros:   ', taxaDeJuros:2:2, '% a.m.');
												writeLn('Tempo:           ',((tempo)DIV(12)), ' anos(s) e ',((tempo)MOD(12)), ' mes(es)');
												writeLn('Total de Juros:  R$', (valorComJuros-valorCapital):2:2);
												writeLn('Valor Final:     R$', valorComJuros:2:2);
											end;										
												
											 
										end;	
						  			
									until entradaComErro = 0;
									 
								end;	
				  			
							until entradaComErro = 0;
							 
						end;	
		  			
					until entradaComErro = 0;
			 
			 end;
			 	
  	until entradaComErro = 0;
  	
  	repeat
	        
			writeLn();
      WriteLn('Deseja usar o programa novamente? ( s - Sim, n - Não )');
      entrada := readkey();
        
			if entrada = 's' then
				begin 
					desejaUsarNovamente := 1;
					entradaComErro:= 0;
				end
			else if entrada = 'n' then
				begin 
					desejaUsarNovamente := 0;
					entradaComErro:= 0;
				end
			else
				begin 
					writeLn('Valor Inválido!');
					entradaComErro:= 1;	
				end;
		  			
		until entradaComErro = 0;
						
	until desejaUsarNovamente <> 1;
  
End.