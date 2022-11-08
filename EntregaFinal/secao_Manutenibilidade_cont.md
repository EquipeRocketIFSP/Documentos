#### 3.3 Design Patterns e boas práticas
Visando a padronização do projeto, o time adotou dois padrões comumente usados pela comunidade de desenvolvedores: Builder e Facade, sendo este último adotado pensando na redução do acoplamento entre as diferentes camadas do projeto e na diminuição da complexidade da API e o padrão Builder para isolar a complexidade da criação dos objetos, facilitando a criação das diferentes implementações, todas baseadas em uma mesma interface.

##### 3.3.1 Clean Code
Somado ao Code Convention abordado anteriormente, o Clean Code é um conjunto de práticas de desenvolvimento a fim de garantir que o código seja legível para todos e que, consequentemente, implique em uma manutenção mais ordenada e simplificada, evitando gargalos haja vista que propaga maior inteligibilidade por parte dos desenvolvedores. As práticas adotadas pela equipe podem ser lidas abaixo:
- Definição significativa dos nomes de classes, atributos, métodos, objetos e variáveis.
- Uso de ENUM e constantes para padronização de números que façam sentido no código.
- Criação de funções simples, de procedimentos transparentes e pequenas.
- Uso reduzido de comentários que não sejam necessários.
- Evitar a redundância e a repetição de código.
- Reduzir ao máximo as dependências, de forma a aumentar o desacoplamento e a independência entre as partes do projeto.
- Realizar o tratamento de erros para garantir que o código continuará fazendo o que foi programado para fazer.
- Cobrir e validar todos os processos sensíveis e importantes com testes limpos.

##### 3.3.2 SOLID
O conjunto de cinco princípios básicos, denominado na área por SOLID, tem como principal objetivo garantir a maior qualidade no processo de desenvolvimento de software, resultando em uma aplicação mais fácil de ser testada, mantida, corrigida, haja vista a flexibilidade gerada no código em se adequar às possíveis mudanças e até mesmo escalada. No que tange ao entendimento da equipe sobre os princípios e como os mesmos serão aplicados no projeto:
- 1. SRP (Single Responsability Principle), o princípio da responsabilidade única,  basicamente determina que uma classe deve ter simplesmente um único motivo para existir, uma única responsabilidade.
- 2. OCP (Open-closed Principle), ou princípio aberto-fechado, o segundo princípio prevê que uma entidade deve ser aberta para a extensão e fechada para a modificações.
- 3. LSP (Liskov Substitution Principle), o terceiro princípio, o de substituição de Liskov, determina que uma classe que seja derivada deve ser substituível por sua classe originária.
- 4. ISP (Interface Segregation Principle), o princípio da segregação da interface prevê que uma classe não deve implementar interfaces que possuem atributos e métodos que ela não utilizará.
- 5. DIP (Dependency Inversion Principle), o quinto princípio, o da inversão de dependência determina que uma classe deve sim depender de abstrações, no entanto, jamais depender de implementações.

Referências:
https://www.oracle.com/technetwork/java/codeconventions-150003.pdf

https://docs.aws.amazon.com/pt_br/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html

https://mari-azevedo.medium.com/tem-um-tempinho-para-conversarmos-sobre-boas-pr%C3%A1ticas-de-programa%C3%A7%C3%A3o-com-java-51c5bcc220ea

https://medium.com/backticks-tildes/the-s-o-l-i-d-principles-in-pictures-b34ce2f1e898

https://medium.com/s/story/reflections-on-clean-code-8c9b683277ca

https://medium.com/desenvolvendo-com-paixao/2-clean-code-boas-pr%C3%A1ticas-para-escrever-c%C3%B3digos-impec%C3%A1veis-361997b3c8b5