Program Fibonacci;

var
	entrada: string;
	entradaComErro: integer;
	fim: integer;
	anterior: integer;
	atual: integer;
	resultado: integer;	
	desejaUsarNovamente: integer;
	
Begin
  repeat 
    
 	  ClrScr; 
  	writeLn('Bem Vindo ao desafiador calculador de Fibonacci 100% automático Viniccius13');   
  	writeLn();     
  	
	  write('Até qual número você deseja ver a seqûencia de Fibonacci? ');
	  		 		
	  repeat
	    
  		  
			read(entrada); 
			writeLn(); 
			val(entrada, fim, entradaComErro);
			if entradaComErro = 1 then
		  	WriteLn('Valor inválido! Por favor digite um NÚMERO INTEIRO: ')
		  else
			begin
							
				writeLn('Resultado: '); 
				
				anterior := 0;
				atual := 1; 
								
				while ((atual + anterior) <= fim ) do
				begin            
					resultado := atual + anterior; 
					writeLn(anterior, ' + ', atual, ' = ', resultado);
					anterior := atual;
					atual := resultado;
				end; 
					  
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