
# Oracle Database Free

Get Oracle Database Free inside a container

## Example Usage

```json
"features": {
    "ghcr.io/gvenzl/devcontainers-features/oracledbfree": {
        "app_user": "test",
        "app_user_password": "LetsTest1"
    }
}
```

## Options

| Options Id | Description | Type | Default Value |
|------------|-------------|------|---------------|
| name       | The name of the container. | string | oracledb |
| image      | The image to use.          | string | slim |
| port       | The port to expose the container at. | string | 1521 |
| oracle\_password | The Oracle Database password | string | |
| app\_user  | The application user.      | string | |
| app\_user\_password| The application user password. | string | |
| named\_volume | The volume to mount | string | |
