export EDITOR=nvim
export PATH=$HOME/.local/bin:$PATH
export VISUAL=nvim

alias tg_db_dev="psql theguarantors_development"
alias tg_db_test="psql theguarantors_test"
alias vi=nvim
alias vim=nvim
alias tg_dev_migrate="NODE_ENV=development npm run sequelize -- db:migrate"
alias tg_test_migrate="NODE_ENV=test npm run sequelize -- db:migrate"
alias tg_dev_seed="NODE_ENV=development npm run sequelize -- db:seed:all"
alias tg_test_seed="NODE_ENV=seed npm run sequelize -- db:seed:all"
