# Projeto Indicium - Adventure Works

## Desafio

A Adventure Works (AW), uma indústria de bicicletas em crescimento acelerado, possui mais de 500 produtos distintos, 20.000 clientes e 31.000 pedidos. Para se diferenciar da concorrência e continuar seu crescimento, a empresa deseja se tornar data-driven, utilizando seus dados estrategicamente para embasar suas decisões de negócio.

O projeto foi idealizado e patrocinado pelo diretor de inovação João Muller, com apoio do CEO Carlos Silveira. No entanto, a diretora comercial Silvana Teixeira tem dúvidas sobre o retorno do investimento, questionando se o valor investido não seria melhor aplicado em ações promocionais com impacto imediato. Além disso, a veracidade dos dados é uma preocupação do CEO, que deseja garantir que os valores reportados estejam alinhados com os números da contabilidade.

## Objetivo

Criar um Data Warehouse para a análise de dados de vendas e clientes, permitindo a identificação de oportunidades de crescimento e aprimoramento da experiência do cliente, garantindo qualidade e veracidade nos dados.

## Fontes de Dados

A análise inicial identificou os seguintes sistemas geradores de dados relevantes:

| Função         | Sistema         |
|---------------|----------------|
| ERP           | SAP            |
| CRM           | Salesforce     |
| Web Analytics | Google Analytics |
| Site          | Wordpress      |

## Perguntas a serem respondidas

1. **Indicadores de pedidos**: Número de pedidos, quantidade comprada, valor total negociado por produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país.
2. **Ticket médio**: Quais os produtos com maior ticket médio por mês, ano, cidade, estado e país? *(ticket médio = (Faturamento bruto - descontos) / número de pedidos no período de análise)*
3. **Clientes mais valiosos**: Quais os 10 melhores clientes por valor total negociado, filtrado por produto, tipo de cartão, motivo de venda, data de venda, status, cidade, estado e país?
4. **Melhores cidades em valor negociado**: Quais as 5 melhores cidades em valor total negociado, analisando produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país?
5. **Análise temporal de vendas**: Qual o número de pedidos, quantidade comprada e valor total negociado por mês e ano? *(Gráfico de série temporal)*
6. **Promoções**: Qual produto teve a maior quantidade de unidades compradas para o motivo de venda "Promotion"?

## Metodologia e Implementação

1. **Análise Exploratória**
   - Revisão do diagrama do banco de dados transacional
   ![alt text](imgs/AdventureWorksERD.jpeg)
   - Identificação das tabelas e campos necessários

2. **Modelagem Dimensional**
   - Definição de um esquema estrela *(star schema)*
   ![alt text](<imgs/Modelagem Dimensional.png>)
   - Criação das tabelas de fatos e dimensões

3. **Transformação e Carga de Dados**
   - Criação do Diagrama para o Processo de Transformação
   ![Diagrama DBT](https://github.com/user-attachments/assets/d7349f5a-a258-4f85-bf83-04001c3198e4)
   - Extração dos dados brutos do Snowflake
   - Transformações para limpeza e enriquecimento dos dados
   - Carga das dimensões e fatos em uma nova camada no Snowflake

5. **Visualização e Relatórios**
   - Desenvolvimento de dashboards no Power BI
   - Utilização das dimensões e fatos transformados para criar as análises
   - Relatório do Power BI concluído e validado

## Validação de Dados

- Implementação de testes para garantir que as vendas brutas de 2011 correspondam ao valor de **$12.646.112,16**, conforme indicado pelo CEO.
- Validação dos dados com a equipe de auditoria da contabilidade.
- Comparação entre os valores calculados e os registros históricos.

## Conclusão

O projeto Adventure Works possibilitou a criação de uma estrutura robusta de dados, permitindo uma análise aprofundada das vendas e do comportamento dos clientes. Com a implementação do Data Warehouse, a empresa agora pode tomar decisões baseadas em dados confiáveis, identificando oportunidades de crescimento e melhorias operacionais.

Além disso, a construção dos dashboards no Power BI forneceu uma interface intuitiva para a visualização dos dados, facilitando a tomada de decisões estratégicas. A validação dos dados garantiu a integridade e precisão das informações, alinhando-se às expectativas da diretoria.

Com essa base sólida, a Adventure Works está bem posicionada para expandir a análise de dados para outras áreas da empresa, consolidando-se como uma organização verdadeiramente data-driven.
