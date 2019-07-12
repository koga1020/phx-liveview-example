# SampleApp

## Installation
```
mv .env.example .env
docker-compose run --rm app sh install.sh
```

## Install bulma
```
docker-compose run --rm app sh install_bulma.sh
```

## Replace Project Name
```
ag -ls sample_app | xargs sed -i '' -e "s/sample_app/<new_project_name>/g"
ag -ls SampleApp | xargs sed -i '' -e "s/SampleApp/<new_project_name>/g"
```
