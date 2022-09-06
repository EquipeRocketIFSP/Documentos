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

Concebida com intuito de proteger os dados dos usuários, foi decretada em 14 de agosto de 2018 a lei número 13.709, conhecida como LGPD (Lei Geral de Proteção de Dados Pessoais).

Quando se fala sobre a LGPD, o tratamento dos dados pessoais pode ser realizado por três agentes, denominados controlador, operador e encarregado, esse último indicado pelo controlador com intuito de atuar como canal de comunicação entre os outros dois, o titular dos dados e a ANPD (Autoridade Nacional de Proteção de Dados). A lei cita sobre qualquer atividade no qual haja o tratamento dos dados, como a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, entre outras atividades. O titular dos dados é o dono desses dados e toda a operação ou distribuição dos dados deverão estar dentro da lei e ser autorizados por este, com exceção única do compartilhamento desses dados dentro da administração pública no âmbito da execução de políticas públicas, entretanto tal órgão que coleta deverá informar com transparência quais dados serão compartilhados e com quais indivíduos, e o órgão receptor dos dados deverá informar o razão pela captação e utilização de tais informações de maneira clara. A distribuição indevida desses dados poderá acarretar ônus ao propagador.
!!! https://web.archive.org/web/20220719020624/https://www.serpro.gov.br/lgpd/empresa/como-cumprir-a-lgpd/ !!!

Portanto, pode-se dizer que a LGPD tem como principais objetivos assegurar o direito à privacidade e à proteção de dados pessoais, estabelecer regras sobre os tratamentos desses dados e fortalecer a segurança das relações jurídicas e a confiança do titular no tratamento de seus dados.

## Legislação

Como o projeto é desenvolvido para área de medicina veterinária, devem ser observadas legislações e decretos concernentes.

- CÓDIGO DE ÉTICA PROFISSIONAL DO MÉDICO-VETERINÁRIO
- NORMA TÉCNICA ESPECIAL: anexo do artigo 1º do Decreto nº 40.400,de 24 de outubro de 1995
- anexo 1 da RESOLUÇÃO CFMV Nº 1.000, DE 11 DE MAIO DE 2012
- tem mais naquele MANUAL DE RESPONSABILIDADE TÉCNICA E LEGISLAÇÃO (4° revisão, 2019)
