

VAR tired = false
VAR hungry = false
VAR hygiene = true






== function resetStates()

    ~tired = true
    ~hungry = true
    ~hygiene = false




==function isHungry()
{
    -hungry == true:
        ~return true
    -hungry == false:
        ~return false
}

==function isTired()
    ~return tired


==function isHygiene()
{
    -hygiene == true:
        ~return true
    -hygiene == false:
        ~return false
}


==function setHunger(ate)
~hungry = ate

==function setTired(bool)
~tired = bool

==function setHygiene(bool)
~hygiene = bool

