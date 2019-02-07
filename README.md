# Recipes Mirror
###### Ruby 2.6.1
### Instruções

Mirror do [Projeto cookbook](https://trello.com/b/egtpbQgY/cookbookpersonal), esse site não possui base de dados, e todos seus serviços são consumidos por API.

### Instalação

* `git clone git@vps1474.publiccloud.com.br:matheusam/recipes_mirror.git`
* `cd recipes_mirror`
* `bin/setup`

Inicie o servidor na porta __4000__(*ou qualquer outra de sua escolha, __menos__ a porta __3000__.*) para não dar conflitos com o __Cookbook__.

* `rails s -p4000`

Obs: Para que o **mirror** funcione sem alterações, é preciso iniciar o servidor na porta 3000.
