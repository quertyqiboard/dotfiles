import datetime
day1a,day2a ,day3a ,day4a ,day5a ,day6a, day7a  = "Che  Spo  MuK  The  The","Ges  Inf  Mat  Spa","Bio  Mat  Deu  Spo","MuK  Deu  Eng","Phy  Pol  Spa","Wochende","Wochende"
day1b,day2b,day3b,day4b,day5b,day6b,day7b  = "Bio  Inf  MuK","Phy  Eng  Mat  Spa","Eng  Che  Deu  Spo","Nix  Deu  Ges  Team","Pol  The  Mat", "Wochenende", "Wochenende"
wa = [day1a, day2a, day3a, day4a, day5a, day6a, day7a,]
wb = [day1b, day2b, day3b, day4b, day5b, day6b, day7b,]
wd = datetime.datetime.today().weekday()
wk = datetime.datetime.today().isocalendar()[1]
if wk % 2 == 0:
    if wd == 6:
        output=wa[0]
    else:
        output=wb[wd+1]
    output += " (B)"
else:
    if wd == 6:
        output=wb[0]
    else:
        output=wa[wd+1]
    output += " (A)"
print(output)
