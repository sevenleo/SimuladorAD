function[p_d, margemerr] = simularSI(N, Iter, lambda, gamma , mu , criatividade,natalidade,mortalidade,recuperado, modelo,  taxaMortalidade, taxaNatalidade, fatorDoenca); 
    % Vetor que indica que se esta infectado(1) ou nao (0)
    Status =zeros(N,1);      
    
    Ninicial = N;
    tempoTotal = 0;    %Tempo total dos eventos    
    d_anterior = 0;
    tempoAnterior = 0;
    areaTotal = 0;
    d_samples = zeros(1,Iter);
    Nmax = N;
    
				
				
    for k=1:Iter    
				%verificar se a populacao foi extinta
		if (N<=0) 
          %disp("Tamanho da populacao (em pessoas)");
          %disp(Ninicial);
					%disp("Populacao Extinta (em s)");
          %disp(tempoTotal);
            break;
        end
        
        % Considerando um grafo completo
	    d = sum(Status);  

        %escolha do modelo        
        if(strcmp(modelo,'m'))
            %modelo multiplicativo
            taxaInfeccao = lambda*(gamma^d);
        else
            %modelo aditivo
            taxaInfeccao = lambda + (gamma*d);
        end
        
        % tempo de cada evento
        tempoEventos = zeros(N,1); 
        % tempo das mortes
        tempoMortes = zeros(N,1);
        
        
        for j=1:length(Status)
          if (Status(j) == 0 ) % individuo sucetivel
              % gerar n-d numeros com taxa de infeccao    
              tempo = exprnd(1/taxaInfeccao);
              tempoEventos(j) = tempo;
          else 
              % gerar d numeros com taxa de desinfeccao
              tempo = exprnd(1/mu); %individuo infectado
              tempoEventos(j) = tempo;
          end    
        end
        
        


        
	    %adicionando natalidade e mortalidade 
        %nas ultimas posicoes do array tempoeventos
	    if criatividade
          
          %jeitinho brasileiro para os casos em que só temos nascimento ou só morte
          tempoEventos(length(Status)+1) = 9*10^7; 
          tempoEventos(length(Status)+2) = 9*10^7; 
          
          if natalidade
            % taxaNatalidadee desinfectado
            tempoEventos(length(Status)+1) = exprnd(1/taxaNatalidade); 
          end
          if mortalidade
                % qualquer um pode morrer
                for k=1:length(Status)
                    if(Status(k) == 0)
                        tempoMortes(k) = exprnd(1/taxaMortalidade);
                    else
                        tempoMortes(k) = exprnd(1/(taxaMortalidade*fatorDoenca));
                    end
                end
                [menorTempoMorte, indexmenorTempoMorte] = min(tempoMortes);
                tempoEventos(length(Status)+2) = menorTempoMorte;                
          end
        end
        
				%Proximo evento a acontecer
        [menorTempo, indexmenorTempo] = min(tempoEventos);
				
				if (indexmenorTempo == length(Status)+1)
						N=N+1;
						Status = [transpose(Status) 0];
						Status = transpose(Status);
						%%%disp("Nasceu :)");
						
				elseif (indexmenorTempo == length(Status)+2)
						N=N-1;
                        Status = [Status(1:indexmenorTempoMorte-1)' Status(indexmenorTempoMorte+1:length(Status))']';
						
				elseif (Status(indexmenorTempo) == 1)
            Status(indexmenorTempo) = 0;
						if criatividade && recuperado
                            N=N-1;
							Status = transpose ([ transpose(Status(1:indexmenorTempo-1)) transpose(Status(indexmenorTempo+1:length(Status))) ]);
                        end
						%%%disp("Se recuperou");
						
        else
            Status(indexmenorTempo) = 1;
		end
				
        tempoTotal = tempoTotal + tempoEventos(indexmenorTempo);

        if(d~=d_anterior)
            areaTotal = areaTotal + d_anterior*(tempoTotal-tempoAnterior);
            tempoAnterior = tempoTotal;
            d_anterior = d;
        end
        
        if(Nmax < N) % Para criatividade
            Nmax = N;
        end

        d_samples(k) = d;
        
    end
    
    N=Nmax;
	p_d = areaTotal/((N-0.8)*tempoTotal);
    variancia = sum((d_samples/N -p_d).^2)/(Iter-1);
    margemerr = 1.96*sqrt(variancia)/sqrt(Iter);   %Intervalo de confianca
end