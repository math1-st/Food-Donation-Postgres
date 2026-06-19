-- ARQUIVO PARA CRIAÇÃO DE TABELAS

-- REGRAS PARA CRIAÇÃO:
-- 1. CNPJ, CPF E CEP SÃO STRINGS, POIS TÊM PONTUAÇÃO
-- 2. PK E DADOS ÚNICOS SÃO DECLARADAS NO TOPO DAS TABELAS
-- 3. FK SÃO DECLARADAS NO FIM DAS TABELAS, PRIMEIRO O NOME E TIPO E DEPOIS A REFERÊNCIA
-- 4. DADOS PRECISAM DO NOME DA TABELA NO FINAL


CREATE TABLE ong (
  id_ong INT PRIMARY KEY,
  cnpj_ong VARCHAR(18) UNIQUE NOT NULL,
  telefone_ong VARCHAR(20) UNIQUE NOT NULL,
  email_ong VARCHAR(50) UNIQUE NOT NULL,
  nome_ong VARCHAR(100) NOT NULL,
  cep_ong VARCHAR(10) NOT NULL,
  numero_ong INT NOT NULL
);

CREATE TABLE concessao (
  id_concessao INT PRIMARY KEY,
  licenca_municipal_concessao TEXT NOT NULL,
  documento_descritivo_concessao TEXT NOT NULL
);

CREATE TABLE campanha (
  id_campanha INT PRIMARY KEY,
  nome_campanha VARCHAR(100) NOT NULL,
  descricao_campanha TEXT NOT NULL,
  meta_campanha VARCHAR(50) NOT NULL,
  data_inicio_campanha DATE NOT NULL,
  data_final_campanha DATE NOT NULL,

  id_concessao INT NOT NULL,
  id_ong INT NOT NULL,
  FOREIGN KEY (id_concessao) REFERENCES concessao(id_concessao),
  FOREIGN KEY (id_ong) REFERENCES ong(id_ong)
);

CREATE TABLE contribuicao (
  id_contribuicao INT PRIMARY KEY,
  data_contribuicao DATE NOT NULL,
  descricao_contribuicao TEXT NOT NULL,

  id_campanha INT NOT NULL,
  FOREIGN KEY (id_campanha) REFERENCES campanha(id_campanha)
);

CREATE TABLE alimento (
  id_alimento INT PRIMARY KEY,
  marca_alimento VARCHAR(50) NOT NULL,
  vencimento_alimento DATE NOT NULL,
  peso_alimento FLOAT NOT NULL,
  categoria_alimento VARCHAR(30) NOT NULL,
  quantidade_alimento INT NOT NULL,
  validade_alimento DATE NOT NULL,

  id_contribuicao INT NOT NULL,
  FOREIGN KEY (id_contribuicao) REFERENCES contribuicao(id_contribuicao)
);

CREATE TABLE participante (
  id_participante INT PRIMARY KEY
);

CREATE TABLE cadastra (
  PRIMARY KEY (id_campanha, id_participante), -- Impede de um usuário se inscrever novamente na mesma campanha.

  id_campanha INT NOT NULL,
  id_participante INT NOT NULL,

  FOREIGN KEY (id_campanha) REFERENCES campanha(id_campanha),
  FOREIGN KEY (id_participante) REFERENCES participante(id_participante)
);

CREATE TABLE voluntario (
  id_participante INT PRIMARY KEY, -- Evita que outros voluntários possam compartilhar o mesmo ID.
  cpf_voluntario VARCHAR(11) UNIQUE NOT NULL,
  telefone_voluntario VARCHAR(20) UNIQUE NOT NULL,
  funcao_voluntario VARCHAR(30), -- Caso o voluntário não sabe se quer ser doador ou outra função, podemos deixar NULl por enquanto.
  nome_voluntario VARCHAR(100) NOT NULL,

  FOREIGN KEY (id_participante) REFERENCES participante(id_participante)
);

CREATE TABLE empresa_doadora (
  id_participante INT PRIMARY KEY,
  cnpj_empresa VARCHAR(18) UNIQUE NOT NULL,
  telefone_empresa VARCHAR(20) UNIQUE NOT NULL,
  email_empresa VARCHAR(50) UNIQUE NOT NULL,
  nome_empresa VARCHAR(100) NOT NULL,
  cep_empresa VARCHAR(10) NOT NULL,
  numero_empresa INT NOT NULL,

  FOREIGN KEY (id_participante) REFERENCES participante(id_participante)
);

CREATE TABLE funcionario (
  id_funcionario INT PRIMARY KEY,
  cpf_funcionario VARCHAR (11) UNIQUE NOT NULL,
  telefone_funcionario VARCHAR(20) UNIQUE NOT NULL,
  email_funcionario VARCHAR(50) UNIQUE NOT NULL,
  nome_funcionario VARCHAR(100) NOT NULL,
  cargo_funcionario VARCHAR(30) NOT NULL,

  id_ong INT NOT NULL,
  FOREIGN KEY (id_ong) REFERENCES ong(id_ong)
);

CREATE TABLE transportadora (
  id_transportadora INT PRIMARY KEY,
  telefone_transportadora VARCHAR(20) UNIQUE NOT NULL,
  email_transportadora VARCHAR(50) UNIQUE NOT NULL,
  cnpj_transportadora VARCHAR(18) UNIQUE NOT NULL,
  nome_transportadora VARCHAR(100) NOT NULL,
  cep_transportadora VARCHAR(10) NOT NULL,
  numero_transportadora INT NOT NULL,

  id_ong INT NOT NULL,
  FOREIGN KEY (id_ong) REFERENCES ong(id_ong)
);

CREATE TABLE beneficiario (
  id_beneficiario INT PRIMARY KEY,
  cpf_beneficiario VARCHAR(11) UNIQUE NOT NULL,
  nome_beneficiario VARCHAR(100) NOT NULL,
  telefone_beneficiario VARCHAR(20) NOT NULL,
  renda_domiciliar_beneficiario FLOAT NOT NULL,
  data_nascimento_beneficiario DATE NOT NULL,
  cep_beneficiario VARCHAR(10) NOT NULL,
  numero_beneficiario INT NOT NULL
);

CREATE TABLE entrega (
  id_entrega INT PRIMARY KEY,
  data_envio DATE, -- Caso ainda não foi despachado, pode ser NULL.
  data_entrega DATE, -- Caso ainda não foi entregue, pode ser NULL.
  status_entrega VARCHAR(30) NOT NULL,   -- Pode ser: não_iniciada, em_rota e finalizada.

  id_transportadora INT NOT NULL,
  id_beneficiario INT NOT NULL,
  FOREIGN KEY (id_transportadora) REFERENCES transportadora(id_transportadora),
  FOREIGN KEY (id_beneficiario) REFERENCES beneficiario(id_beneficiario)
);