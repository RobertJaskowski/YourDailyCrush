
VAR scrachedToMuch = 0
=== Monday ===
~lastVisitedKnot = "Monday"
#chat:hide
click #speakAt:top
Monday

{setCurrentTime(7)}

Me #speakerName:false
%Your alarm rings #chat:top:hide #b:top:hide #speakat:mid #b:mid:homedayDirty
%You get up it's 7:00


{resetHomeStates()}

-(mondayMorning) 
    ~hygiene = false
    <- Home( -> mondayMorning)
    *(mondaySleepAgain)[Continue sleeping]
        %Even thinking about going to school makes you sick
        I'll sleep some more... #b:mid:hide
        %Some time passes..
        ...
        %You wake up #b:mid:homdedaydirty
        %You are scared to look on the clock #bgm:action
        %8:00
        I'm late again...
        I need to get up fast or my parent will find out about this
        this would end up my independent life!
        
    *[Get up and go to school]
        I am already used to morning lazy emotions
        %What you said is what you did
        %Didn't took you much to exit house
        
        
    -
    ->enterClass
    


->mondayMorning 

    =enterClassNegative
        $Same again, i hate these kind of feelings
        $When they talk about me behind my back
        $Even more when i hear most of it
        
                

        ->->
        
        
    =enterClassNeutral 
        $You sit in your place while talks about you get into your head
        ->->
        
=enterClass

    click #b:mid:outsideday #bgm:harp
    
    After some time you end up in class #b:mid:class
    
    {mondaySleepAgain: -> enterClassNegative -> classAfterEnter | -> enterClassNeutral -> classAfterEnter}
    -(classAfterEnter)
        
        *(listenTo)[Listen to the girl next sit]
            %You can hear Arie that's next to you
            %She talks to others
            
            Custom: ClassmateX
            Here comes the {not hygiene: smelly} and weird guy
            {not hygiene: he probably didn't even took a shower, degenerate}
            
            Arie #emo:happy #speakerName:true
            {not hygiene: yeah he smells like a burning corpse}
            he awalays is late or looks like shit without sleep 
            Me
            $They are so uninteresting that they catch every topic they can see
            $I can't do anything about that i am their topic
            $By the way how she could talk to anyone in this class...
            
            Custom: ClassmateY
            We aren't talking with you #emo:Arie:sad
            Stop acting like you mean anything to us
            
            Custom: ClassmateX
            Exactly, go back to learning abut reproduction of bees like you always do
            %Arie went back to her things #exit:Arie
            
            Me
            $I thought so, nothing changed
            $I should get back to my things as well
            
    -(puttingOnDevice)
        
        $What i should do thought...
        $I don't know, i will pull up that weird device again
        {tired: $I am tired a little| $I have a lot of energy because of last night}
        {tired:$I shouldn't play as much last night}
        %You pull out the device
        
        %... and spend some time on it
        %... few minutes passes
        %you take a breath and lay on the desk with no results
        {tired:$I need to get up otherwise i will fall asleep because off last gaming night | $It is just probably end of this mystery, oh well... }
        %You get up and where was previusly the device...
        %there is nothing there anymore
        $Did somebody stole it from me??? #vfx:shake
        %You take a quick lookaround, but no one even seems to act suspicious 
        %Maybe it fell on the floor
        %Then you notice something weird
        %Weak light emanating from your arm
        %You instinctively scrach it #vfx:hurt #sfx:hurt
        $It isn't going off!
        $Okey...
        $This must me some kind of dream...
        $Then suddenly something even stranger happens
        $The light that is emitting from your arm is starting to form letters
        $WHAT IS HAPPENING WITH MY ARM ???!!
        $IT IS INSIDE MY ARM!
        
        
        
        -(whatIsThisLight)
            +[scratch arm]
                
                {"You are starting scratching you arm " | "Your arm is getting redder" }
                
                //{"You are starting scratching you arm " | "%Your arm is getting redder" | "%It almost is starting to bleed" | "$THIS HURST" | "... "| "..." }
                
                ~scrachedToMuch++
                -> whatIsThisLight
            *[Come to your senses]
                %Your senses finally allow you to read the sentence formed by the light
                %Which says..
        
        
        -{scrachedToMuch>2: WelXXme useX |  Welcome user} #speakat:top
        {scrachedToMuch>2: Are you Xeady foX a chaXXange? | Are you ready for a challange? }
        
        
        
        Me #speakat:mid
        {scrachedToMuch>2: some parts are not readable because of scraching your arm to much}
        $I must be loosing my mind
        
        Your goal is: #speakat:top
        {scrachedToMuch>2: Xe friXXds witX AriX |  Be friends with Arie}
        
        
        Me
        $Why would I even do this? #speakat:mid #chat:top:hide
        $Am I having hallucinations about having friends?
        $What is happening to me?!
        $I don't need such a friend like her
        
        %Teacher enters class
        
        Custom: Teacher #sfx:schoolBell
        Let's start todays lesson...
        
        %Few moments later...#b:mid:hide
        
        click #b:mid:class
        
        
        Me
        $The question is why am i having these hallucinations
        
        
        Custom: Teacher
        First conquest of the moon occured in 1969
        Does anybody know how this mission was called ?
        
        Me
        $I can't loose my mind and for sure won't listen to this
        
        Custom: Student
        Apollo 11
        
        Me
        $There isn't a single reason i would listen to it
        
        Custom: Teacher 
        Very good, during these time first human stood...
        
        Me
        AAAAAAAAAAAAAAAAAAAAAAAAAA!!!!!!!!! #sfx:hurt
        
        %Pain striked through your arm
        %Your primitive instincts took over and you couldn't stop your screem 
        
        
        Custom: Teacher
        You don't need to be THAT excited
        We all would like to be the first on the moon 
        
        Custom: Students
        hahaha
        
        Me:
        I am feeling bad, can i go to the nurse?
        
        %Whispers spread acroos classroom
        
        
    -(wentToNurse)
        
        %What the hell is going on now ?!#b:mid:corridor #bgm:chill
        %Now pain occurs
        %This must be related to this gadget
        %I need to confirm with the nurse that I am sane
        -> mondayEnteringNurseOffice
        
===mondayEnteringNurseOffice
    ~lastVisitedKnot = "mondayEnteringNurseOffice"
        
    %You enter nurse office #b:mid:nurseOffice
        
    Me
    Sorry...
        
        
    Custom: Nurse
    Sit I'll come to you in a second
        
    %You do this, while you watch her
    %She literally is browsing internet and eating #sfx:eat
    %Hey!? I don't think she even cares
    %I've heard there was a peculiar nurse hired but completaly ignoring student??
    %I need to gain her attention somehow
        *[Steal her cookies]
        *[Simulate extreme pain]
        *[Leave]
            
            
        -click #ad:wentToNurse
        -Available in the next update 
        
        click #chat:mid:hide #b:mid:hide
        
        
        
        
        
        





















->END