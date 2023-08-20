Program ProjetoI;

uses
crt;

Var
nome, cpf: string;
idade, tam, opcao, prazo: integer;
juros, taxaMercadoria, total, valor: real;

Begin
  writeln('-------------- SIMULADOR DE EMPR�STIMO BANC�RIO --------------');
  writeln('------------------------- Bem Vindo! -------------------------');
  writeln('Informe seus dados:');
  write('Nome Completo: ');
  readln(nome);
  
  repeat
    write('Informe o seu CPF: ');
    readln(cpf);
    tam := length(cpf);
  until tam = 11;
  
  repeat
    write('Idade: ');
    readln(idade);
    if (idade < 18) then
    begin
      writeln('Sua idade � incompat�vel com a simula��o!');
      writeln('Digite uma idade maior de 18 anos');
    end;
  until idade >= 18;
  
  repeat
    writeln('Digite:');
    writeln('1 - Mercadorias');
    writeln('2 - Autom�veis');
    writeln('3 - Reforma');
    readln(opcao);
  until (opcao > 0) and (opcao <= 3);
  
  clrscr;
  
  if opcao = 1 then
  begin
    writeln('-----------------------------------------------------------');
    writeln('Valor m�nimo: R$100 --- Valor m�ximo: R$5.000');
    writeln('Prazo m�nimo: 6 meses --- Prazo m�ximo: 12 meses');
    writeln('Juros de 1.5(%) ao m�s');
    writeln('-----------------------------------------------------------');
    write('Qual valor desejado? ');
    readln(valor);
    if (valor >= 100) and (valor <= 5000) then
    begin
      taxaMercadoria := 1.5 / 100;
      write('Qual prazo desejado? ');
      readln(prazo);
      while (prazo < 6) or (prazo > 12) do
      begin
        writeln('Prazo inv�lido!');
        write('Informe o prazo novamente: ');
        readln(prazo);
      end;
      juros := valor * taxaMercadoria * prazo;
      total := valor + juros;
      writeln('Valor total a ser pago: R$', total:6:2, ' | Juros:', juros:6:2);
      writeln('-----------------------------------------------------------');
      writeln('Formas de Pagamento');
      writeln('- Pix');
      writeln('- Boleto');
      writeln('-----------------------------------------------------------');
      writeln('Simula��o Encerrada, Obrigado, ', nome);
    end
    else
    begin
      writeln('Valor informado � incompat�vel!');
      writeln('Informe novamente o valor desejado!');
    end;
  end;
  
  if opcao = 2 then
  begin
    writeln('-----------------------------------------------------------');
    writeln('Valor m�nimo: R$5.000 --- Valor m�ximo: R$10.000');
    writeln('Prazo m�nimo: 6 meses --- Prazo m�ximo: 12 meses');
    writeln('Juros de 2.0(%) ao m�s');
    writeln('-----------------------------------------------------------');
    write('Qual valor desejado? ');
    readln(valor);
    if (valor >= 5000) and (valor <= 10000) then
    begin
      taxaMercadoria := 2.0 / 100;
      write('Qual prazo desejado? ');
      readln(prazo);
      while (prazo < 6) or (prazo > 12) do
      begin
        writeln('Prazo inv�lido!');
        write('Informe o prazo novamente: ');
        readln(prazo);
      end;
      juros := valor * taxaMercadoria * prazo;
      total := valor + juros;
      writeln('Valor total a ser pago: R$', total:6:2, ' | Juros:', juros:6:2);
      writeln('-----------------------------------------------------------');
      writeln('Formas de Pagamento');
      writeln('- Pix');
      writeln('- Boleto');
      writeln('-----------------------------------------------------------');
      writeln('Simula��o Encerrada, Obrigado, ', nome);
    end
    else
    begin
      writeln('Valor informado � incompat�vel!');
      writeln('Informe novamente o valor desejado!');
    end;
  end;
  
  if opcao = 3 then
  begin
    writeln('-----------------------------------------------------------');
    writeln('Valor m�nimo: R$10.000 --- Valor m�ximo: R$15.000');
    writeln('Prazo m�nimo: 6 meses --- Prazo m�ximo: 12 meses');
    writeln('Juros de 2.5(%) ao m�s');
    writeln('-----------------------------------------------------------');
    write('Qual valor desejado? ');
    readln(valor);
    if (valor >= 10000) and (valor <= 15000) then
    begin
      taxaMercadoria := 2.5 / 100;
      write('Qual prazo desejado? ');
      readln(prazo);
      while (prazo < 6) or (prazo > 12) do
      begin
        writeln('Prazo inv�lido!');
        write('Informe o prazo novamente: ');
        readln(prazo);
      end;
      juros := valor * taxaMercadoria * prazo;
      total := valor + juros;
      writeln('Valor total a ser pago: R$', total:6:2, ' | Juros:', juros:6:2);
      writeln('-----------------------------------------------------------');
      writeln('Formas de Pagamento');
      writeln('- Pix');
      writeln('- Boleto');
      writeln('-----------------------------------------------------------');
      writeln('Simula��o Encerrada, Obrigado, ', nome);
    end
    else
    begin
      writeln('Valor informado � incompat�vel!');
      writeln('Informe novamente o valor desejado!');
    end;
  end;
  
  readkey;
End.
