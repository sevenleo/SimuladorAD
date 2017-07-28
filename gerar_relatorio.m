%limpa grafico
clf
% Total de iteracoes
Iter = 10^3; 

while Iter <= 10^4
   
    % como usado no código do Vilc
    C = 10;  

    % taxa de desinfeccao
    mu=1;


    %Intervalo do tamanho da população
    dominio = [10:5:60];

    %Booleano para usar a nossa criatividade ou não
    criatividade=false;
    if criatividade
      %disp("Codigo criativo");
    else
      %disp("Codigo original");
    endif
    
    
    natalidade=true;
    %disp("natalidade");
    %disp(natalidade);

    mortalidade=true;
    %disp("mortalidade");
    %disp(mortalidade);

    recuperado=true;
    %disp("recuperado");
    %disp(recuperado);
    
    
    modelo='m';
    %disp(modelo);
    
    
    %disp("Iteracoes:");
    %disp(Iter);

    %disp("mu");
    %disp(mu);

    % Gamma - taxa de infecao endogena
    for gamma = 0.1:0.5:2.6
        %Armazena o numero de infectados estimado
        p_ds = zeros(11,1);              
        %Armazena as margens de erro associadas ao anterior
        margenserr = zeros(11,1);        

        N = 10;
        %disp("gamma:");
        %disp(gamma);
        for k=1:11
            % Lambda - taxa de infecao exogena
            lambda = C/N;
            % usar 'a' para aditivo, 'm' para multiplicativo
            [p_d, margemerr] = simularSI(N, Iter, lambda, gamma , mu, criatividade,natalidade,mortalidade,recuperado, modelo);  
            p_ds(k) = p_d;
            margenserr(k) = margemerr;
            N = N + 5;
        end
        %geração do gráfico (com a margem de erro)
        %saveas(errorbar(dominio, p_ds, margenserr),'imagem.jpg');
        errorbar(dominio, p_ds, margenserr);
        hold on;
    end

    legend('gamma = 0.1', 'gamma = 0.6', 'gamma = 1.1', 'gamma = 1.6', 'gamma = 2.1', 'gamma = 2.6');
    xlim([10 75])
    saveas( errorbar(dominio, p_ds, margenserr),  strcat( "graficos/",modelo,"_Iter_",num2str(Iter),"n","m","r",'.jpg') );
    
    Iter=Iter*10;
    clf
endwhile

disp("1");












%limpa grafico
clf
% Total de iteracoes
Iter = 10^3; 

while Iter <= 10^4
   
    % como usado no código do Vilc
    C = 10;  

    % taxa de desinfeccao
    mu=1;


    %Intervalo do tamanho da população
    dominio = [10:5:60];

    %Booleano para usar a nossa criatividade ou não
    criatividade=false;
    if criatividade
      %disp("Codigo criativo");
    else
      %disp("Codigo original");
    endif
    
    
    natalidade=false;
    %disp("natalidade");
    %disp(natalidade);

    mortalidade=false;
    %disp("mortalidade");
    %disp(mortalidade);

    recuperado=true;
    %disp("recuperado");
    %disp(recuperado);
    
    
    modelo='m';
    %disp(modelo);
    
    
    %disp("Iteracoes:");
    %disp(Iter);

    %disp("mu");
    %disp(mu);

    % Gamma - taxa de infecao endogena
    for gamma = 0.1:0.5:2.6
        %Armazena o numero de infectados estimado
        p_ds = zeros(11,1);              
        %Armazena as margens de erro associadas ao anterior
        margenserr = zeros(11,1);        

        N = 10;
        %disp("gamma:");
        %disp(gamma);
        for k=1:11
            % Lambda - taxa de infecao exogena
            lambda = C/N;
            % usar 'a' para aditivo, 'm' para multiplicativo
            [p_d, margemerr] = simularSI(N, Iter, lambda, gamma , mu, criatividade,natalidade,mortalidade,recuperado, modelo);  
            p_ds(k) = p_d;
            margenserr(k) = margemerr;
            N = N + 5;
        end
        %geração do gráfico (com a margem de erro)
        %saveas(errorbar(dominio, p_ds, margenserr),'imagem.jpg');
        errorbar(dominio, p_ds, margenserr);
        hold on;
    end

    legend('gamma = 0.1', 'gamma = 0.6', 'gamma = 1.1', 'gamma = 1.6', 'gamma = 2.1', 'gamma = 2.6');
    xlim([10 75])
    saveas( errorbar(dominio, p_ds, margenserr),  strcat( "graficos/",modelo,"_Iter_",num2str(Iter),"r",'.jpg') );
    
    Iter=Iter*10;
    clf
endwhile



disp("2");









%limpa grafico
clf
% Total de iteracoes
Iter = 10^3; 

