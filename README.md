# dbt + BigQuery in Gitpod Demo Project

This demo project showcases how to run [dbt](https://www.getdbt.com/)'s core module on top of a BigQuery warehouse inside a [Gitpod](https://www.gitpod.io/) Cloud Development Environment. The project is based on the well-known [jaffle_shop example](https://github.com/dbt-labs/jaffle_shop/).

## Configuration

In order to connect with BigQuery, the following environment variables need to be set inside inside the development environment:

- `DBT_SERVICE_ACCOUNT`: the content of a valid service account JSON. Required permissions are _BigQuery User_ and _BigQuery Data Editor_
- `DBT_PROJECT`: ID of the GCP project in which the models will be persisted
- `DBT_DEV_DATASET`: Name of the dataset in which the models will be persisted, e.g. `dbt_dev`
- `DBT_LOCATION`: multi-regional or regional location of the data, e.g.: `US`, `EU`, `us-west2`

The easiest way to achieve this is by setting [user-specific environment variables in Gitpod](https://gitpod.io/user/variables). Find out more about environment variables in Gitpod [here](https://www.gitpod.io/docs/configure/projects/environment-variables).

The values of the environment variables are used inside dbt's `profiles.yml`. For more information about setting up dbt with BigQuery, click [here](https://docs.getdbt.com/reference/warehouse-setups/bigquery-setup).

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-samples/template-dbt-bigquery)

The validity of the dbt configuration will be tested inside the workspace. Run the following commands to test the functionality of the Jaffle shop demo:

1. `dbt seed`: to materialize the CSVs
2. `dbt run`: to run the models
3. `dbt test`: to test all models

If all commands run succesfully, you have completed the setup of a working dbt development environment on a BigQuery warehouse with Gitpod!🎉

## Get Started With Your Own Project

### A new project

Click the above "Open in Gitpod" button to start a new workspace. Once you're ready to push your first code changes, Gitpod will guide you to fork this project so you own it.

Beware that we used Gitpod's [project-specific environment variables](https://www.gitpod.io/docs/configure/projects/environment-variables#project-specific-environment-variables) to store the path to the `.profiles.yml`. For this project to work in a new environment, we recommend you create a [Gitpod project](https://www.gitpod.io/docs/configure/projects) for it and set up the project variable `DBT_PROFILES_DIR` with the value `./profiles/`.

Alternatively, you can also make sure that the path is accessible in each terminal by setting a [terminal-specific Environment variable](https://www.gitpod.io/docs/configure/projects/environment-variables#task-terminal-specific-environment-variables) for each terminal you use, e.g. by running
```bash
export DBT_PROFILES_DIR=./profiles/
```
at the top of each task section in the `.gitpod.yml`.

### An existing project

To get started with dbt on Gitpod, add a [`.gitpod.yml`](./.gitpod.yml) to any of your existing dbt projects. To learn more, please see the [Getting Started](https://www.gitpod.io/docs/getting-started) documentation.
