# Tecnologias

Com o objetivo de facilitar o processo de implementação de
 uso da ferramenta nos estabelecimentos dos usuários, entendemos que a 
necessidade de instalação de um software como aplicação desktop pode 
influenciar negativamente à adoção da aplicação. Ainda, entendendo as 
habilidades técnicas atuais dos membros da equipe, foi optado por 
utilizar tecnologias web baseadas em servidores de aplicação remotos e 
gerenciados, oferecendo o Software como serviço (SaaS).

A oferta de software como serviço permite que atualizações
 e correções sejam implementadas mais rapidamente já que não dependem da
 interferência em infraestrutura de responsabilidade do cliente. 
Adicionalmente, é mais provável que a instalação do serviço foi 
realizada adequadamente.

## Front end

A pilha de tecnologias de desenvolvimento para o front end se concentram nas ferramentas e tecnologias:

### Figma

Editor colaborativo online de design gráfico que permite a criação de interfaces de usuário e que ajudará os desenvolvedores a construir telas coesas e baseadas nos conceitos e práticas de User Experience (UX) e User Interface (UI).

### TypeScript

Linguagem que permite programação fortemente tipada de código aberto desenvolvida pela Microsoft lançada em 1 de outubro de 2012. 

É também um supertipo da linguagem  JavaScript, o que significa que possui todas as funcionalidades do JavaScript e além da adição de novos recursos. 

Essa linguagem foi selecionada para desenvolver o front end devido a complexidade e escala da aplicação, que requer estruturas de dados mais complexas do que o JavaScript pode oferecer suporte, fazendo-se necessário a utilização de uma linguagem com tipagem de dados forte. 

Outro motivo que colaborou para a escolha foi a segurança, já que graças a tipagem de dados, erros que podem causar vulnerabilidades e passam despercebidos em aplicações desenvolvidas com JavaScript serão identificados no momento da compilação do TypeScript para JavaScript.

### SCSS

Linguagem de estilização para WEB compilada para CSS.

Essa linguagem foi selecionada para estilizar o front end da aplicação pelo fato de possuir compatibilidade com o CSS e também uma melhor estrutura organizacional de código quando comparado com o CSS.

### ReactJS

Biblioteca JavaScript/TypeScript desenvolvida pelo Facebook para a criação de interfaces WEB lançada em 29 de maio de 2013. O React foi escolhido graças a arquitetura baseada em componentes que permite a reutilização dos mesmo em diferentes partes da aplicação. Os componentes são escritos utilizando JSX que possui uma sintaxe semelhante ao HTML, o que o torna fácil de utilizar.

### Bootstrap

Framework front end que fornece estruturas de CSS para a criação de sites e aplicações responsivas de forma rápida e simples.

Essa tecnologia foi escolhida pelo fato de reduzir consideravelmente o tempo de desenvolvimento da estilização da interface da aplicação com om usuário.

## Back end

Para compor a pilha de tecnologias aplicadas no back end, optamos por utilizar as seguintes tecnologias:

### Java 17

Linguagem de programação fortemente tipada com ênfase no paradigma de desenvolvimento **orientado a objeto.** É ****amplamente empregada em aplicações comerciais e cientificas maduras, open source ou privadas.

A partir da comunidade de desenvolvimento, projetos open source de permissionamento livre permite acesso a bibliotecas e ferramentas como framework Demoiselle, para assinatura de documentos que cumprem a especificação ICP-Brasil.

A versão 17 é uma versão LTS - Long Term Service, permite o emprego das tecnologias e funcionalidades mais recentes da linguagem, sem prejuízo às implementações mais antigas.

### Spring Boot

Framework mais amplamente utilizado da linguagem Java para aplicações de uso geral, permite integração sem quebras entre dependências de bibliotecas e frameworks especializados
como Spring MVC, hibernate ou Apache Kafka.

- ORM - spring JPA (Hibernate)
- Spring Web - controllers
- Apache Tomcat - Servidor HTTP
- Hibernate Validator
- Mockito - Framework que auxilia o desenvolvimento de testes de unidade
- SL4J - Framework dedicado ao registro de logs

### Banco de dados Mysql

Banco de dados relacional com ampla implementação de provedores de tecnologias em nuvem ou on premisses, tendo licença de uso permissivo e familiaridade aos membros da equipe.

## Infraestrutura

### Docker

Tecnologia que isola o ambiente da aplicação através de namespaces e imagem, permitindo maior liberdade no uso dos recursos computacionais de execução.

Para a aplicação back end, será empregada uma imagem baseada na pilha amazon linux e amazon correto 17 

### AWS Elastic BeanStalk

Serviço que abstrai a necessidade de tomar decisão sobre recursos fĩsicos da aplicação, provisionando máquina e serviços necessários para a implementação da solução. Provê suporte à tecnologia docker.

### AWS RDS - MySQL

Serviço gerenciado que provê banco de dados com redundância em infraestrutura abstraída, suporta diversas implementações de banco de dados como MySQL e Postgres.
