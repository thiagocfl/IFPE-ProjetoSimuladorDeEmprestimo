Program ProjetoI;
Var
nome, cpf:string;
idade, tam, opcao, prazo:integer;
juros, taxaMercadoria, total, valor: real;
Begin{principal}
  writeln('-------------- SIMULADOR DE EMPRÉSTIMO BANCÁRIO --------------');
  writeln('------------------------- Bem Vindo! -------------------------');
  writeln('Informe seus dados:');
  write('Nome Completo: '); readln(nome);
  write('Idade: '); readln(idade);
  
  if(idade >= 18) then
  begin
    while (tam <> 11) do
    begin
      write('Informe o seu CPF: '); readln(cpf);
      tam:=length(cpf);
    end;
    while (opcao = 0) or (opcao > 3) do
    begin
      writeln('Digite');
      writeln('1 - Mercadorias');
      writeln('2 - Automoveis');
      writeln('3 - Reforma');
      readln(opcao);
    end;
    clrscr;
    
    if(opcao = 1) then
    begin
      writeln('-----------------------------------------------------------');
      writeln('Valor minimo: R$100 --- Valor maximo: R$5.000');
      writeln('Prazo minimo: 6 meses --- Prazo maximo: 12 meses');
      writeln('Juros de 1.5(%) ao mes');
      writeln('-----------------------------------------------------------');
      write('Qual valor desejado? '); readln(valor);
      if(valor >= 100) and (valor <= 5000) then
      begin
        taxaMercadoria:= 1.5/100;
        write('Qual prazo desejado? '); readln(prazo);
        juros:= valor * taxaMercadoria * prazo;
        total:= valor + juros;
        writeln('Valor total a ser pago: R$', total:6:2);
        writeln('-----------------------------------------------------------');
        writeln('Formas de Pagamento');
        writeln('- Pix');
        writeln('- Boleto');
        writeln('-----------------------------------------------------------');
        writeln('Simulação Encerrada, Obrigado, ', nome);
      end //3 if
      else
        writeln('Valor informado nao se enquadra na simulacao!');
    end //2 if
    
    else if(opcao = 2) then
    begin
      writeln('-----------------------------------------------------------');
      writeln('Valor minimo: R$1.000 --- Valor maximo: R$10.000');
      writeln('Prazo minimo: 6 meses --- Prazo maximo: 12 meses');
      writeln('Juros de 2.0(%) ao mes');
      writeln('-----------------------------------------------------------');
      write('Qual valor desejado? '); readln(valor);
      if(valor >= 1000) and (valor <= 10000) then
      begin
        taxaMercadoria:= 2.0/100;
        write('Qual prazo desejado? '); readln(prazo);
        juros:= valor * taxaMercadoria * prazo;
        total:= valor + juros;
        writeln('Valor total a ser pago: R$', total:6:2);
        writeln('-----------------------------------------------------------');
        writeln('Formas de Pagamento');
        writeln('- Pix');
        writeln('- Boleto');
        writeln('-----------------------------------------------------------');
        writeln('Simulação Encerrada, Obrigado, ', nome);
      end
      else
        writeln('Valor informado nao se enquadra na simulacao!');
    end
    
    else if(opcao = 3) then
    begin
      writeln('-----------------------------------------------------------');
      writeln('Valor minimo: R$10.000 --- Valor maximo: R$15.000');
      writeln('Prazo minimo: 6 meses --- Prazo maximo: 12 meses');
      writeln('Juros de 2.5(%) ao mes');
      writeln('-----------------------------------------------------------');
      writeln('Qual valor desejado? '); readln(valor);
      if(valor >= 10000) and (valor <= 15000) then
      begin //4 if
        taxaMercadoria:= 2.5/100;
        write('Qual prazo desejado? '); readln(prazo);
        juros:= valor * taxaMercadoria * prazo;
        total:= valor + juros;
        writeln('Valor total a ser pago: R$', total:6:2);
        writeln('-----------------------------------------------------------');
        writeln('Formas de Pagamento');
        writeln('- Pix');
        writeln('- Boleto');
        writeln('-----------------------------------------------------------');
        writeln('Simulação Encerrada, Obrigado, ', nome);
      end //4 if
      else
      writeln('Valor informado nao se enquadra na simulacao!');
    end;
  end //if
  else
  writeln('Sua idade e incompativel com a simulacao!');
  readkey;
End. //principal