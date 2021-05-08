

VAR haveFreeTime = true

VAR canTakeShower = true
VAR canGoSleep = false




===Home(-> returnTo)===

<-bedroom(returnTo)
<-bathroom(returnTo)
<-kitchen(returnTo)

-(homeEnd)
-> DONE

=bathroom(->returnTo)
    +(takeShower){canTakeShower}[{~Take a shower | Take a quick shower | Time to clean myself}]
        %You are going to the bathroom
        %Turn on water #sfx:shower
        %Suddenly something comes to your mind
        
        {getShowerThought()}
        {I haven't thought about it before | That's something new...}
        %You can share your shower thoughts here for others to see by sending them through feedback
        
        ~canTakeShower=false
        ~hygiene = true
        ->returnTo
    
=kitchen(->returnTo)
    +(eatBreakfast){getCurrentTime()>3 && getCurrentTime()<12 && hungry}[Eat breakfast]
        {~I'll make some hard boiled eggs like a hard boiled man | Some fast flakes are always nice | Sandwich here I come!}
    +(eatDinner){getCurrentTime()>=12 && getCurrentTime()<16 && hungry}[Eat lunch]
    +(eatSupper){getCurrentTime()>=16 && getCurrentTime()<24 && hungry}[Eat dinner]
        
        {~Ramen soup is great for lazy person like me | I'll just do the usual...ramen! | I think i've got the ingerediants for pancakes | I've bounght meet last time I think it's still good | There is nothing better than sushi | I'll just make a fish}
    -{~That was tasty | Meh, food like always, nothing special | At least I am full now | After food like this I will have plenty of energy}
    ~hungry = false
    
    ->returnTo
    
=bedroom(->returnTo)
    +(goToSleep){canGoSleep}[Go to sleep]
        I'll just go to sleep
        
    ->returnTo




==function resetHomeStates
~canTakeShower = true
~canGoSleep = false
~setHunger(true)