while Iter <= 10^4
   
    % como usado no código do Vilc
    C = 10;  

    % taxa de desinfeccao
    mu=1;


    %Intervalo do tamanho da população
    dominio = [10:5:60];

    %Booleano para usar a nossa criatividade ou não
    criatividade=false;
    if criatividade
      %disp("Codigo criativo");
    else
      %disp("Codigo original");
    endif
    
    
    natalidade=false;
    %disp("natalidade");
    %disp(natalidade);

    mortalidade=true;
    %disp("mortalidade");
    %disp(mortalidade);

    recuperado=false;
    %disp("recuperado");
    %disp(recuperado);
    
    
    modelo='m';
    %disp(modelo);
    
    
    %disp("Iteracoes:");
    %disp(Iter);

    %disp("mu");
    %disp(mu);

    % Gamma - taxa de infecao endogena
    for gamma = 0.1:0.5:2.6
        %Armazena o numero de infectados estimado
        p_ds = zeros(11,1);              
        %Armazena as margens de erro associadas ao anterior
        margenserr = zeros(11,1);        

        N = 10;
        %disp("gamma:");
        %disp(gamma);
        for k=1:11
            % Lambda - taxa de infecao exogena
            lambda = C/N;
            % usar 'a' para aditivo, 'm' para multiplicativo
            [p_d, margemerr] = simularSI(N, Iter, lambda, gamma , mu, criatividade,natalidade,mortalidade,recuperado, modelo);  
            p_ds(k) = p_d;
            margenserr(k) = margemerr;
            N = N + 5;
        end
        %geração do gráfico (com a margem de erro)
        %saveas(errorbar(dominio, p_ds, margenserr),'imagem.jpg');
        errorbar(dominio, p_ds, margenserr);
        hold on;
    end

    legend('gamma = 0.1', 'gamma = 0.6', 'gamma = 1.1', 'gamma = 1.6', 'gamma = 2.1', 'gamma = 2.6');
    xlim([10 75])
    saveas( errorbar(dominio, p_ds, margenserr),  strcat( "graficos/",modelo,"_Iter_",num2str(Iter),"m",'.jpg') );
    
    Iter=Iter*10;
    clf
endwhile



disp("3");




%limpa grafico
clf
% Total de iteracoes
Iter = 10^3; 

while Iter <= 10^4
   
    % como usado no código do Vilc
    C = 10;  

    % taxa de desinfeccao
    mu=1;


    %Intervalo do tamanho da população
    dominio = [10:5:60];

    %Booleano para usar a nossa criatividade ou não
    criatividade=false;
    if criatividade
      %disp("Codigo criativo");
    else
      %disp("Codigo original");
    endif
    
    
    natalidade=true;
    %disp("natalidade");
    %disp(natalidade);

    mortalidade=false;
    %disp("mortalidade");
    %disp(mortalidade);

    recuperado=false;
    %disp("recuperado");
    %disp(recuperado);
    
    
    modelo='m';
    %disp(modelo);
    
    
    %disp("Iteracoes:");
    %disp(Iter);

    %disp("mu");
    %disp(mu);

    % Gamma - taxa de infecao endogena
    for gamma = 0.1:0.5:2.6
        %Armazena o numero de infectados estimado
        p_ds = zeros(11,1);              
        %Armazena as margens de erro associadas ao anterior
        margenserr = zeros(11,1);        

        N = 10;
        %disp("gamma:");
        %disp(gamma);
        for k=1:11
            % Lambda - taxa de infecao exogena
            lambda = C/N;
            % usar 'a' para aditivo, 'm' para multiplicativo
            [p_d, margemerr] = simularSI(N, Iter, lambda, gamma , mu, criatividade,natalidade,mortalidade,recuperado, modelo);  
            p_ds(k) = p_d;
            margenserr(k) = margemerr;
            N = N + 5;
        end
        %geração do gráfico (com a margem de erro)
        %saveas(errorbar(dominio, p_ds, margenserr),'imagem.jpg');
        errorbar(dominio, p_ds, margenserr);
        hold on;
    end

    legend('gamma = 0.1', 'gamma = 0.6', 'gamma = 1.1', 'gamma = 1.6', 'gamma = 2.1', 'gamma = 2.6');
    xlim([10 75])
    saveas( errorbar(dominio, p_ds, margenserr),  strcat( "graficos/",modelo,"_Iter_",num2str(Iter),"n",'.jpg') );
    
    Iter=Iter*10;
    clf
endwhile




disp("4");





%limpa grafico
clf
% Total de iteracoes
Iter = 10^3; 

while Iter <= 10^4
   
    % como usado no código do Vilc
    C = 10;  

    % taxa de desinfeccao
    mu=1;


    %Intervalo do tamanho da população
    dominio = [10:5:60];

    %Booleano para usar a nossa criatividade ou não
    criatividade=false;
    if criatividade
      %disp("Codigo criativo");
    else
      %disp("Codigo original");
    endif
    
    
    natalidade=true;
    %disp("natalidade");
    %disp(natalidade);

    mortalidade=true;
    %disp("mortalidade");
    %disp(mortalidade);

    recuperado=false;
    %disp("recuperado");
    %disp(recuperado);
    
    
    modelo='m';
    %disp(modelo);
    
    
    %disp("Iteracoes:");
    %disp(Iter);

    %disp("mu");
    %disp(mu);

    % Gamma - taxa de infecao endogena
    for gamma = 0.1:0.5:2.6
        %Armazena o numero de infectados estimado
        p_ds = zeros(11,1);              
        %Armazena as margens de erro associadas ao anterior
        margenserr = zeros(11,1);        

        N = 10;
        %disp("gamma:");
        %disp(gamma);
        for k=1:11
            % Lambda - taxa de infecao exogena
            lambda = C/N;
            % usar 'a' para aditivo, 'm' para multiplicativo
            [p_d, margemerr] = simularSI(N, Iter, lambda, gamma , mu, criatividade,natalidade,mortalidade,recuperado, modelo);  
            p_ds(k) = p_d;
            margenserr(k) = margemerr;
            N = N + 5;
        end
        %geração do gráfico (com a margem de erro)
        %saveas(errorbar(dominio, p_ds, margenserr),'imagem.jpg');
        errorbar(dominio, p_ds, margenserr);
        hold on;
    end

    legend('gamma = 0.1', 'gamma = 0.6', 'gamma = 1.1', 'gamma = 1.6', 'gamma = 2.1', 'gamma = 2.6');
    xlim([10 75])
    saveas( errorbar(dominio, p_ds, margenserr),  strcat( "graficos/",modelo,"_Iter_",num2str(Iter),"nm",'.jpg') );
    
    Iter=Iter*10;
    clf
endwhile
disp("5");

disp("fim");