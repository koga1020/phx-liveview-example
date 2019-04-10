#!/bin/bash

mix deps.get
mix ecto.setup
npm install --prefix assets
mix phx.gen.secret 32 | xargs -I% sed -i -e "s/SECRET_SALT/%/g" config/config.exs 