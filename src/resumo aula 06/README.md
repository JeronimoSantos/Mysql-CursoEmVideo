# Mais alterações nas tabelas 🎲

## Conhecendo mais das posibilidades das funções do inner into, com mais comandos permitindo alterações mais precisas nos dados, podendo alterar os nomes das tabelas, das colunas, tipo primmitivo, posição em relação a outras linhas e deletar uma coluna. Também aprendemos um comando que não deixa repetir os dados.

## COMANDOS APRENDIDOS:

```
ALTER TABLE nome_antigo RENAME TO nome_novo;
```

```
ALTER TABLE pessoas ADD COLUMN nome_coluna mais tipo_primitivo FIRST;
```

```
ALTER TABLE nome_tabela ADD COLUMN nome_coluna mais tipo_primitivo AFTER nome_coluna_referencia;
```

```
ALTER TABLE nome_tabela MODIFY COLUMN nome_coluna mais o tipo_primitivo;
```

```
ALTER TABLE nome_tabela CHANGE COLUMN nome_antigo nome_novo mais o tipo_primitivo;
```

```
ALTER TABLE nome_tabela DROP COLUMN nome_coluna;
```

```
UNIQUE;
```
