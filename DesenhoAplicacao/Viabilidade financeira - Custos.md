# Viabilidade financeira

## Serviços utilizados

Os serviços da provedora de nuvem foram considerados com base em custos sem pagamento antecipado ou reserva de recursos. Essa estimativa considera cenário real de armazenamento de dados e processamento da aplicação no Brasil, cumprindo com leis de privacidade de dados. Demais serviços acessórios como armazenamento de logs e dados de código da aplicação podem ser armazenados fora do país.

- Amazon CloudWatch: 1.21 USD/mês em US East (N. Virginia)	
    Standard Logs: Data Ingested (2 GB), Number of Dashboards (1), Number of Standard Resolution Alarm Metrics (2)
- Amazon EC2: 13.44 USD/mês em South America (Sao Paulo)
    Computing: Operating system (Linux), Quantity (1), Pricing strategy (EC2 Instance Savings Plans 1 Year No Upfront), Storage amount (30 GB), Instance type (t2.micro)
- Amazon RDS for MySQL: 34.97 USD/mês em South America (Sao Paulo)	
    Database Services: Storage for each RDS instance (General Purpose SSD (gp2)), Storage amount (30 GB), Quantity (1), Instance type (db.m1.small), Utilization (On-Demand only) (50 %Utilized/Month), Deployment option (Single-AZ), Pricing strategy (OnDemand), Additional backup storage (30 GB)
- Amazon Simple Storage Service (S3): 0.09 USD/mês em  US East (N. Virginia)
    Storage: S3 Standard storage (4 GB per month)
- Elastic Load Balancing: 30.32 USD/mês em South America (Sao Paulo)
    Load Balancer: Number of Application Load Balancers (1)

Assim, os custos estimados de serviços foi estimado em USD 80.03 mesais.

## Remuneração dos envolvidos

Considerando a necessidade de remuneração dos envolvidos e importante medida para alcance do ponto de equilíbrio do negócio, foi considerada a seguinte remuneração mensal mínima com base nas atividades designadas de cada membro da equipe:

- Product Owner: R$ 3.000,00 + encargos de folha
- Scrum Master: R$ 2.500,00 + encargos de folha
- Team Member: R$ 2.500,00 + encargos de folha

Considerando que os encargos de folha são frequentemente aproximados a 100% do valor bruto da remuneração, aplicamos essa regra geral para facilitar o cálculo.

Estimamos que os custos de remuneração são de aproximadamente R$ 36.000,00.

## Tributação

Impostos sobre serviços prestados com fato gerador ocorrido no município de São Paulo incide alíquota máxima para o imposto sobre serviço (ISS), incorrendo 5% do valor de faturamento.
Demais tributações dependerão do regime tributário a ser escolhido na constituição jurídica, não sendo prevista no momento da elaboração do projeto.

## Custos totais estimados

Anualizando os valores e o câmbio fixado em 1 USD = 5,50 BRL, foi estimado custos das operações em R$ 460.294,74.