# SampleApp

## Installation
```
mix deps.get
mix ecto.setup
cd assets && npm install
mix phx.gen.secret 32 | xargs -I% sed -i -e "s/SECRET_SALT/%/g" config/config.exs 
```