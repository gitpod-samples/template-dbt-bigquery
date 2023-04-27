# A dbt template on Gitpod

This is a [dbt](https://www.getdbt.com/) template configured for ephemeral cloud development environments on [Gitpod](https://www.gitpod.io/). The project is based on the famous [jaffle_shop example](https://github.com/dbt-labs/jaffle_shop/).

## Connecting to BigQuery

Before you can connect to BigQuery, you need to create the following four [user-specific environment variables in Gitpod](https://gitpod.io/user/variables).

- `DBT_SERVICE_ACCOUNT`: the content of a valid service account JSON
- `DBT_PROJECT`: the name of your dbt project, in this case it is `gitpod_sample`
- `DBT_DEV_DATASET`: this depends on personal preference, e.g. `dbt_dev`
- `DBT_LOCATION`: the location of your BigQuery project, i.e. `US` or `EU`

Please check the [dbt configuration](https://docs.getdbt.com/reference/profiles.yml) if you want to connect to any other data warehouse.

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-samples/template-dbt-bigquery)

The workspace will then try to connect to your data warehouse. To use the models in this example project you need to run the following commands.

1. `dbt seed`: to materialize the CSVs
2. `dbt run`: to run the models
3. `dbt test`: to test all models

## Get Started With Your Own Project

### A new project

Click the above "Open in Gitpod" button to start a new workspace. Once you're ready to push your first code changes, Gitpod will guide you to fork this project so you own it.

In order to ensure that the setup works for your project, beware that we used Gitpod's [project-specific environment variables](https://www.gitpod.io/docs/configure/projects/environment-variables#project-specific-environment-variables) to store the path to the `.profiles.yml`. For this project to work in a new environment, we recommend you create a [Gitpod project](https://www.gitpod.io/docs/configure/projects) for it and set up the project variable `DBT_PROFILES_DIR` with the value `./profiles/`.

Alternatively, you can also make sure that the path is accessible in each terminal by setting a [terminal-specific Environment variable](https://www.gitpod.io/docs/configure/projects/environment-variables#task-terminal-specific-environment-variables) for each terminal you use, e.g. by running
```
export DBT_PROFILES_DIR = ./profiles/
```
at the top of each task section in the `.gitpod.yml`.

### An existing project

To get started with dbt on Gitpod, add a [`.gitpod.yml`](./.gitpod.yml) to any of your existing dbt projects. To learn more, please see the [Getting Started](https://www.gitpod.io/docs/getting-started) documentation.
