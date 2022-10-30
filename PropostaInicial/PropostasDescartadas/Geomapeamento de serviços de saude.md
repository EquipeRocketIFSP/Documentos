## Mapeamento de serviços de saúde voltado à população transgênero usando geolocalização:

### Argumentação:

A aplicação é destinada ao mapeamento das Unidades Básicas de Saúde que tenham serviços destinados à população transgênero. A ideia inicialmente concentra-se no mapeamento dos serviços, portanto, o agendamento das consultas, bem como o contato em si com o profissional da saúde não está previsto na aplicação.

A listagem das unidades deve conter informações básicas que são fornecidas: endereço das clínicas, números e e-mail de contato e horário de funcionamento. Devemos verificar a viabilidade de listar também as especialidades de cada unidade, permitindo o usuário a ter um filtro de acordo com o serviço desejado.

### Ferramentas (Features):
- Listagem das unidades próximas do endereço informado.

- Pesquisa e filtro através das especialidades da unidade.

- Sessão de avaliação/indicação (onde o usuário pode avaliar a unidade de acordo com sua experiência e se indica para outras pessoas, por questões de segurança)

- Verificar disponibilidade de medicamentos através do SUS

### Concorrência:

#### Doctoralia

-   Plataformas:
    

	-   iOS
	- Android
	- Web
    

-   Descrição:
    

	Opera principalmente em forma de aplicativo, onde o usuário consegue encontrar especialistas de saúde facilmente, pode marcar consultas médicas direto no App e também possui espaço para consultas on-line.

-   Diferencial:  
    O app não possui filtro para serviço público e nem para serviços voltados à pessoas trans.
    

#### Rede Transformação

-   Descrição:
    

	Site idealizado por um grupo de estudantes de medicina da Universidade Federal de Uberlândia, mapeia os serviços de saúde e abrigos destinados à população trans através de um mapa interativo, onde ao clicar nos ícones, é exibido ao usuário informações básicas: nome, endereço, cidade e telefone do serviço. Também sendo possível acessar indicações de serviços de saúde e filtrá-los por estado, cidade e tipo de serviço (particular ou público).

-   Plataformas:
	 - Web
    

-   Diferencial:  
    O site não possibilita listagem de acordo com proximidade/distância. A única possibilidade de pesquisa do site é através da cidade.
    

### Preocupações:

O aplicativo deve oferecer um nível de segurança em relação aos dados e informações que trafegam na rede, haja vista que o uso de geolocalização não pode oferecer riscos à confidencialidade, ou seja, a privacidade do público tem de ser preservada.

-   Distance Matrix (API Maplink): referência de API segura que permite um cálculo mais preciso da distância e do tempo de deslocamento entre dois ou mais pontos, definindo assim, a melhor rota a ser seguida. Interessante para ver a viabilidade das unidades mais próximas do endereço de referência informado pelo usuário.
    

Dois pontos devem ser tomados como partida para o processo: a distância, haja vista que as pessoas tendem a desejar atendimento de unidades que estejam mais próximas de suas respectivas localizações (informar o quão distante a unidade está do local de referência em metros, exibir um mapa da distância exata em relação ao local informado). E as especialidades das unidades (informar por meio de tags para que possa ser aplicado algum tipo de filtro, por exemplo).
```