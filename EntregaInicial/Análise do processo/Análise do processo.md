# Análise dos processos que serão geridos pela clínica

Premissas:
- _Dono_ é um tipo de _Funcionario_ com função de `Dono`
- _Veterinario_ é um tipo de _Funcionario_
- _Funcionario_ é um tipo por si
- Apenas _Funcionario_ com função de `Cadastro` pode CRUD de _Funcionario_ diferente de si
- _Funcionario_ pode realizar edição dos próprios dados
- _Prontuario_ são exibidos em lista (relação de prontuário) ou página (detalhamento e CRUD)
- Apenas _Veterinario_ com função `Clinica` pode acessar *página* de Prontuário
- _Funcionario_ pode visualizar *lista* de _Prontuario_ (envio ao email do tutor)
- Todo _Funcionario_ pode cadastrar _Animal_
- Todo _Funcionario_ pode criar _Agenda_
- _Agenda_ não aceita duplicidade de horário (estabelecer janela de atendimento)
- Todo _Animal_ deve ter ao menos um _Tutor_
- _Tutor_ pode ter n _Animal_
- _Animal_ pode ter pais
- _Prontuario_ requer _Exame_
- _Prontuario_ requer _Procedimento_
- _Prontuario_ requer _Cirurgia_
- _Prontuario_ requer _Medicamento_
- _Prontuario_ requer _Documento_
- _Clinica_ tem _Estoque_
- _Estoque_ controla _Medicamento_
- _Medicamento_ é prescrito em _Prontuario_


Regras de negócios identificadas:

- Não devem ocorrer duplicidades de registros
- 


```yml
process:
    _Dono_ cadastra clínica:
        appProcess:
            - Abrir pop up informando o check list de documentos que a pessoa precisa ter em mãos para realizar o cadastro da clínica
            - Validar formatação válida dos registros das numerações de CPF e CNPJ
            - Validar conformidade de CNAE
            - Validar cadastro de registro no CRMV inserido sendo válido (Adicionar termo de conformidade de dados)
            - Validar se o cadastro da clínica já foi iniciado
            - Cadastrar nova clínica apenas após ter dados do _Dono_
            - Não habilitar cadastros caso não exista _Veterinario_ com a função `responsavelTecnico`
    _Dono_ cadastra _Funcionario_:
        appProcess:
            - Check de função (Role) que o requisitante apresenta:
                results:
                    - sucess
                    - denial
            - 
    _Funcionario_ cadastra _Animal_ (Pet):
        appProcess:
```