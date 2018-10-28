brightness = open("/sys/class/backlight/intel_backlight/brightness", "w+")
value = (int(brightness.read()))
if (value + 20) < 200:
    brightness.write("{}".format(value+20))
elif (value + 20) > 200:
    brightness.write("200")
brightness.close()