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
  	
	  write('Digite um n�mero inteiro: ');
	  		 		
	  repeat
	    
  		  
			read(entrada); 
			writeLn(); 
			val(entrada, numero, entradaComErro);
			if entradaComErro = 1 then
		  	WriteLn('Valor inv�lido! Por favor digite um N�MERO INTEIRO: ')
		  else
			begin
							
				if odd(numero) then //pascalzim tem essa fun��o que tira a gra�a da brincadeira haha
					resultado := '�MPAR'
				else
					resultado := 'PAR';
					
				WriteLn('O n�mero ', numero, ' � ', resultado); 	  
			end;
					
		until entradaComErro = 0;
		
		
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