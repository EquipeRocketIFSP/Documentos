# Segurança

## Comunicação

A aplicação utilizará interfaces de aplicação de transferência representacional de estado ([REST API](http://web.archive.org/web/20220823172419/https://www.redhat.com/en/topics/api/what-is-a-rest-api)), tomando como base o protocolo HTTP.

O protocolo HTTP (Hyper Text Transfer Protocol) realiza comunicação através de interfaces da arquitetura cliente-servidor. Tanto nos modelos conceituais TCP/IP e OSI (Open System Interconnection)  está compreendido pela camada de aplicação. !!! (Peterson, Larry L., Redes de computadores : uma abordagem de sistemas / Larry L. Peterson e Bruce S. Davie ; [tradução de
Multinet Produtos]. - Rio de Janeiro : Elsevier, 2013. p.21) !!!

Por permitir comunicação na arquitetura cliente-servidor sem criptografia (trafega dados através de texto simples pelas das camadas de rede), é considerado uma forma não segura de troca de dados. 

Para que a comunicação possa ocorrer sem perda de dados ou interceptação entre as partes, é necessário adicionar criptografia TLS (Transport Layer Security) ou SSL (Secure Socket Layer, base do TLS) na comunicação ponto a ponto, estendendo o protocolo para HTTPS (Hyper Text Transfer Protocol Secure).

!!! Referência sobre TLS e SSL: Peterson, Larry L., Redes de computadores : uma abordagem de sistemas / Larry L. Peterson e Bruce S. Davie ; [tradução de
Multinet Produtos]. - Rio de Janeiro : Elsevier, 2013. p.410 !!!

### Implementação Java - !!! Não adicionar ao texto !!!

[Rest api in java using https](https://stackoverflow.com/questions/60976773/rest-api-in-java-using-https)

[Do a Simple HTTP Request in Java](https://www.baeldung.com/java-http-request)

[HTTPS using Self-Signed Certificate in Spring Boot](https://www.baeldung.com/spring-boot-https-self-signed-certificate)

[19. Enabling HTTPS](https://docs.spring.io/spring-cloud-skipper/docs/1.0.0.BUILD-SNAPSHOT/reference/html/configuration-security-enabling-https.html)

## Privacidade

Em diversos sistemas, tanto mobile como web, diversas informações são trocadas entre o usuário e o servidor a todo instante. Dentre essas informações podemos destacar documentos pessoais, senhas e informações sigilosas. Visto isso, uma das prioridades do sistema a ser desenvolvido será a privacidade de seus usuários e de suas informações. 

A lei 13.709/2018, conhecida como LGPD (Lei Geral de Proteção de Dados Pessoais) foi concebida com intuito de disciplinar o uso de dados pessoais por instituições, empoderando a pessoa física sobre os direitos fundamentais da liberdade e privacidade sobre seus dados.
!!! (https://web.archive.org/web/20211018033354/https://www.tjsp.jus.br/LGPD/LGPD/ALGPD) !!!

A lei dispõe sobre atividades em que ocorra "tratamento de dados". Como explica o tribunal de justiça de São Paulo (TJ-SP):
> Considera-se “tratamento de dados” qualquer atividade que utilize um dado pessoal na execução da sua operação, como, por exemplo: coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, modificação, comunicação, transferência, difusão ou extração.

Tanto a Serpro quanto o TJ-SP relatam que a lei prevê três agentes das instituições, listando suas respectivas responsabilidades principais:
- Controlador: Responsável pelas decisões relativas ao tratamento dos dados
- Operador: Delegado pelo Controlador, operacionaliza as decisões do Controlador
- Encarregado: Atender às demandas dos titulares, interagir com a autoridade nacinal de proteção de dados (ANPD) e orientar funcionários e contratados sobre as práticas de proteção de dados.

O titular dos dados é aquele que pode ter dados que identificam a pessoa natural, sendo tratados , distribuídos ou armazenados. Para que os dados possam ser armazenados nos termos da lei, é necessário que exista expressa autorização pelo titular dos dados, devidamente armazenados para fins de fiscalização.
A distribuição indevida desses dados poderá acarretar ônus ao propagador.

!!! https://web.archive.org/web/20220719020624/https://www.serpro.gov.br/lgpd/empresa/como-cumprir-a-lgpd/ !!!

Portanto, o mapeamento dos dados necessários para as atividades previstas pela aplicação e armazenamento de dados sensíveis é um ponto de atenção para ser considerado desde o desenvolvimento da modelagem de dados, passando pelo trânsito dos dados até a comunicação com os usuários que realizarão interação com a ferramenta.

Nesse sentido, identificamos a necessidade de avaliar a utilização de criptografia em todas as etapas de trânsito de dados e armazenamento de banco de dados.

## Legislação

Como o projeto é desenvolvido para área de medicina veterinária, devem ser observadas legislações e decretos concernentes.

- Nosso projeto irá exigir login com CRMV para acessar áreas privativas dá área de medicina veterinária. (CÓDIGO DE ÉTICA PROFISSIONAL DO MÉDICO-VETERINÁRIO, capítulo 5°, art 9° insiso 2).
- Será obrigatória a correlação da clínica com o médico-veterinário responsável. (NORMA TÉCNICA ESPECIAL art 3°: Anexo a que se refere o artigo 1º do Decreto nº 40.400,de 24 de outubro de 1995)
- Os métodos de eutanásia disponíveis no preenchimento das informações do sistema. (RESOLUÇÃO CFMV Nº 1.000, DE 11 DE MAIO DE 2012; art. 14, anexo 1)

## JSON Web Token

JSON Web Token (JWT) é um padrão para autenticação e troca de infrmações. Ele é um formato baseado em texto e amplamente aceito por diversas linguagens, visto a utilização do JSON como base. JWT é um dos elementos do JSON Object Signing and Encryption (JOSE). Outros elementos do JOSE são o JSON Web Encryption (JWE), que é o responsável pela criptografia para a assinatura do token, o JSON Web Algorithms (JWA), responsável pelo algoritmo, o JSON Web Keys (JWK), correspondente as chaves para a assinatura e, por fim, o JSON Web Signature (JWS), que consiste na assinatura do token, enquanto o JWT é o token em si. 
O JWT tem como objetivo realizar a autenticação entre duas partes por meio de um token assinado que autentica uma requisição Web. O token é um código, uma chave ou uma cadeia de caracteres que armazenam objetos JSON com os dados que permitirão a autenticação da requisição.
Em um sistema no qual o cliente deseja se autenticar, o cliente enviará na requisição seus dados de autenticação como o e-mail e a senha. Após o sistema ter verificado que os dados do cliente estão corretos, o servidor criará um token para o cliente. Com esse token, o cliente terá condições de acessar na aplicação informações nas quais este não conseguia, visto que ainda não havia se autenticado. 
O JWT é composto por três componentes, sendo eles denominados de “Header”, “Payload” e “Signature”. O “Header” pode ser descrito como o cabeçalho do token e possui dois campos, sendo o primeiro campo denominado “alg”, que indica qual o algoritmo de criptografia usado, enquanto o outro campo, chamado “typ”, tem como objetivo indicar que se trata de um token JWT. 
O componente chamado de “Payload” carrega os dados referentes a autenticação. Nesse segmento pode-se diversos campos como “exp” que indica o tempo de expiração do JWT, “sub” que informa o assunto do token, “aud” que identifica quem deverá receber os dados do JWT, “iat” que identifica o tempo de existência do token, entre outros campos.
Por fim, o componente “Signature” é a assinatura única de cada token que é gerada a partir de um algorito de criptografia e tem seu corpo com base no “Header”, “Payload” e no segredo definido pela aplicação. Em outras palavras, o “Signature” é a codificação do “Header”, “Payload” junto com uma palavra-chave.
O token é uma chave de acesso assinada digitalmente e garante segurança e confiabilidade. Como os tokens são assinados, é possível o servidor verificar a legitimidade do token, visto que esse carrega consigo a informação de sua origem. O token completo consiste na junção dos três componentes separados única e exclusivamente por um ponto. Sendo assim, após a assinatura realizada, o token estará pronto. 
Com o token codificado é impossível decodificar a assinatura deste sem que haja o segredo-chave da aplicação. Entretanto, havendo o segredo, o token poderá ser facilmente decodificado e verificado sua validade. 
O JWT tem muita notoriedade por ser uma forma extremamente segura de compartilhamento de informações e autenticação de usuários. Ele é compacto, completo e fácil de se utilizar, além de ser aceito por diversas linguagens. Toda a informação necessária para a autenticação e autorização de acesso consta no token, isso significa que a requisição será atendida independentemente do servidor. Com o JWT é possível ter escala em performance, visto a necessidade do servidor de apenas calcular o hash, sem buscar nenhuma informação em alguma base ou tabela. Outro lado positivo na utilização do JWT é que é possível ter diversos servidores rodando em domínios diferentes e todos utilizando o mesmo token. 
O lado negativo do JWT está baseado em sua chave secreta. Se essa chave for em algum momento exposta, algum indivíduo mal intencionado poderá ter acesso aos dados ali armazenados.

https://www.devmedia.com.br/como-o-jwt-funciona/40265
https://blog.betrybe.com/tecnologia/jwt-json-web-tokens/
https://www.objective.com.br/insights/jwt/

