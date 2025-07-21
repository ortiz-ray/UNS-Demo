import json
import time
import pymysql
import paho.mqtt.client as mqtt
from config import DB_CONFIG, MQTT_CONFIG, QUERY_INTERVAL, QUERY_SQL

def fetch_data():
    try:
        connection = pymysql.connect(
            host=DB_CONFIG['host'],
            port=DB_CONFIG['port'],
            user=DB_CONFIG['user'],
            password=DB_CONFIG['password'],
            db=DB_CONFIG['database'],
        )

        with connection.cursor(pymysql.cursors.DictCursor) as cursor:
            cursor.execute(QUERY_SQL)
            results = cursor.fetchall()

            # Only expect 1 result for Press 103 schedule
            if not results:
                return None

            record = results[0]

            # Remove null fields (Ignition dislikes null tags)
            filtered_record = {k: v for k, v in record.items() if v is not None}

            return json.dumps(filtered_record, default=str)

    except pymysql.MySQLError as e:
        print(f"Error fetching data from MySQL: {e}")
        return None

    finally:
        if 'connection' in locals() and connection.open:
            connection.close()

def publish_to_mqtt(client, payload):
    try:
        client.publish(MQTT_CONFIG['topic'], payload)
        print(f"Published to MQTT topic {MQTT_CONFIG['topic']}")
    except Exception as e:
        print(f"Error publishing to MQTT topic {MQTT_CONFIG['topic']}: {e}")

def main():
    client = mqtt.Client(protocol=mqtt.MQTTv311)

    try:
        client.connect(MQTT_CONFIG['host'], MQTT_CONFIG['port'])
        print("Connected to MQTT broker")

        while True:
            print("Fetching data from MySQL...")
            payload = fetch_data()

            if payload:
                print("Publishing data to MQTT...")
                publish_to_mqtt(client, payload)
            else:
                print("No data to publish")

            time.sleep(QUERY_INTERVAL)

    except Exception as e:
        print(f"Error in main loop: {e}")

    finally:
        client.disconnect()
        print("Disconnected from MQTT broker")

if __name__ == "__main__":
    main()
