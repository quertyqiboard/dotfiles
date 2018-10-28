brightness = open("/sys/class/backlight/intel_backlight/brightness", "w+")
# print (brightness.readable())
value = (int(brightness.read()))
# print("Aktueller Wert: {}".format(value))
if (value - 20) < 10:
    brightness.write("10")
elif (value - 20) > 10:
    brightness.write("{}".format(value-20))
brightness.close()