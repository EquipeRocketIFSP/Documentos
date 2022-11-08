### Funcionalidades:

- O cadastro da clínica é preciso?
- Vamos atender consultórios e clínicas?


#### Módulos:
###### Cadastro da clínica
##### Geral:
- Home com login e criação de conta 
- Criação de conta de vet com validador de cadastro profissional para que tenha acesso às funcionalidades restritas do sistema.

###### Obs:
Deve ser possível criar uma conta (dois tipos de conta: uma com CRMV válido, onde todas as funções podem ser acessadas e uma sem necessidade de CRMV, onde limitamos alguns acessos)
Ao fazer login, as funcionalidades são exibidas de acordo com as necessidades daquele tipo de conta (não devem ser mostradas as funcionalidades as quais ele não tem acesso pra melhor experiência do usuário)

##### Recepção:
- Agenda 
- Cadastro de funcionários, clientes, animais e atendimentos.
- Histórico de pacientes (CRUD já não resolve?)

###### Obs:
Agenda/calendário onde seja possível CRUD de consultas 
Sistema de fila para atendimento de acordo com a ordem de cadastro? Faz sentido? Existe lei daquelas que garante que um animal em estado de urgência deve passar na frente? Isso é algo para tomarmos cuidado caso isso seja implementado 
Possível fazer CRUD de clientes (donos dos animais), pré-cadastro do animal deve ser feito pelo recepcionista para preenchimento automático das informações básicas já no prontuário?
Link entre o cadastro do cliente e o do animal paciente
Cadastro de funcionário não deve ser feito por um recepcionista, software apenas para fluxo de atendimento clínico, então funcionários que usarão devem criar uma conta já com vínculo à clínica
Vemos alguma funcionalidade específica para visualizar histórico dos pacientes? Ou apenas os atendimentos que constarem ao seu cadastro? 

##### Clínico:
- Prontuários digitais (Achar um modelo)

Documentos (https://crmvsp.gov.br/wp-content/uploads/2021/03/MANUAL_RT_CRMV-SP.pdf)
    Anexo VIII – Atestado de óbito individual
    Anexo IX – Atestado de óbito de grupo de animais
    Anexo X – Plano de Gerenciamento de Resíduos de Serviços de Saúde Animal Simplificado (PGRSSA)
    ANEXO 1 – FICHA DE ATENDIMENTO
    ANEXO 2 – AVALIAÇÃO DO COMPORTAMENTO DOS ANIMAIS
    ANEXO 3 – AUXÍLIO NA AVALIAÇÃO DO ANIMAL
    Anexo XIII – Termo de Autorização para Realização de Procedimentos Anestésicos
    Anexo XIV – Termo de Autorização para Procedimento Cirúrgico    Anexo XV – Termo de Autorização para Internação e Tratamento Clínico ou Cirúrgico
    Anexo XVI – Declaração de Não Autorização de Procedimentos e/ou Exames
    Anexo XVII – Termo de Retirada de Animal do Serviço Veterinário sem Alta Médica
    Anexo XVIII – Termo de Consentimento para Realização de Eutanásia
    Anexo XIX – Termo de Procedimento de Óbito
    Anexo XX – Carta de Encaminhamento
    Anexo XXI – Autorização de Responsável
    Anexo XXII – Termo de Não Aceitação de Condutas Clínicas/Medicações
    Anexo XXIII – Termo de Reconhecimento de Dívida
    Anexo XXIV – Termo de Consentimento Livre e Esclarecido (TCLE)    
    Anexo XXV – Termo de Autorização para Exames
    Anexo XXVI – Termo de Autorização para Procedimento Terapêutico
    
- Certificador digital, ou similar, para rastrear e verificar alterações feitas no prontuário.
- Histórico de pacientes
- Mapeamento genealógico do animal

###### Obs:
Criação de prontuário digital com informações já preenchidas do cadastro feito no módulo anterior? 
Quais cuidados devemos cuidar com o rastreador de alterações feitas no prontuário? 
Histórico do paciente deve dar ênfase nos cuidados a se ter com o animal: alergia a algum medicamento, reação anormal, o que mais podemos colocar?

##### Farmácia:
- Gestão de estoque
- Cruzamento de dados entre medicamentos utilizados e inseridos no Estoque.
- Controle de vacinação (um oferece notificação automática aos clientes)