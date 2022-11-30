# Gastos Pessoais (back-end)

Back-end do sistema de controle de gastos pessoais.

## Requisitos de Sistema

* Ruby 3.1.2
* Biblioteca PostgreSQL

## Técnica de Desenvolvimento

Para que o código do sistema seja de fácil validação e correção, estamos utilizando a técnica de desenvolvimento TDD (_Test Driven Development_).

## Fluxo de Trabalho

### Explicação das branches

* A branch `main` está com o código mais atualizado e possui deploy automático
* Temos a branch `development`, A partir dela são criadas outras branches, onde são desenvolvidas as novas funcionalidades
* A nomenclatura das branches de funcionalidade são `feature-NOME_FUNCIONALIDADE`, ex: `feature-cadastro_multiplo`
* Em caso de bugs encontrados, é possível abrir branches de correções de bugs
  * Quando o bug está em `development` a nomenclatura da branch deve ser `bugfix-ERRO_ENCONTRADO`, ex: `bugfix-cadastro_multiplo_nao_le_csv`
  * Quando o bug está em `main`, a nomenclatura da branch deve ser `hotfix-ERRO_ENCONTRADO`, ex: `hotfix-falha_na_conexao_com_bd`

### Fluxo

1. Ter certeza de que está na branch `development` e que ela está atualizada

```
git checkout development
git pull origin development
```

2. Alterar para branch nova

```
git checkout -b NOME_BRANCH
git push --set-upstream origin NOME_BRANCH
```

3. Alterar código para cumprir com o objetivo da branch
4. Salvar as alterações feitas e fazer _commits_ com mensagens explicativas

```
git add [ARQUIVO_INDIVIDUAL || LISTA DE ARQUIVOS]
git commit -m "MENSAGEM EXPLICATIVA"
git push origin NOME_BRANCH
```

5. Criar um Pull Request (PR) para `development` contendo no nome o versionamento:

* `X.X.X`
  * Primeiro X é a versão do sistema
  * Segundo X é o número de funcionalidades implementadas
  * Terceiro X é o número de correções desde a última funcionalidade

6. Após aprovação de (pelo menos) 1 outro programador, realizar o merge

7. Retornar à branch `development` e deletar a branch criada

```
git checkout development
git pull origin development
git branch -d NOME_BRANCH
```
