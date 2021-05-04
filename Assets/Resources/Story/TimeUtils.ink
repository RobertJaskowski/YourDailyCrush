
LIST Time = (first=1),(second=2),(third=3),(fourth=4), (five=5), (six=6), (sevent=7), (eighth=8), (nine=9), (ten=10),(eleven=11),(twelve=12),(thirteen=13),(fourteen=14),(fifteen=15),(sixteen=16),(seventeen=17),(eighteen=18),(nineteen=19),(twenty=20),(twentyOne=21),(twentyTwo=22),(twentyThree=23),(twentyFour=24)

VAR currentTime = 12
VAR dayPassedDuringTimeChange = false

//-> test

/*
==test==

{setCurrentTime(11)}

{getCurrentTime()}


{passHours(23)}
Did day pass {dayPassedDuringTimeChange}
{getCurrentTime()}


{passHours(1)}
Did day pass {dayPassedDuringTimeChange}

{getCurrentTime()}

->END
*/

==function setCurrentTime(time) 
    ~currentTime = time

==function passHours(nrHours)

{alterTime(nrHours)}


== function alterTime(hour)
~currentTime = currentTime + hour
{follow24Cycle()}

==function follow24Cycle
{ currentTime >24:
    ~temp over = 0
    ~over = currentTime - 24
    ~currentTime = over
    ~dayPassedDuringTimeChange = true
-else:
    ~dayPassedDuringTimeChange = false
}


==function getCurrentTime ==


~return currentTime

== function getCurrentTimeAsNumbers
~return currentTime + ":00"

==function getCurrentTimeAsString ==
{   
    -currentTime == 21:
        ~ return "21 O'clock"
    -currentTime ==22:
        ~return "22 O'clock"
    -currentTime ==23:
        ~return "23 O'clock"
    -currentTime ==24:
        ~return "24 O'clock"
    -else:
        ~return Time(currentTime) + "O'clock"
}














