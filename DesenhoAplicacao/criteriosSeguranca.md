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
