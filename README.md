# Sistema de Doação de Alimentos

Um sistema inteligente de banco de dados desenvolvido para ajudar Organizações Não Governamentais (ONGs) e instituições beneficentes a gerenciar campanhas de arrecadação de alimentos, conectar doadores a quem precisa e organizar a entrega dos recursos de forma eficiente.

---

## Autores
Este projeto foi desenvolvido com carinho por:
* **Pedro de Alcântara Pereira**
* **Matheus Felix Nogueira** 
* **Gabriel Dantas Rodrigues** 

*Fundação Educacional Inaciana Padre Sabóia de Medeiros (FEI) - 2025* 

---

## O Problema & A Nossa Solução
Muitas pessoas em regiões periféricas ou de difícil acesso sofrem com a falta de alimentos. Ao mesmo tempo, mercados e restaurantes jogam fora toneladas de comida que ainda estão boas para consumo.

Nosso sistema resolve isso conectando os dois lados. Ele gerencia o estoque de comida doada, controla quem tem direito a receber e organiza os carros/rotas de entrega para que a comida chegue rapidamente a quem mais precisa.

---

## Tecnologias Utilizadas
**PostgreSQL**: SGBD robusto utilizado para a implementação, consultas complexas e segurança dos dados.

---

## Estrutura do Banco de Dados (Entidades)
Para o sistema funcionar, ele guarda informações sobre as seguintes partes ("entidades"):

* **ONG**: A dona do sistema que cria as campanhas.
* **Campanha**: O evento de arrecadação (ex: "Campanha do Agasalho e Alimento").
* **Contribuição**: O registro de cada ajuda que chega.
* **Empresa Doadora**: Supermercados ou restaurantes que doam o excedente.
* **Voluntários**: Pessoas físicas que doam tempo ajudando na entrega ou doando comida.
* **Funcionários**: Divididos entre **Gerentes** (coordenam tudo) e **Administradores** (cuidam da TI e do sistema).
* **Alimentos**: O cadastro do produto, validade, peso e categoria.
* **Sistema de Logística**: O controle do transporte e envio dos alimentos.
* **Beneficiário**: A pessoa necessitada que recebe os alimentos (precisa comprovar renda de até 1 salário mínimo).

---

## Como as Coisas se Conectam (Relacionamentos)
* Uma **ONG** contrata vários **Funcionários**.
* Os **Funcionários** gerenciam o **Sistema de Logística**.
* A **Campanha** criada pela ONG recebe **Contribuições**.
* As **Empresas** e **Voluntários** doam os **Alimentos**.
* Os **Alimentos** passam pela **Logística** e chegam até o **Beneficiário** final.
