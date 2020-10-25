import yaml
from pathlib import Path

config_path = Path(__file__).parent.parent / "db_config.yaml"

with open(config_path) as f:
    config = yaml.load(f, Loader=yaml.FullLoader)

CONNECTION_STRING = f'{config["schema"]}://{config["user"]}:{config["passwd"]}@{config["host"]}:{config["port"]}/{config["db_name"]}'
