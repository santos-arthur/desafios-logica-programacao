Program ConversorDeMoedas;

var
	entrada: string;
	entradaComErro: integer;
	cotacaoDolar: real;
	valorReal: real;
	valorDolar: real;
	desejaUsarNovamente: integer;
	
Begin

  repeat 
    ClrScr;
    
  	writeLn('Bem vindo ao grandisíssimo Conversor de Moedas (Dolar/Real) Ultimate Edition');
  	
  	repeat
  		if cotacaoDolar = 0 then
			begin
		  	writeLn();	  	
		  	write('Digite a cotação atual do Dolar (Ex.: 2.55): ');
		  	readln(entrada);
		  	writeLn();	  
  	  end;
	  	  
	  	val(entrada,cotacaoDolar,entradaComErro);
	  	
			if entradaComErro = 1 then
				WriteLn('Valor inválido!')
			else
			begin
				writeLn('Escolha uma opção: ');
			 	writeLn('1 - Converter Real para Dolar');
			 	writeLn('2 - Converter Dolar para Real');
			 	writeLn('3 - Alterar a cotação do Dolar');
			 	writeLn('0 - Sair do programa');
			 	entrada := readkey();
		  	writeLn();	
			 
			 	if entrada = '0' then
			 		exit
			 	else if entrada = '1' then
			  begin
			  	repeat
			  	
				  	write('Digite o valor em Reais (Ex.: 9.99): ');
			  		readln(entrada);
			  		
		  			val(entrada,valorReal,entradaComErro);
		  			
		  			if entradaComErro = 1 then
							WriteLn('Valor inválido!')
						else
						begin
							valorDolar := valorReal / cotacaoDolar;
							
							writeLn();
							writeLn('Resultado: ');
							writeLn('Cotação do Dolar:     R$ ', cotacaoDolar:2:2);
							writeLn('Valor em Reais:       R$ ', valorReal:2:2);
							writeLn('Conversão para Dolar:  $ ', valorDolar:2:2);
							 
						end;	
		  			
					until entradaComErro = 0;
			  end
			 	else if entrada = '2' then 
			  begin
			  	repeat
			  	
				  	write('Digite o valor em Dolares (Ex.: 9.99): ');
			  		readln(entrada);
			  		
		  			val(entrada,valorDolar,entradaComErro);
		  			
		  			if entradaComErro = 1 then
							WriteLn('Valor inválido!')
						else
						begin
							valorReal := valorDolar * cotacaoDolar;
							
							writeLn();
							writeLn('Resultado: ');
							writeLn('Cotação do Dolar:     R$ ', cotacaoDolar:2:2);
							writeLn('Valor em Dolar:        $ ', valorDolar:2:2);
							writeLn('Conversão para Reais: R$ ', valorReal:2:2);
							 
						end;	
		  			
					until entradaComErro = 0;
			  end
			 	else if entrada = '3' then
			  begin
			  	entradaComErro := 1;
			  	cotacaoDolar := 0;
			  end
			 	else
					WriteLn('Valor inválido!')
			 
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