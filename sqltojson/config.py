import os

# MySQL Database Settings
DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),
    'port': int(os.getenv('DB_PORT', 3306)),
    'user': os.getenv('DB_USER', 'python'),
    'password': os.getenv('DB_PASSWORD', 'password'),
    'database': os.getenv('DB_NAME', 'mes_core'),
}

# MQTT Settings
MQTT_CONFIG = {
    'host': os.getenv('MQTT_HOST', '144.202.65.194'),
    'port': int(os.getenv('MQTT_PORT', 1883)),
    'topic': os.getenv('MQTT_TOPIC', 'uns/mysql/results'),
}

# Query Settings
QUERY_INTERVAL = int(os.getenv('QUERY_INTERVAL', 5))  # seconds
QUERY_SQL = os.getenv('QUERY_SQL', 'SELECT * FROM mes_core.line;')
