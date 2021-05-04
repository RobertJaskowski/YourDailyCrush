

=== Finding ===
~lastVisitedKnot = "Finding"
VAR textOnBackOfDevice = "25243324444234"
VAR textOnBackOfDeviceTranslated = "KINITRO"


I'll go for a walk in the park #chat:show #b:mid:OutsideDay #bgm:harp
%After few minutes of walking you start to wonder
{chosenToLearnAtStart ? howToDateGirl:
    Me
    I don't see any potential candidate
    $Some girl walks by
    $NO, I definitely don't see any
    I think it will be really hard to use these informations with my abilites 
}

{chosenToLearnAtStart ? howToGainMotivation:
    Me
    Really I do have more energy
    But I still don't have anything to use it for...
}

{chosenToLearnAtStart ? cuteCatsCompilation:
    Me
    Ok taking a breath outside is better than watching cats all day
    What it would be if browsing internet would become boring
    Thanks to these walks I can mantain some balance at least 
    
    
}

- %You look around for some nice ass to rest your eyes on
    Wait!
    Something just blinked behind that bench!#vfx: blink #sfx:heart
    Free money!!? #sfx:heart
    %You pick it up immediately#b:mid:FoundDeviceInPark


-> deviceFound 



= deviceFound



-(found)
Me
$What is this? 


*[Watch?]
    From the first look it looks like some kind of smartwatch.
    But it's too thin and stretchy for current day and age  to be a smartwatch
    Maybe some prototype?
    Nahhh... it's impossible it would be in a park
    
    -> found
*[Toy?]
    Maybe some kid lost it?
    This doesn't even function as a toy
    impossible
    
    -> found
*[Sticker?]
    It's sticker like material
    But deffinitely not a sticker
    Plastic? Paper?
    I really don't have any idea
    -> found
*[Examine closer] -> deviceTextFoundOnBack
+ {found>2}[I already speant too much time on this]
    -> whatIDoWithFinding
    
+[Drop it and break it]
    This kind of useless thing's should be destroyed!
    %You throw it on the ground and stomp on it
    
    click #ad:finding
    click
    {"%You almost missed whole journey, but atleast you can go back" | "%Keep going my man, at least i will make 0.01 for a meal today lmao" | "$Love you <3"}
    
    ->found
= deviceTextFoundOnBack
    %You rotate device in hands
    oh!
    These are some kind of numbers
    I'll have to examine it more closely later
    
    $Hmm
    
    ->found
    
 -> whatIDoWithFinding
    
 
= whatIDoWithFinding
$Just what i should do with it
    
*[Maybe someone is baiting me]
    I better look around...
    I don't see anyone
    
    -> takeItHome
*[I will see what I can do with it in home]
    -> takeItHome
    



=takeItHome

I better take it home
At least it will kill me some time

-> atHomeWithFinding

-(atHomeWithFinding)

%You enter home and it's pretty late #b::homeNightDirty #bgm:chill
{setCurrentTime(20)}
%It's now {getCurrentTimeAsNumbers()}
%You're rutine is telling you to sit behind computer
%Foretting about your finding, you already are playing game that you are addicted to
-(conciuPassed)
{alterTime(1)}
{%Hour pass until you catch your senses|%Passed like a blink |%Another hour pass}
{
    -getCurrentTime()>=23:
        ~setTired(true)
        This cyberpunk 2069 is interesting...
}
-(conciu)
+[Check hour]
    {~{~It's | Now | Striked}  {getCurrentTimeAsNumbers()}  }
    ->conciu
*{not deviceTextFoundOnBack}[AD force yourself to remember what you forget]
    click #ad:takeithome
    I have a feeling that I am forgetting about something
    Hmm...
    %You close your eyes
    %Relax
    %Then it strikes you, that you found a device
    I know! I need to research this unknown device
    
    -> decipherText
    
+{not tired}[Spend another hour on games]
    -> conciuPassed
+{tired}[Go to sleep]
    It's pretty late today i need to sleep because it's monday tommorow
    
    -> wentToSleepAfterFinding
    
*{deviceTextFoundOnBack}[I found some text i should get to it]
    -> decipherText
    
VAR decipherTries = 0

=decipherText
    %You take out device and open doodle #bgm:action
    {deviceTextFoundOnBack: I remember the text was in the back | I'll rotate the device}
    {deviceTextFoundOnBack: here is it: {textOnBackOfDevice}| There is some text here I need to crack it}
    
        
    -(decipher)
        {What does it mean? | Hmm... | }
        +[AD skip mystery]
            click #ad:decipher
            -> decipherSolvedTrue
        +[Show original text]
            {~{~Text on the back says | It says: | Text: }} {textOnBackOfDevice}
            -> decipher
        +[Search for clues]
            {You look closely again for new clues| You look at the device | }
            { stopping:
                -Maybe this material existed long time ago
                -I found another text
                 100BC
                 I need to doodle this in the browser...
                 It's date ??!
                 It's almost impossible that I am grasping such a old relic of the past 
                 and in a such a good shape
                -There is another text
                 Polybos
                 Some kind of company?
                 I need to doodle this...
                -{I've found polybius cipher, it's probably this | This is Polybius cipher for sure}
                
                 click #b:Top:polybius
                 click #b:Top:hide
                 
                 ->decipher
            }
            
            -> decipher
        +[Answer is...]
            ++[I don't know yet]
                -> decipher
            **[LOREBAT] -> answer("LOREBAT")
            **[KEOTBOP] -> answer("KEOTBOP")
            **[ACEKEUF] -> answer("ACEKEUF")
            **[KINITRO] -> answer("KINITRO")
            **[KINTROS] -> answer("KINTROS")
            **[KETOFOS] -> answer("KETOFOS")
            **[KOMTROS] -> answer("KOMTROS")
            **[BETETUS] -> answer("BETETUS")
                
    


=answer(word)
    
    {
        -isSolved(word):
            ->decipherSolvedTrue
        -else:
            ~decipherTries++
            ->decipherSolvedFalse
    }
    -> decipher

=decipherSolvedFalse
    {
        -decipherTries >3:
            I've tried too many times I need to go to sleep #bgm:chill
            -> wentToSleepAfterFinding
        -else:
            {It for sure isn't it | Still not it}
            Guessing what the answer is takes to much time
            I need to think about this, stop guessing because I dont have that much time
            
            -> decipher
        
        
    }


=decipherSolvedTrue

    So the password is {textOnBackOfDeviceTranslated} #bgm:chill
    I don't know what to think about it 
    %Even thought solving this gave you a lot of energy you still need to sleep for tommorow
    

    -> wentToSleepAfterFinding

=wentToSleepAfterFinding    
With these thoughts you fall asleep
    
click #b:mid:hide #chat:mid:hide


-> Monday


== function isSolved(word)
{
    -word == textOnBackOfDeviceTranslated:
        ~return true
    -else:
        ~return false
}