Welcome to the Woodland Park Zoo!

Background
The Zooventure: Penguin Escape! cartridge is both a tour of the Woodland Park Zoo and a puzzle based adventure for kids. It was created to be educational and entertaining, and is something that kids can complete without assistance from adults. 


Technical Tips For Builders
- This cartridge focuses on dynamic dialog. Every time the player performs a story altering action, the Zookeeper's dialog changes in response and provides a clue as to what the Player's next action should be. This serves to enhance the richness of the story as well as to guide the player through the game in a noninvasive manner.
- Zooventure contains an example of intersecting zones: it is possible to be in both the African Savanna and African Village at the same time. When coding for this, it is important to make sure that the Player can complete the necessary tasks whether they are in both zones at once, or one zone at a time.  
- One of the main considerations for Zooventure was making sure that the next zone did not become visible, and the present zone did not become invisible, before the player had a chance to complete the required tasks.

This is an important consideration when building because if the next zone becomes visible too early, the player might wander off to the next zone without completing the current stage of the game. On the other hand, if the builder sets the current zone to become invisible on exit and the player leaves the zone before they have completed the necessary tasks, then they would be unable to reenter the zone, and subsequently, to complete the game. 
 
To resolve these issues, it is important that the builder codes for them specifically. For example, to ensure that the next zone, Australasia, becomes available to a player in the Northern Trail zone at the correct time, it should be set visible and active only after the player chooses to 'Take' a penguin (ie: add it to their inventory). A simplified example of the lua code is listed below:

function zitemShaunathePenguin:OnTake()
   zitemShaunathePenguin:MoveTo(Player)
   zoneAustralasia.Visible = true
   zoneAustralasia.Active = true
end


Likewise, on exiting the Northern Trail zone, said zone becomes invisible and inactive only if the player has the penguin in their inventory. 

function zoneNorthernTrail:OnExit()
   if   Player:Contains(zitemShaunathePenguin) then
      zoneNorthernTrail.Visible = false
      zoneNorthernTrail.Active = false
   end
end

If the builder is careful to code for the above mentioned instances, then zone visibility can become a powerful tool for guiding a player through the game. 


Inputs
While we prefer that Wherigo is played outside, we also believe that these cartridges serve as excellent sources for learning how to create your own experiences. The inputs below will allow you to complete the experience using the Wherigo Builder emulator.

Snowy Owl - dark spots

Kookabura - 4

Orangutan Map - 2

African Savanna - zebra

Temperate Forest - 1000

Rainforest - sunbittern