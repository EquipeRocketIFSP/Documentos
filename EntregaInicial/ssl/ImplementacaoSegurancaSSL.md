# Implementação

## Preâmbulo

Conforme exigência da disciplina documentada no conteúdo extra disponibilizado pelo professor do instituto Ivan, é necessário que sejam implementados métodos de segurança na comunicação da aplicação. Parte importante da implementação é o uso do protocolo HTTPS e políticas de segurança que também usam a comunicação HTTP como base.

O protocolo HTTPS é um protocolo exclusivo que combina SSL e HTTP. O emprego do protocolo em documentos html especifica ao cliente ou servidor que o link que será referido está protegido pelo protocolo SSL durante o interâmbio de informações. Por padrão, a comunicação ocorre a partir da porta 443, permitindo concorrência de conexão com outras portas que utilizam o protocolo HTTP, como a porta 80.

Empresas implementam suas próprias versões de servidores de internet que dão suporte ao protocolo, como a IBM [IBM HTTP Server](https://www.ibm.com/docs/pt-br/ibm-http-server/9.0.5?topic=communications-secure-sockets-layer-ssl-protocol) ou a Microsoft com o servidor [IIS](https://learn.microsoft.com/en-us/iis/configuration/).

Como referência de confiabilidade do certificado de segurança da aplicação, foi orientada a utilização do site [ssllabs](https://www.ssllabs.com/ssltest/index.html).

O site é um esforço de pesquisa sem fins lucrativos de pessoas e entidades interessadas no desenvolvimento do SSL. Se declara um arcabolço de documentos, ferramentas e reflexões relacionadas ao Secure Socket Layer (SSL) com o objetivo de tentar melhorar o entendimento de como o SSL é entregue (deployed) e como melhora-lo.

## Teste de segurança inicial

Antes de realizar qualquer tentativa de implementação, foi realizado um teste com a aplicação no estado atual (as is). Posteriormente, para documentar a situação, foi realizada uma nova consulta adicionada ao apêndice ([documento](./SSL%20Server%20Test_%20frontend-certvet.us-east-1.elasticbeanstalk.com%20(Powered%20by%20Qualys%20SSL%20Labs).pdf)).

Como a porta 443 do servidor não estava liberada nas regras de ingresso de requisições (inbound rules), a requisição era bloqueada pela própria provedora de nuvem, antes de qualquer outra trativa ser tomada. 

