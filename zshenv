export EDITOR=nvim
export PATH=$HOME/.local/bin:$PATH
export VISUAL=nvim

alias tg_db_dev="docker exec -it pg-docker psql -U postgres -d theguarantors_development"
alias tg_db_test="docker exec -it pg-docker psql -U postgres -d theguarantors_test"
alias vi=nvim
alias vim=nvim
alias tg_dev_migrate="NODE_ENV=development npm run sequelize -- db:migrate"
alias tg_test_migrate="NODE_ENV=test npm run sequelize -- db:migrate"
alias tg_dev_seed="NODE_ENV=development npm run sequelize -- db:seed:all"
alias tg_test_seed="NODE_ENV=test npm run sequelize -- db:seed:all"

alias gocaro_db_dev="docker exec -it pg-docker psql -U postgres -d gocaro_development"
alias gocaro_db_test="docker exec -it pg-docker psql -U postgres -d gocaro_test"
alias gocaro_logs_staging="ssh admin@gocaro.staging.stackbuilders.net sudo journalctl -xf -u gocaro-mainapp"
