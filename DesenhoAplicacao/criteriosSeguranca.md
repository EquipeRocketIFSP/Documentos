# Segurança

O protocolo HTTP (Hyper Text Transfer Protocol) é um protocolo que permite que o usuário troque informações com o servidor que hospeda o site, entretanto o problema desse protocolo é que as mensagens transmitidas entre o servidor que hospeda o site e o cliente não são criptografadas trazendo insegurança aos dados, visto que uma pessoa mal intencionada possa interceptar as mensagens e usar os dados de maneira prejudicial ao cliente.

É imprescindível que sistema que será desenvolvido tenha um protocolo de segurança que permita a troca de informações entre o servidor e o usuário, por conta disso o protocolo HTTPS (Hyper Text Transfer Protocol Secure), que consiste numa extensão do protocolo HTTP utilizando uma camada de segurança adicional que emprega o protocolo TLS (Transport Layer Security)/SSL (Secure Socket Layer), será utilizado, visto que esse protocolo faz a criptografia das mensagens trocadas entre servidor e cliente, impedindo que os dados sejam interceptados. A criptografia consiste na alteração da mensagem original para um código no qual somente o transmissor e o receptor da mensagem consigam interpretar, dificultando a interpretação dos dados por um terceiro.

# Privacidade

Em diversos sistemas, tanto mobile como web, diversas informações são trocadas entre o usuário e o servidor a todo instante. Dentre essas informações podemos destacar documentos pessoais, senhas e informações sigilosas. Visto isso, uma das prioridades do sistema a ser desenvolvido será a privacidade de seus usuários e de suas informações. 

Em 14 de agosto de 2018 a LGPD (Lei Geral de Proteção de Dados Pessoais), lei número 13.709, foi decretada justamente com intuito de proteger os dados dos usuários. Quando se fala sobre a LGPD, o tratamento dos dados pessoais pode ser realizado por três agentes, denominados controlador, operador e encarregado, esse último indicado pelo controlador com intuito de atuar como canal de comunicação entre os outros dois, o titular dos dados e a ANPD (Autoridade Nacional de Proteção de Dados). A lei cita sobre qualquer atividade no qual haja o tratamento dos dados, como a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, entre outras atividades. O titular dos dados é o dono desses dados e toda a operação ou distribuição dos dados deverão estar dentro da lei e ser autorizados por este, com exceção única do compartilhamento desses dados dentro da administração pública no âmbito da execução de políticas públicas, entretanto tal órgão que coleta deverá informar com transparência quais dados serão compartilhados e com quais indivíduos, e o órgão receptor dos dados deverá informar o razão pela captação e utilização de tais informações de maneira clara. A distribuição indevida desses dados poderá acarretar ônus ao propagador.

Portanto, pode-se dizer que a LGPD tem como principais objetivos assegurar o direito à privacidade e à proteção de dados pessoais, estabelecer regras sobre os tratamentos desses dados e fortalecer a segurança das relações jurídicas e a confiança do titular no tratamento de seus dados.

# Legislação

Como o projeto é desenvolvido para área de medicina veterinária, devem ser observadas legislações e decretos concernentes.

- CÓDIGO DE ÉTICA PROFISSIONAL DO MÉDICO-VETERINÁRIO
- NORMA TÉCNICA ESPECIAL: anexo do artigo 1º do Decreto nº 40.400,de 24 de outubro de 1995
- anexo 1 da RESOLUÇÃO CFMV Nº 1.000, DE 11 DE MAIO DE 2012
- tem mais naquele MANUAL DE RESPONSABILIDADE TÉCNICA E LEGISLAÇÃO (4° revisão, 2019)
