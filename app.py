import time
import random
import paho.mqtt.publish as publish

BROKER = "broker.hivemq.com"
TOPIC = "greenhouse/subashi/sensors"

while True:
    temp = round(random.uniform(24.0, 35.0), 1)
    hum = round(random.uniform(60.0, 85.0), 1)
    soil = round(random.uniform(30.0, 70.0), 1)
    light = random.randint(200, 800)
    data = f"Temp:{temp}C, Humidity:{hum}%, Soil:{soil}%, Light:{light}lux"
    try:
        publish.single(TOPIC, data, hostname=BROKER)
        print(f"[OK] {data}")
    except Exception as e:
        print(f"[ERROR] {e}")
    time.sleep(5)