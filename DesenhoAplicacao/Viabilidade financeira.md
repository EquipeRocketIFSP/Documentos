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
