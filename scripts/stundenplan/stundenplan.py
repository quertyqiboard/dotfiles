import datetime

def ShowWC():
    with open("/home/henning/scripts/stundenplan/wbc.txt", "r") as wbc:
       print(wbc.read())

wd = datetime.datetime.today().weekday()
wk = datetime.datetime.today().isocalendar()[1]
if wk % 2 == 0:
    ShowWC()
    print("Aktuelle Woche: B    Nächste Woche: A")
else:
    ShowWC()
    print("Aktuelle Woche: A    Nächste Woche: B")
