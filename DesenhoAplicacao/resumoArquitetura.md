# Arquitetura

O sistema foi desenvolvido com base no modelo de arquitetura cliente-servidor, e utilizando a abordagem de divisão em camadas de back end e front end para a solução de desacoplagem.

Por meio de uma interface web, os clientes fazem as requisições ao servidor, que através de REST API (Reprentational State Application Programming Interface) responsável por lidar com as regras de negócio e com a comunicação entre as camadas. O Elastic Load Balancing tem como responsabilidade distribuir esse tráfego de entrada entre as duas instâncias EC2, uma contendo o back end e outra o front end, ambas em ambientes isolados pelo Docker Container, onde o back end possui integrado a ele o CloudWatch Logs para monitoramento dos logs da aplicação. Toda essa parte de serviços operacionais do sistema está inclusa no AWS Elastic BeanStalk, provedor de máquina e serviços necessários de forma a abstrair detalhes de infraestrutura para a implementação da aplicação.

O banco de dados responsável pelo armazenamento dos dados da aplicação é o MySQL provido pelo AWS RDS, serviço que permite o funcionamento do banco de forma abstraída, enquanto, para o armazenamento de arquivos estáticos da aplicação, como os documentos da CertVet, fora utilizado o Amazon S3.

A arquitetura do sistema pode ser vista mais detalhadamente na figura abaixo.