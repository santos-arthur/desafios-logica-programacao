Program ParOuImparRoubado;

var
	entrada: string;
	entradaComErro: integer;
	numero: integer;
	resultado: string;
	desejaUsarNovamente: integer;
	
Begin
  repeat 
    
 	  ClrScr; 
  	writeLn('Bem Vindo ao grande resolvedor de Par ou Impar 3001');   
  	writeLn();     
  	
	  write('Digite um número inteiro: ');
	  		 		
	  repeat
	    
  		  
			read(entrada); 
			writeLn(); 
			val(entrada, numero, entradaComErro);
			if entradaComErro = 1 then
		  	WriteLn('Valor inválido! Por favor digite um NÚMERO INTEIRO: ')
		  else
			begin
							
				if odd(numero) then //pascalzim tem essa função que tira a graça da brincadeira haha
					resultado := 'ÍMPAR'
				else
					resultado := 'PAR';
					
				WriteLn('O número ', numero, ' é ', resultado); 	  
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