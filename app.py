import time
import random
import paho.mqtt.publish as publish

while True:
    temp = random.randint(25, 35)
    hum = random.randint(60, 80)
    data = f"Temp:{temp}, Hum:{hum}"
    publish.single("iot/subashi-sensor/data", data, hostname="broker.hivemq.com")
    print(data)
    time.sleep(5)