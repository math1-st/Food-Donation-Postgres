-- Número de participantes existem em cada campanha
SELECT
    campanha.nome_campanha,
    COUNT(cadastra.id_participante) AS quantidade_participantes
FROM campanha
INNER JOIN cadastra
ON campanha.id_campanha = cadastra.id_campanha
GROUP BY campanha.nome_campanha;

-- Beneficiários que ainda não receberam suas entregas
SELECT
    nome_beneficiario,
    status_entrega
FROM beneficiario
INNER JOIN entrega
ON beneficiario.id_beneficiario = entrega.id_beneficiario
WHERE status_entrega <> 'finalizada';

-- Mostrar quais empresas doadoras contribuíram indiretamente para cada alimento recebido
SELECT
    nome_empresa,
    nome_campanha,
    categoria_alimento,
    quantidade_alimento
FROM empresa_doadora
INNER JOIN participante
ON empresa_doadora.id_participante = participante.id_participante
INNER JOIN cadastra
ON participante.id_participante = cadastra.id_participante
INNER JOIN campanha
ON cadastra.id_campanha = campanha.id_campanha
INNER JOIN contribuicao
ON campanha.id_campanha = contribuicao.id_campanha
INNER JOIN alimento
ON contribuicao.id_contribuicao = alimento.id_contribuicao
ORDER BY nome_empresa;

-- Mostrar as empresas cadastradas na campanha "Combate a Fome"
SELECT
    nome_empresa
FROM empresa_doadora
INNER JOIN participante
ON empresa_doadora.id_participante = participante.id_participante
INNER JOIN cadastra
ON participante.id_participante = cadastra.id_participante
INNER JOIN campanha
ON campanha.id_campanha = cadastra.id_campanha
WHERE nome_campanha = 'Combate a Fome';

-- Renda média e média de alimentos recebidos
SELECT
    ROUND(AVG(b.renda_domiciliar_beneficiario)::numeric, 2) AS media_renda,
    ROUND(AVG(a.quantidade_alimento)::numeric, 2) AS media_alimentos_recebidos
FROM beneficiario b
JOIN entrega e
    ON b.id_beneficiario = e.id_beneficiario
JOIN contribuicao c
    ON e.id_entrega = c.id_contribuicao
JOIN alimento a
    ON c.id_contribuicao = a.id_contribuicao;

-- Beneficiário com a menor renda e quantidade de alimentos recebida
SELECT
    b.nome_beneficiario,
    b.renda_domiciliar_beneficiario,
    a.quantidade_alimento
FROM beneficiario b
JOIN entrega e
    ON b.id_beneficiario = e.id_beneficiario
JOIN contribuicao c
    ON e.id_entrega = c.id_contribuicao
JOIN alimento a
    ON c.id_contribuicao = a.id_contribuicao
WHERE b.renda_domiciliar_beneficiario = (
    SELECT MIN(renda_domiciliar_beneficiario)
    FROM beneficiario
);

-- Beneficiário com a maior renda e quantidade de alimentos recebida
SELECT
    b.nome_beneficiario,
    b.renda_domiciliar_beneficiario,
    a.quantidade_alimento
FROM beneficiario b
JOIN entrega e
    ON b.id_beneficiario = e.id_beneficiario
JOIN contribuicao c
    ON e.id_entrega = c.id_contribuicao
JOIN alimento a
    ON c.id_contribuicao = a.id_contribuicao
WHERE b.renda_domiciliar_beneficiario = (
    SELECT MAX(renda_domiciliar_beneficiario)
    FROM beneficiario
);

-- Comparar as 5 menores rendas com as quantidades recebidas
SELECT
    b.nome_beneficiario,
    b.renda_domiciliar_beneficiario,
    a.quantidade_alimento
FROM beneficiario b
JOIN entrega e
    ON b.id_beneficiario = e.id_beneficiario
JOIN contribuicao c
    ON e.id_entrega = c.id_contribuicao
JOIN alimento a
    ON c.id_contribuicao = a.id_contribuicao
ORDER BY b.renda_domiciliar_beneficiario ASC
LIMIT 5;

-- Comparar as 5 maiores rendas com as quantidades recebidas
SELECT
    b.nome_beneficiario,
    b.renda_domiciliar_beneficiario,
    a.quantidade_alimento
FROM beneficiario b
JOIN entrega e
    ON b.id_beneficiario = e.id_beneficiario
JOIN contribuicao c
    ON e.id_entrega = c.id_contribuicao
JOIN alimento a
    ON c.id_contribuicao = a.id_contribuicao
ORDER BY b.renda_domiciliar_beneficiario DESC
LIMIT 5;
