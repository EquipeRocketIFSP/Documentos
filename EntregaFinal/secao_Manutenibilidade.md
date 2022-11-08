## 3. Manutenibilidade
Visando garantir boa resposta dos clientes, atingindo um elevado nível de qualidade, torna-se necessário estabelecer determinados requisitos e parâmetros de manutenibilidade e ferramentas que possam auxiliar esse processo. Partindo desses critérios, é possível mensurar o quanto o desenvolvimento do sistema apresenta conformidade com as boas práticas e, consequentemente, na qualidade do projeto. 

#### 3.1. Code Convention
Buscando facilitar o fluxo de trabalho com um maior nível de legibilidade para todos os envolvidos no desenvolvimento do código e, consequentemente, simplificar a integração entre as diferentes partes do que está a ser desenvolvido, a equipe optou por adotar uma convenção de código. Visando o desenvolvimento de um código consistente e transparente, a convenção permite que os diferentes membros possam adicionar contribuições sem grandes dificuldades, aumentando a taxa de transferência e diminuindo o tempo de entrega, resultando em uma base de código mais uniforme e consequentemente impactando na facilidade da manutenção do código.

##### 3.1.1 Codificação geral
A convenção adotada para a parte mais generalizada do código, é a mais comumente usada para o desenvolvimento utilizando a linguagem Java, sendo relativamente próxima dos padrões adotados em outras linguagens populares como JavaScript e Python. As regras seguem como base as sugestões de Coding Convention da Oracle, mas foram adaptadas para as necessidades da equipe:
- Declaração de atributos e variáveis em português.
- Nomes de atributos e váriaveis devem ser redigidos em camelCase.
- Variáveis declaradas próximas de onde são inicializadas.
- Declarações globais preferencialmente no início do arquivo.
- Uso reduzido de variáveis, funções e objetos globais.
- Métodos nomeados com camelCase e prefixados com verbo em inglês que deixe claro o que o método faz.
- As constantes devem utilizar notação Upper case, utilizando underscore para separação das palavras em caso de nome composto.
- Nomes de classes e interfaces redigidos em PascalCase.

Somando-se a isso, a resolução do back-end é dividida em pacotes para melhor distribuição e visibilidade da mesma. Sendo eles, o pacote model contendo as classes de modelo, também usadas como entidades mapeadas do banco de dados, o pacote controller contendo o gerenciamento da lógica do negócio através dos controladores e endpoints do serviço, o pacote service contendo a implementação da lógica de negócio através dos serviços e o pacote repository para centralizar as regras de armazenamento dos beans de entidade no sistema.

##### 3.1.2 Commits
A equipe optou por adotar os prefixos gerados pelo Jira, ferramenta utilizada para o  gerenciamento de tarefas, para nomear as branchs que serão commitadas tanto no front-end quanto no back-end.

    ERI-X: sendo ERI o prefixo base gerado pelo Jira e X o número de identificação daquela tarefa no dashboard.

Somado à padronização, fora adotada a prática de efetuar pull requests e o code review por parte de um outro integrante do time, evitando que uma implementação ou alteração seja adicionada diretamente na branch principal do repositório.

#### 3.2. Logs
A fim de monitorar o sistema em tempo real de execução, principalmente no que tange à camada do servidor, o time adotou o CloudWatch Logs, ferramenta da Amazon para visualização destes, tornando possível o monitoramento do estado dos objetos. Através de diferentes registros como: info, warn, debug e error, a equipe tem a sua disposição insumos para consultar os dados de log da aplicação, monitorar os logs de instâncias do Amazon EC2 e arquivá-los com segurança para futuras análises, quando necessário, de forma que, quando ocorrer falha do sistema, um log poderá ser consultado para devidas identificações, análises e resoluções.
