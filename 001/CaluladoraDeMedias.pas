Program CaluladoraDeMedias;

var
	notas: array [1 .. 100] of real;
	quantidadeNotas: integer;
	entrada: string;
	entradaComErro: integer;
	totalNotas: real;
	mediaFinal: real;
	i: integer;
	desejaUsarNovamente: integer;

Begin
  repeat
 	  ClrScr;
 		totalNotas := 0; 
		quantidadeNotas := 4;
		 
  	writeLn('Bem Vindo � Calculadora de M�dias 2.0 Turbo');
  	repeat
        
			writeLn();
	  	writeLn('Quantidade notas por m�dia: ', quantidadeNotas); 
	  	writeLn('Deseja alterar a quantidade de notas na m�dia? ( s - Sim, n - N�o )');
	    entrada := readkey();
	      
			if entrada = 's' then
				begin 
					repeat
					  writeLn();       
				 	 	writeLn('Qual a quantidade de notas desejada? (M�x. 100)');
					  ReadLn(entrada);
					  
					  val(entrada, quantidadeNotas, entradaComErro);
					  
					  if entradaComErro = 1 then
					  	WriteLn('Valor inv�lido!');
						
					until entradaComErro = 0;
				end
			else if entrada = 'n' then
				begin 
					entradaComErro:= 0;
				end
			else
				begin 
					writeLn('Valor Inv�lido!');
					entradaComErro:= 1;	
				end;
		  			
		until entradaComErro = 0;
		writeLn(); 
	  writeLn('Vamos calcular a m�dia de ', quantidadeNotas , ' notas!');
	  writeLn();
	  
	  for i := 1 to quantidadeNotas do
		begin
		  entradaComErro := 0;
		  
			repeat
			
			  write('Digite a ', i:2, '� nota: ');
			  ReadLn(entrada);
			  
			  val(entrada, notas[i], entradaComErro);
			  
			  if entradaComErro = 1 then
			  	WriteLn('Valor inv�lido!')
			  else
				begin
				  totalNotas := totalNotas + notas[i];
				end;
				
			until entradaComErro = 0;
			
		end;
	
		writeLn();
		mediaFinal := totalNotas/quantidadeNotas;
		
		writeLn('Resultado final:');           
		writeLn();
		
		for i := 1 to quantidadeNotas do
		begin
		  writeLn(' ',i:2,'� nota: ', notas[i]:2:2)
		end;
		
		writeLn();
		writeLn('    M�dia: ', mediaFinal:2:2);
		
		repeat
        
			writeLn();
	    WriteLn('Deseja usar o programa novamente? ( s - Sim, n - N�o )');
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
					writeLn('Valor Inv�lido!');
					entradaComErro:= 1;	
				end;
		  			
		until entradaComErro = 0;
							
	until desejaUsarNovamente <> 1;
		
End.
