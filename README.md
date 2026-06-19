# Sistema de Doação de Alimentos

Sistema de banco de dados desenvolvido para gerenciar campanhas de arrecadação de alimentos, conectando ONGs, doadores e beneficiários, além de organizar a logística de entrega.

---

## Autores
- Pedro de Alcântara Pereira  
- Matheus Felix Nogueira

Fundação Educacional Inaciana Padre Sabóia de Medeiros (FEI) - 2025

---

## Problema e Solução

Existe um grande desperdício de alimentos por empresas enquanto muitas famílias não têm acesso básico à alimentação.

O sistema resolve isso estruturando o fluxo completo da doação:

- Criação de campanhas por ONGs
- Registro de contribuições de empresas e participantes
- Armazenamento e controle de alimentos doados
- Organização da logística de entrega
- Distribuição para beneficiários cadastrados

---

## Tecnologias Utilizadas

- PostgreSQL (modelagem e persistência de dados relacional)

---

## Estrutura do Banco de Dados

O sistema é composto por entidades principais e tabelas de relacionamento.

### Entidades principais

- **ONG**: responsável por criar e gerenciar campanhas
- **Campanha**: evento de arrecadação vinculado a uma ONG e concessão
- **Concessão**: documentação e autorização para execução da campanha
- **Contribuição**: registro de doações realizadas dentro de uma campanha
- **Alimento**: itens doados com controle de validade, peso e categoria
- **Beneficiário**: pessoa que recebe os alimentos com base em dados socioeconômicos
- **Participante**: entidade base para voluntários e empresas doadoras
- **Voluntário**: participante físico que atua em funções operacionais
- **Empresa Doadora**: organização que realiza doações
- **Funcionário**: colaboradores da ONG (gestão e operação)
- **Transportadora**: responsável pela logística de entrega
- **Entrega**: controle de envio e recebimento dos alimentos

---

## Relacionamentos do Sistema

- Uma **ONG** possui vários **Funcionários**, **Campanhas** e **Transportadoras**
- Uma **Campanha** está vinculada a uma **Concessão** e recebe **Contribuições**
- Uma **Contribuição** está ligada a uma **Campanha**
- Uma **Contribuição** gera vários **Alimentos**
- Um **Alimento** pertence a uma **Contribuição**
- Um **Participante** pode ser **Voluntário** ou **Empresa Doadora**
- Um **Participante** pode se cadastrar em várias **Campanhas** (tabela `cadastra`)
- Uma **Entrega** conecta **Transportadora** e **Beneficiário**
- Os **Alimentos** são distribuídos através das **Entregas**
