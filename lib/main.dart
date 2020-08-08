import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:status_alert/status_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: QuizPage(),
    );
  }
}




class QuizPage extends StatefulWidget {


  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
 int gun=0;
 int injury=0;
 int method=0;
 int spear=0;
 int axe=0;
 int bike=0;
  int twoHandedSword=0;
  int lightSword=0;
  int berserker=0;
  int predator=0;
  int coins=200;
  int dragonMan=0;
  int storyNum=0;
  int backno=0;
  int sword=0;
  int teleport=0;
  int imprison=0;
  int wizard=0;
  int time=0;
  int enemy=0;
  int fly=1;
  int friend=0;
  final storyCon= new TextEditingController();
  String checkpoint;
  List<Icon> dragHealth = [];
 List <String> backdrop=[
   /*countryside 0*/'https://i.pinimg.com/originals/2e/d3/9a/2ed39a37a601864813319b6b91484a26.jpg',
   /*blacksmith 1*/'https://cdn1.epicgames.com/ue/product/Screenshot/dmitriy-masaltsev-screenshot00001-1920x1080-64075096631137a0fc7fc762155fe593.jpg',
    /*Two paths 2*/'https://4.bp.blogspot.com/-BuEpGwy39xY/WYSMBdtpGQI/AAAAAAABoE4/xF7TvuLYYZEtQkFUoiBDNzJqS5pAutBWQCLcBGAs/s1600/RedwoodForest_01.png',
   /*merchant menu 3*/'https://s-media-cache-ak0.pinimg.com/736x/2f/87/ed/2f87ed411c797b20c447968c911f66b2.jpg',
   /*thieves ambush 4*/'https://th.bing.com/th/id/OIP.drwxqWwb4fYlQ68ca06fhAHaKC?pid=Api&rs=1',
   /*kicked out 5*/'http://pre11.deviantart.net/00df/th/pre/f/2016/097/7/f/the_fallen_knight_by_artbygp-d9y2du2.jpg',
   'https://i.pinimg.com/736x/be/3c/21/be3c217b4740e03e70b69a3e7dd48d4f.jpg',//sword goblin
   'http://s1.1zoom.net/big3/798/Warriors_Archers_Armor_463484.jpg',//goblin 2 7
 'http://2.bp.blogspot.com/-ldPKjV8-KcQ/UCRaeanCN5I/AAAAAAAAAbE/JnxU9m4dJz4/s1600/Bar-Fight.jpg',//8 bar fight
   'https://forums.unrealengine.com/attachment.php?attachmentid=44315&d=1434749667',//island 9
 ];

  List <String> story=['Its a warm summer day.You,Warrick an Elven warrior,have left your homeland to slay a dragon for a handsome reward from the king.You journey to the castle.As you make your way through the city you see the other brave men who are willing to accept this challenge.You just hope that you will get to the dragon first.After waiting in line for one hour the Kings Squire makes the announcement that the quest is ready to begin.He suggests that you go to the blacksmith and buy supplies for your journey because the rest of the way will not be easy. ',
     'At the blacksmith\'s you decide to buy food,a simple earth spellbook,a heavy metal armor and some matches along with your sword and bow.You leave for the gates heading to the forest and come to a path.The path forks',
     'You decide as the majority of the fighters and go on without supplies.You again make your way through the city towards the gates.You enter the forest but there is something different about it.There is a strange silence in the air.No sign of bird or animal life.You look around and realise you have been surrounded by some of the men that you saw at the castle.They steal from you the little possessions that you have and the kill you.The last memory that you have is of the men laughing at your lifeless body on the ground.',
     'You decided to take the right path.As you walk through the forest you listen to the sounds of nature and think about your quest ahead.You keep walking and discover that the path ends abruptly and the only way to continue is through the thick underbush.You think about what you can do and narrow it down to two choices',
     'On the left path you continue on your quest.Night has begun to fall and you know you must be very alert because there are dangers that lurk in the shadow.You continue walking and hear very strange noises you look around quickly and realize that there are three small forms following you.You turn quickly and make a decision.Do you ',
    'Unsheathing your special sword you prepare yourself for an unknown attack.Three goblins emerge from the shadows.You being a very skilled warrior yourself strike all three down with one swing.The goblin are quickly cut in half by your mighty sword.You are very tired and decide to rest until morning.After you awaken you continue on the path.After walking for several hours on the thinner and thinner becoming path you see a small mud hut with smoke coming out a hole located on the top of the hut.You are very tired but scared of what you might find in the creepy hut.',
    'You take the long wooden bow off your shoulder and pull three arrow from your quiver and take aim.Launching the three arrows at one time you take down the forms quickly.After you are sure they are dead you go and inspect the bodies.You discover that they are Goblin Warriors.You find yourself very tired and decide to rest for the night.After you awaken you continue on the path.After walking for several hours on the thinner and thinner becoming path you see a small mud hut with smoke coming out a hole located on the top of the hut.You are very tired but scared of what you might find in the creepy hut.',
    'You stumble over to the mud hut and knock on the small wooden door with no hinges.No one answers.Suddenly you hear a small voice from behind you.It startles you at first,but then you discover that it is just a hermit.He invites you in to eat and sleep.While you are sleeping you have a vision about the future.You see yourself carrying something in a small sack.People around you are cheering.One last thing you see before awaking is a woman holding your hand.THe hermit wakes you up urgently and whispers a verse in your ear.Then he rushes you out the door.The verse he spoke to you said :"You must swing before you fire".You have no clue what it means,but you think it could help you later.Do you:',
    'You decide to skip the hut and keep walking on the never ending path.You realise you know this part of the woods.You are near your home.You think of your family and your people.You decide no dragon or no reward is greater than your close ones.So you decide to go home',
    'You pull out some leaves and begin sharpening your bark pencil.Then you see why the hermit was rushing you out.You start to run,but five men also on the quest spot you and take you down.They steal your belongings and stab you to death.',
    'You start to run sensing a feeling of danger and only look back once to see five men overtake the hermit hut and kill your hermit friend.You slip into the forest as not to be seen and escape safely.You quietly thank the hermit for his kindness to yourself.You will always remember his bravery.You come to the edge of the forest and see a great,broad river that seems to stretch across for miles.You now know that your journey has just begun.You come across a boat and get in.You see two choices. ',
    'You head out into the ocean and come across a storm.',//11
    'As you sail along,you come upon an island.As you head toward it,the natives begin to hurl spears at you.',
    'On your way back to shore,you come upon a weird creature with two heads.One head always lies.The other always tells the truth.You can only ask one question to determine the path to take.Do you',
    'What do you ask head 1?',
   /*15*/ 'What do you ask head 2?',
    'The head says take path 1',
    'You chose the wrong path.',
    'You reach a shore.A bottle that has washed up on the shore catches your eye.You pick it up and notice that a rolled up paper is inside it.You break the glass and open the paper.The message says "Let the altitude keep climbing higher."As you enter the wide open plains you feel a sudden gust of wind as you realise how far you have to go.The grass is slightly higher than your waist and is so thick you can hardly see your feet.Knowing you have limited time you can try to logically think out the course you should take.Do you:',
    'The head says take path 2',//19
    'You choose the wrong path',
    'You reach a shore.A bottle that has washed up on the shore catches your eye.You pick it up and notice that a rolled up paper is inside it.You break the glass and open the paper.The message says "Let the altitude keep climbing higher."As you enter the wide open plains you feel a sudden gust of wind as you realise how far you have to go.The grass is slightly higher than your waist and is so thick you can hardly see your feet.Knowing you have limited time you can try to logically think out the course you should take.Do you:',
    'I tell the truth',//22
    'You chose the wrong path.',
     'You reach a shore.A bottle that has washed up on the shore catches your eye.You pick it up and notice that a rolled up paper is inside it.You break the glass and open the paper.The message says "Let the altitude keep climbing higher."As you enter the wide open plains you feel a sudden gust of wind as you realise how far you have to go.The grass is slightly higher than your waist and is so thick you can hardly see your feet.Knowing you have limited time you can try to logically think out the course you should take.Do you:',
    'You decide to take the less beaten path to the left.As you start walking,the grass is becoming too tall for your stout body so you unsheath your sword and begin to slash down the weeds in your path.You are hoping to have found a shortcut but instead it only leads into a small creek that winds and bends through more dense weeds.You see a desert.Do you',
    'You fill your small rawhide pouch with the creek water and then continue alongside the small creek.It is taking a long time to walk the desert.You begin to wonder if the other choice had been a better one but soon dismiss the thought as the tall grass stops.You can see the desert once more,and you still have your pouchfull.After  you take a small drink of water and sit down slowly to rest,you notice the ten foot wide gap in front of you.You curse at yourself for not seeing it earlier becasue now you have one more problem to add to your ever increasing list of troubles.Do you',
    'You choose to try and jump across.In preparation you judge the distance and the amount of strides you will need to take to make it.You are ready after a long and feaful preparation.Once more you look down at he sandy ground and say an old elfin prayer for good luck.Then you know its time.You take off as fast as your tiny legs can take you.You approach the edge thinking only of making it and then you finaly jump.It seems to take forever for something to happen.Suddenly you open your eyes to see that you might not make it.You kick your legs in one last desparate attempt to make it and to your surprise you do.The shock makes your legs give way and you fall but you dont notive that because your kissing the ground and looking back at how far you jumped.You rest once more and then try to decide what to do.Do you:',
   /*28*/ 'You think using your magic is the better choice,so you carefully take out the old spell book and begin to cast the spell.As you start,a whirling wind seems to form out of nowhere and begins to slowly pick you off the sandy ground.It has a calming effect on you so you close your eyes and just let the spell carry you over the gap.As you are floating you notice that is taking forever to get across a mere ten feet.Cautiously you open your eyes.All you see around you are dirt walls that are quickly speeding by.You suddenly panic and look down to see your fate.Twenty giant spikes are awaiting you at the bottom of the pit.In seconds you will be impaled by at least three spikes.Your life flashes before your eyes and you know you have failed,You die a death of dishonor.',
     'You once again decide to take the easy way and summon a beast to carry you the rest of the way to the desert.Before you can even attempt to summon anything you need to collect certain materials.All of which can easily be obtained because of the fact that they are all around you.You first pick up a handful of sand,then mix it with some water from the earth and finally you begin to mix that concoction together with your very own blood you got from slicing your finger with your sword.As the ingredients mix together a beast starts to appear before you.It has a dark brown,shaggy coat like a buffalo,beady eyes like a rat, a massive body like an elephant.You mount the beast and it lunges forward at a blinding speed and in a matter of seconds,you are at the edge of the desert.You dismount and the beast starts to dissapear. ',
     'As the beast goes,a raspy voice,barely audible,tells you "That which falls upon his head".You take your first step on the blistering hot sand of the desert,try to breathe through the humidity and begin perhaps the most grueling walk you have ever attempted.',
     'You enter the Moseekan Desert on the island of Anagua.The temperature in the desert are extremely hot.As you enter the desert you take a westerly course.You soon come to an enormous rock in the middle of your path.It has a distinctive column of rock that just straight up into the air.You go around the rock and continue on your way.After 3km you come upon a giant sand dune that disrupts your path.',
    'You start the long climb up the giant sand dune.Your climb up the dune is wasy at first but soon gets steeper.Your easy climb is now very difficult.All of a sudden you slip and grab onto a vine.The vine turns out to be a snake.You know what happens next.',
    'You choose to go southwest around the giant sand dune.When you round the southern tip of the dune you come upon a sandworm.It is 30 feet long and has rough brown skin.',
   /*34*/'You choose to stay and fight the sandworm.You pull out your sword.It glimmers in the bright sun.',
    'You stab at the sandworms heart and the sharp blade on your sword pierces it.The creature falls down and dies in great pain.You see an oasis and you decide to walk towards it.You have not seen this colour for a long time.You sit down on the edge of the pond.You take a drink from the pond.Feeling tired you fall asleep.In the middle of your long nap you feel a blow to the head.On the ground at your side is a coconut.You pick it up.It breaks in two.Inside you find a piece of paper stating:"Will strike him down,forever dead".Rubbing your head you look up to see the mountains before you.You know they hold the lair of the dragon and the end of your quest...but hopefully not the end of you.',
    'You finally make it out of the barren desert.You look before you and see the vast mountain lair of the Great Dragon.You make the hike up and enter the twisted caves.You hear the sound of dripping water throughout the cavern and a stingy mist is in the air.All of a sudden you hear it.Heavy breathing coming from one of the paths.You follow the sound to a large cavernous room."THE LAIR OF THE DRAGON".You look around quickly and see huge piles of gold..his hoard.Sitting between piles is a huge dark form.A loud echoing roar erupts from behind the piles.You move closer to investigate.You are suddently face to face with the dragon.',
    'After boating for a while you see a school of piranas!They are swimming too fast to out-paddle them.Do you',
   /*38*/ 'The electricity fills the water and the piranhas die.You dont like piranhas but remember that they are good for you.Do you?',
    'You fill up on piranhas and are ready to go on.There are some rapids up ahead.Do you?',
    'The blood of the piranhas attract a shark.Even before you could react,you along with the boat are engulfed by the beast.RIP',
    'After a lot of trying,you manage to evaporate the dangerous part of the water and within the brief,alloted time.You continue on the swamp.As you enter the dark green,shadowy swamp,you notice the pungent smell of the scurrying rats and decaying bodies scattered around.You wonder what kind of beast could have done this damage.Upon further travel,you see a river.There is a mud bank to the left of you,but it is very wet and scattered with plants.',
   /*42*/ 'You climb the tree,make it to the top and find yourself once again,stuck with a left and right choice.This time branches.Right or left?',
     'You slowly creep into the right branch,and quickly look down with uneasiness.Are you getting scared?That is no way for a proud elven warrior like you to go down in history!I can imagine..Warrick the great chicken!Make your decision',
    'You barely go over the stream and wince as your legs are in pain from shock.Now would you like to rest or journey on?Do you?',//44
    'You go on,strong as ever,and walk down a straight path until you reach a small,green man wearing red cloak.He looks somewhat threatening,while still remains still.Do you?',
    'He speaks your language,but only mutters words.He says "Friend or Foe".You reply "Friend".The two of you strike up a conversation,quickly becoming friends,but soon the sun sets,leaving you another choice.',
   /*47*/'You say "Pardon my intrusion,but may i stay with you for the night?I hope it is not too much trouble,for I am very tired.".He answers"Oh sure!Stay as long as you like,for you are my good friend now."You go to his house and find his children,all 35 of them!You sleep very little as the kids keep talking to you all night.In the morning you sneak out while they are sleeping and return to your adventures.You come to a three way path.Which way do you take?',
    'You take a single step and quickly fall into the mud,sinking as you go..soon you are dried into the mud and are unable to move from the chest up.You go deeper and deeper into the quicksand.',
    'You get lost,but are found by the swamp creature and his family.They take you to the edge of the swamp.',
    'You shoot an arrow at him but he dodges it.He throws a rock at you but you convert it into flowers.They fall on you and you close your eyes but when you open them your foe is gone.You look left and he is standing right next to you.With just a swing of an arm,you are sent flying.You fall in tall grass.He cannot see you.Do you?',
    'You take aim and shoot.He quickly turns towards you and catches the arrow.You are in shock.He jumps high and seems to be coming towards you.You know you are dead.',
    'You try to shoot arrows at them but the wooden arrows float.The piranhas jump towards you.The last thing you see is the wide open mouth of a piranha.At least someone\'s happy.',
    /*53*/'The rapids are too powerful.Your boat is toppled.You swim out of the situation but you see something approaching you at top speed.You are engulfed by a shark.',
    'That mud turns out to be quicksand.You sink to your death.',
    'You establish that you can\'t jump over the stream so you decide to climb down.Suddenly you hear someone laughing.You look around and find a fellow competitor but he doesn\'t look friendly as he has a fireball in his hand.He hurls it at you.You jump into the stream.You are underwater.You think you are now safe and you resurface only to be met by another fireball.You\'re toast.',
     'You walk into your competitors camp.There are too many of them.You smile at them.They smile at you.You turn around and within a second 10 arrows are sprouting from your chest.',
     'You set their spears on fire,one by one.Some fallen spears hit other spears and ignite others.The natives retreat to another island.',
    /*58*/'You get to the island and are greeted by another tribe.They don\'t look friendly.So you unleash fireballs on them.They retaliate by throwing spears at you.You burn them too.But there are simply too many of them.You grow tired and eventually meet your demise.',
    'You are too tired to walk on,and quickly fall asleep to the lull of crickets and bullfrogs.However,the next morning snickers and giggles are heard as small theives have stolen all of your goods and clothes.As you lie in the mud,you realise it is over for you,and you die days later of starvation.',
    'You say that you have to leave.You appear to have upset your new friend.You both part ways.After an hour or so,You\'re ambushed by your opponents.You put up a good fight,but you\'re outnumbered.You lay on the ground desperately trying to cast a spell but you\'re shocked to see your newly discovered friend show up and accept a reward from your foes.Before you could react you feel a blow on your head and everything turns black.',
   'The dirt path appeals to you despite the fear that the footprints may lead to something you may not like.Everything is going fine until you hear faint screeching coming closer and closer through the surrounding bush.You pull out your spell book and try to cast a protective spell before whatever is making the sound is upon you.Minutes turn into seconds and the sounds are so close you can hear the footsteps.The spell is almost complete but before you can finish it small green wretched looking monsters leap out of the bush.They are even more hideous than you could ever have imagined.Their mouths are seeping with oozing saliva and they are staring at you with red devil-like eyes.Do you',
   /*62*/'You try to reason with yourself on what to do and you decide to try to talk to the monsters.You think they might know a shortcut,considering that they live in the plains.You pick out the largest creature and begin to talk to it in every language you know.As you grow tired of trying and give up,the whole band of animals starts to chirp in a high pitched sound.You become alarmed and begin to slowly ease your way to the safety of a tree just large enough to support your weight.Then comes screeching from behind you as you bump into a slimy,grotesque looking monster.You are now so frigtened that you forget all logic and take off running.You soon find out how bad of an idea running is as the screeching becomes louder and from all sides the monsters leap onto you with their teeth bared and their appetite full.You are devoured within seconds',
   'You are fed up with things stopping you from reaching your destination,so you decide to banish the wretched creatures standing before you to another time and place with a spell.You pull out your spellbook very slowly as the monsters stare at you with a cross eyed look.Page by page you turn until you find the spell you want.Wasting no time you begin chanting the words of the spell you want outloud.The monsters are amused at first but they soon give in to their appetities and begin to leap at you while you are in mid sentence and begin to leap at you while you are in mid-sentence of your last chant.Instinctively you grab your sword and lash out at the first thing you see.the monsters are somehow stopped by the powerful blows and as a result they are strewn all around you in a morbid messs of blood and decapitated limbs.',
   'Your success angers them even more and they increase their attacks.Soon you are no match for them and you fall as you are devoured whole.You slowly and painfully die.',
   'You decide to save a tremendous amount of much needed time and take the shortcut.It makes more sense to take the shortcut,because it is so much easier to walk through the shorter grass than to continue through the long grass.You walk and walk and walk on the path until it becomes so tiresome that you cannot continue any longer and you have to stop.You reach for your water pouch for a drink but instead of water there is only air.You throw the pouch down in disgust and as you throw it down you notice a hole in the bottom.You become frusterated that you didn\'t notice that when you put water in the pouch.Do you',
   /*66*/'You decide that you\'d rather try to save your life as long as possible so you dig for water.You choose a place right under the closest tree and begin to dig as fast as possible.Your decision has paid off because you find an underground stream.You drink the water in huge gulps,barely stopping for air.After you have had your fill of the ice cold water,you lie down to rest.Your sleep is interrupted by an indescribable pain in your stomach.It feels as though a knife is tearing through your entire body.As you lose consciousness,you figure out that the cause of your pain is the bad water.',
   'You decide to not even attempt to find water because you know you will die any way.As you drift away into unconsciousness you think of everything you will be leaving behind you.It all depresses you very much but at least you will die in peace without any suffering.',
   'You go through the bush only to find an injured fellow competitor.You go kneel down beside him,offer him some water.You tell him that the city is not quite far and you offer to take him there.He tells you that he was attacked by other competitors.He also tells you that he has no time left.He gives you a map.Before he starts to explain where does it lead to,he takes his last breath.Do you?',
   'After burrying him,you follow the map.It leads you to a lake.There is no treasure whatsoever but you\'re sure you followed the map correctly.You assume the treasure is inside the lake.Do you',
   'You cast the spell and jump into the lake.You dont see anything so you cast a spell for enhanced vision.At the water bed,you see a sword.You grab the sword and resurface.You wonder what is so special about that sword and point it at a tree.Lightening from the sword breaks the tree into two.You cannot believe what you just saw.In all your years in training,you have never seen anything like this.You replace your existing sword with this one and journey on.You see an ocean ahead.You get into a boat' ,
   'Various metal objects start levitating out of the lake.A sword attracts your attention.You gesture it towards you.The sword starts levitating towards you.Before you can hold it,you are pushed off your feet by a stranger.You fall on the ground,hard.You look around and see the stranger holding the sword.He looks at you,smiles and says "I\'ve never liked elves" and he points the sword at you.To your shock,lightening discharges from the sword towards you.You impulsively create a magic wall to guard yourself.The lightening hits the wall and for a while it seems your wall is working but soon the wall starts cracking.You look at the stranger and he looks very pleased with this new discovery.You jump to your right while the wall breaks and take cover behind a rock.Do you',
   'Sword drawn, you rush towards him.He turns and points the sword at you.The lightening sends you flying.You lose conciousness.You wake up on a bed.You look around.It seems someone nursed you back to health.But you don\'t have time to thank them.You sneak out of the house.You regret losing the sword as it could\'ve proved very usefull during the dragon encounter.You continue on the left path. ',
    /*73*/'You summon mist onto the enemy.You start to take aim with your bow but he starts blindfiring and hits the rock you\'re taking cover behind.The rock shatters and you\'re exposed.What do you do?',
    'You aim and shoot.The blindfire stops.You gesture the mist to dissapear.You see your arrow embedded in the stranger\'s head.You walk up to him and pick up the sword.Do you',
    'You check his pockets but you find nothing about his identity.However you find a  teleportation spell written on a piece of paper.You don\'t know if it really works but you decide to keep it for later.Do you?',
    'Before continuing you think about your friends the competitors killed.They could be standing between you and your reward.After all that you\'ve been through you want the dragon for yourself.Do you?',
   'You\'re sitting on a tree,sharpening your blade.You feel confident.They show up.There are only 5 of them remaining.Two wizards and three swordsmen.How they intend to slay a dragon with a simple sword puzzles you but the wizards could pose a threat.Do you',
   'You feel this is the right time to attack.You use your teleportation spell to spawn right behind your enemies and finish them one by one.Within seconds all your competitors are dead.The dragon is all yours.',
   'You decide to take them out one by one using your bow.You take out one wizard and one swordsman.But one of them falls down hard.You\'re detected.The wizard sends a magical disk towards you.It cuts the branch that you\'re sitting on.You fall down.You\'re up against a wizard and two swordsmen.The swordsmen charge towards you and the wizard shoots two projectiles at you.What do you do?',
   'You perfectly dodge the projectiles and draw your sword.A swordsman attacks you,you deflect his attack and stab him.You push him aside and shoot a projectile at the other swordsman.As both of their bodies hit the ground,you make eye contact with the wizard.He doesn\'t look like he wants to give up.You see determination in his eyes.He wants to get to the dragon just as you do.',
    'You produce an energy beam towards your foe.He does the same.The beams clash.The energy beam is the most powerful attack any wizard can produce.It uses your life energy.Keep this going,and you will eventually die but your foe is showing no signs of backing out.Do you',
   'You grow weak.You cannot feel your legs.You kneel down.Your vision blurs.But you keep pushing.Even if you die now,you die an honourable death.Your opponent however,did not make the same choice.He backs out and your beam hits him and it hits him hard.He dies.But you are in no good condition either.You are on the ground.You crawl to the wizard.He is alive but barely.You decide to suck out his life energy.You get back on your feet.Sucking out another wizards life energy is against wizardry itself but you felt it had to be done.You\'ve never felt this strong before.Your eyes are glowing bright blue and you feel the surge of energy within you.You gain the ability to freeze time.You move on. ',
   /*83*/'You decide to wait for the perfect moment to strike.Suddenly one of the swordsman murders a wizard.The next second,all 4 of them are pointing swords at each other.They start arguing.The swordsmen suddenly swing their swords at the wizard.The wizard\'s eyes burn bright blue and to your suprise the swordsmen freeze.They slit their throats.You are in shock.That is a very powerful spell.The wizard suddenly turns towards you and shoots what appears to be a disc.The disc cuts off the branch you were sitting on and you fall down.',
   'You re-enter the cave and are now face to face with the dragon.It has a muscular body. This dragon has six elongated limbs with six splayed digits on each foot. It has fanlike wings running from its shoulders to its lower back. Two semi-transparent, membranous crests run from the base of its skull to its shoulders. This dragon\'s head is narrow and it has a tiny mouth. It has round nostrils located unusually far back on its snout. This dragon has wide eyes that are the color of fine china. A bony plate projects from the back of its skull, protecting its upper neck Flaps of skin allow it to completely close its nostrils. Two feelers extend backwards from its forhead.You realise that you\'ve spent a lot of time on detail.He breathes fire at you.',
   'You stop the beam and jump to your left.The wizard\'s beam hits a nearby tree and the tree splits into half.You look at the wizard.He\'s exhausted.However he\'s still looking at you with devilish intent.Do you',
   'You shoot three arrows at him consecutively.He flicks his arm and a gush of wind takes your arrows away.He kneels down and starts panting.Do you',
   'You shoot a projectile.He shoots another projectile to counter yours.Your plan works.He has used up all his magical energy.He falls down but he\'s still alive.Do you',
   'You decide to spare the wizard.The wizarding community could use a strong wizard like him to sustain itself.You walk towards the cave ',
    'You don\'t want to leave any loose ends.You finish him off with an arrow.You think about how this quest has affected you.You have just killed a fellow member of the wizarding community.You just hope the dragon is worth it.Do you',
   'You loot the wizard in hopes of finding something useful and to your luck,you find a piece of paper.It has instructions to cook up an imprison spell.It can imprison the foe in an indestructable cage.',
   /*91*/'You have a long conversation with him that lasts about 10 minutes.You learn that his name is Ragnar and he is from the Berserker Clan of Wizards.He is not interested in the reward.He works for the neighbouring king.He wants to control the dragon to wreak havok over your city.He starts smiling.This conversation gives him enough time to regenerate his energy.You realise your mistake and quickly throw a knife at him but he slows down time.You can see the knife slowly moving towards him.Your movements are also slowed down.The wizard however,seems unaffected.He walks to the knife,picks it up,walks towards you and slits your throat.',
   'You swipe at the sandworm\'s head.He ducks and you wiff.It is furious and is directly sprinting at you like a speeding train.You close your eyes.',
   'You decide to not waste energy trying to create a sheild and jump away from the flames.Do you',
    'You decide to use your magical sword and you point it towards the dragon.At first,nothing happens.But soon sparks start coming out of the sword and the very next second,lightening emerges from the sword ,lighting up the dark cave and strikes the dragon.It screeches in pain.It tries to slash you with its wings.Do you',
    'You decide to charge with your sword.The dragon slashes at you with its wing.You are sent flying.You hit the cave wall.Before you recover,you are met with the dragon\'s flames.You burn to death.',
   'You shoot flames at the wing.The wing catches fire,but the flaming wing is still approching you at top speed.You create a shield but you\'re smacked and sent flying to a wall and hit it hard and die.',
  /*97*/'You point your sword at the swiftly approching wing.Lightening discharges from your sword and hits the wing with a great force which stops it.The dragon groans.The wing falls down.The dragon is unable to move it.You have succesfully destroyed the dragon\'s ability to fly.You are very pleased with yourself.Your joy is shortlived as the dragon,now more furious is trying to bite you.',
   'The dragon\'s head is approaching you with jaws open.You slowly raise your sword and aim at the head.You feel confident and have a smile on your face.You know you have won.Nothing happens.Your smile quickly fades away and your confidence turns into fear.You realise the sword needs to recharge.The dragon\'s jaws are inches away from you.You quickly jump backwards.Its too late.The dragon bites off the sword and a part of your arm.This ruins your landing.You hit the ground,hard.You scream in agony.You look at your severed forearm.You are losing a lot of blood.You take cover behind a rock.The pain is unbearable.You chant a spell to make your arm numb.You don\'t feel pain now.You need to reconsider your options. ',
   'You use your teleportation spell to teleport directly on top of the dragon\'s head and stab the head.The dragon roars in pain.You teleport to back and in two quick slashes,you cut off the dragon\'s wings.The dragon can\'t fly now.The dragon shrieks.It turns to you and breathes fire.You teleport behind a rock.The dragon ends up damaging itself.You have inflicted huge damage on the dragon.You need to plan your next move.',
  'You throw some fireballs at the dragon.You deal very little damage.You then realise ,throwing fire at a fire breathing dragon is a bad idea.You chant a spell and slowly raise  your hand up as if you\'re lifting an object.The nearby rocks start to levitate.You gesture them towards the dragon.The rocks fly towards the dragon like iron attracted to magnet.The dragon howver deflects some of them with its wings and one rock hits its head.The beast groans.It breathes fire at you.Do you',
  'You feel that water is the best solution and you produce a jet of water to counter the fire.Initially it appears to be working but it\'s only a temporary solution and you are slowly losing energy and the dragon does\'nt look like it\'s going to give up.',
  'You kneel down.You have no energy left.Your water stream is also weakening.Then suddenly the dragon stops brething fire at you and you pass out.You wake up and you see the dragon looking at you.You grab your sword.To your surprise,a wizard is sitting on the dragon.He seems to be controlling the dragon.They fly out of the cave.You walk out with the litle energy you have left.Do you',
  'In your last attempt for the king\'s reward,you aim and shoot.You miss.You reach for another arrow.You don\'t find any.You lay down on the ground and look at the sky.You have failed your quest.But at least you are alive.',
  /*104*/'You decide to use your special sword and aim it at the fleeing dragon.Sparks start coming out of the blade.You remeber few words from the poem you\'ve encountered throughout your quest."Let the altitude keep rising you remember".The sky turns cloudy.Lightning strikes the dragon.',
   'You use your teleportation power to teleport yourself onto the dragon.You spawn right behind the wizard and you stab him.Since the wizard and dragon are connected,the dragon dies too.It starts falling down towards the city.You teleport to safety.',
  'You freeze time.You have no energy left so you can\'t keep the spell running for longer nor can you use any other spell.You take out your bow and aim.Since the target is frozen you get an easy headshot.You release time.The wizard and dragon are bound together, so with the death of the wizard,the dragon also dies.',
  'You do not have any special weapons or spells.So you lie down and look at the sky.You have failed your quest.In the background,the wizard and the dragon terrorise the city.',
   'What you didn\'nt expect was that the dragon would crash into the city.You pass out as you have emptied your energy bar.You wake up days later in prison.You are held responsible for possesing the dragon and driving it towards the city.You spend the rest of your life in prison.',
   'You recover your energy while in hiding.The dragon is still looking for you.What do you do?',
  'You decide its now or never and jump out of cover with your sword.The dragon sees you and it breathes fire,but not you.It appears to be setting the cave on fire.The dragon runs outside.What do you do?',
   'You quickly teleport outside the cave.You have lost a lot of energy in the process.The dragon comes out too.',
   'You don\'t have the teleportation spell so you decide to run for it.',
   'You start running.You run as fast as you can avoiding the flames and falling rocks.But the exit is blocked by the rubble.You burn to death.',//113
   'As soon as the dragon sees you it starts to fly.Do you',
    'The dragon cannot fly.And it starts charging towards you.You jump onto the dragon.And stab its neck.The dragon falls to the ground.You have succesfully completed your quest.',
   /*116*/'You let it escape.You keep looking at it until its a small dot in the sky.You sit down and look at the sunset.You did not get the reward but you feel like you did the right thing.The dragon never comes back to the city again.You live a happy life as a farmer.',
   'You draw out your last arrow.You hold your breth and shoot.The arrow seems to take forever to hit the target but it does nonetheless.What you didn\'t expect however,is the fact that the dragon starts falling towards the city.You are held accountable for the damages and you spend the rest of your life in prison. ',
   'You open a portal in front of you which exits near the dragon.The fire enters the portal and hits the dragon.You give the dragon a taste of its own medicine.You take cover behind a nearby rock.',
   'You jump backwards right on time and throw some dust onto the dragon\'s eyes,temporarily blinding it.You use this opportunity to take cover behing a rock.',
  'You peek around the rock,lock on to the target and chant the imprison spell.A metal cage appears around the dragon.It starts to retaliate and try to free itself.It fails.You start to walk towards the dragon.',
    'You peek around the rock,lock on to the target and chant the time spell.The dragon stops moving.It is completely still.You start to walk towards the dragon.',
   'You don\'t have any spells to immobilise the dragon.So you decide to charge at the dragon,sword drawn.',//122
    'Now that the dragon is trapped,you feel much confident.But you can\'t keep the spell running for long,so you\'ll have to end the dragon quickly.',
   'You see a shadow approach the cave entrance.You run back to the rock and draw your bow.It is the thief who stole your sword.He\'s still holding the magical sword.He looks at the dragon with a wicked smile on his face.He aims the sword at the dragon.Lightening discharges onto the dragon.Since it is trapped, it can\'t do much.The lightening stops.The sword is recharging.What do you do?',
   'You draw an arrow.You chant a spell to enhance it to penetrate the thick skull of the dragon.You pull the string,take aim ,hold your breath and shoot.You strike the head.You deactivate the spell.The dragon lies in front of you, dead.',
   'You aim at his head with your bow and shoot.You get a headshot.He dies.You go up to him and pick up his sword.It has recharged.You aim it at the dragon.Lightening discharges onto the dragon.You keep repeating this until the dragon dies.You have completed your quest.',
   /*127*/'He is your enemy,yes.But he is dealing serious damage to the dragon.If you get it right,he\'ll do your work for you.You decide to wait.He strikes the dragon again.The dragon dies.He starts laughing.Do you',
   'You stealthily make your way to your enemy,who is now going to have a closer look at the dragon.When you are inches away from your enemy,he detects you.He quickly turns around and points his sword at you.You materialize a shield.By the time you took to reach him,the sword has recharged.440 volts of electricity hits you.The sheild reduces the damage but you are still sent flying.You end up on the other side of the cave.You\'re bleeding and you feel pain throughout your body.You don\'t even have the enrgy to get up on your feet.The stranger is now walking towards you swinging his sword and laughing. ',
   'You crawl away from your enemy.He aims his sword at you.You see sparks.You close your eyes.You wait for your death.Nothing happens.You open your eyes to see what\'s going on.You notice a knife embedded in your enemy\'s skull.He falls down.You grab his sword and look for the origin of the knife.From the darkness,a familiar face appears.Its your red cloaked,green friend whose house you stayed in for a night.You heave a sign of relief and thank your friend for saving your life.You have a casual conversation and walk outside the cave.He asks you if he can have a look at your sword.What do you say?',
   'You crawl away from your enemy.He aims his sword at you.You see sparks.You close your eyes.',
   'You give him your sword.He examines the blade and says that its sharp.You nod in agreement.He starts swinging the sword.He says that it has a good weight to it.You say "Thats not all my friend."and start telling him about the lightening.',
   'You tell him that maybe you should get to a safe place first.He offers to take you to his hut and nurse you back to health.Both of you start walking towards his hut.',
   'A group of soldiers approach you.Seeing your weapons,the ask you if you slew the dragon.What do you reply?',
/*134*/ 'You say "Me and my friend here,killed the beast".You know that your friend saw the stranger kill the dragon with the sword.If you took credit for that,he\'d retaliate.So by telling the guards that we killed the dragon,you\'d be sharing the reward so he gets a part of it too,hence he won\'t spill the beans.The guards take you to the king\'s palace.You are waiting outside the courtroom.Your friend has already gone inside.After a few mintes,he comes out with a golden chest.He seems very happy.Now its your turn.You walk in to the court room.',
   'The king is sitting in the throne room when you walk into his presense.You nervously tell him about how you got to the dragon and managed to defeat it.The king slowly looks up with a broad smile on his face.He congragulates you and announces of a celebration in your honor and of your upcoming wedding with his daughter.For the first time on your long and grueling quest you feel a sense of joy.You go right to the town tailor with your gold and but his finest cloak.Your quest is finally over.You marry the princess in a grand ceremony held on the shore beside the king\'s castle.At the end of the ceremony the king places the large crown on your head.As the large crowd yells and screams loudly in great excitement.You are the new Prince of Anagua. ',
  'You say that you killed the dragon.Your friend pushes you aside and says "No he\'s lying.He killed the dragonslayer.".You\'re shocked at this betrayal.The guards and your new enemy form a circle around you.You draw your magic sword and aim it first at your "friend".He starts running towards you.Lightening from the sword strikes him.You then lift the sword above your head and swing it in a circle.Lightening gets all your enemies.You hide the soldiers\' bodies in the nearby bushes so that they can\'t be discovered.You walk towards the city to claim your reward. ',
  'You say that you killed the dragon.Your friend pushes you aside and says "No he\'s lying.He killed the dragonslayer.".You\'re shocked at this betrayal.The guards and your new enemy form a circle around you.Your "friend" is aiming at you with the magical sword which he took from you earlier.Lightening strikes you and you are sent flying.You end up falling near the cave entrance.You are dazed and cannot see clearly.You try to get up but 6 arrows pin you to the ground.The last thing you see is the dragon lying dead inside the cave.',
   'You start walking towards him,sword drawn.He looks at you.He isn\'t surpirised after seeing you at all."Back for another beatin?",he asks.You continue walking towards him.He aims his sword at you.Nothing happens.He starts thrusting his sword towards you.You say "The sword needs to recharge.".You can tell he isn\'t a swordsman by the way he\'s holding his sword."I don\'t need magic to beat you"he says as he starts running towards you.He attacks you with the sword.You deflect it and kick him away.He aims at you and to your surprise lightening discharges from the sword.You grab his sword by the hilt and push him away.He falls to the ground,you point the sword at him.He begs for his life.The sword is charging.What do you do?',
   'You lower your sword.He runs away.You decide it is high time to collect your reward.You start walking back to your city.',
  /*140*/ 'You are waiting for the sword to recharge.The thief isn\'t moving.Then suddently,he throws sand on you.You\'re blinded by the sand.You unsheathe your sword and start to rub your eyes.That makes the problem even worse.You try to see whats goin on.Everything is blurry but you see the thief run away.You enter the palace for the reward.The king arrests you.You demand reason.The guards knock you out.You wake up in prison.You ask the guards what your crime is.They tell you that the thief came and claimed the reward already.He also told the king that you killed your opponents and was about to kill him too but he escaped.You spend the rest of your life in prison.',
 'You decide to stock up on supplies if you wish to survive.You walk in to the peddler\'s shop with 200 coins in your pouch.What do you do',
   'You decide you need to collect more coins before you start shopping.The shop is filled with your competitors,all of them unarmed.There are about 10 of them.Do you',
   'You climb onto a table and challenge everyone in the room to an arm wrestling match.You place a bet of 200.You drag a chair near the table and sit down.A person comes and sits down in front of you.He places his bulky arm on the table.You start wrestling.You are clearly losing.Keep this up for long and your arm will be dislocated.You start chanting a spell and the next second,you smack the opponent\'s arm on the table and your opponent falls off the chair.He is stunned but gives you 200 coins.Three more of them challenge you and using your magic ,you win all three matches.Do you ',
   'You increase the bet to 500 coins but no one steps forward.You are saddened but you decide you have enough and walk to the shopkeeper',
   'You walk to the shopkeeper.He is about to show you what he has to offer but someone grabs your waist and smacks you on the table.The table breaks and you are on the ground.Your back hurts.You look around.The entire room is looking at you,fists clenched.They know you cheated and they don\'t look too happy about it.',
  /*146*/'You stealthily pick all of the pockets of your competitors.You now have 2000 coins.You walk to the shopkeeper and he is about to show you his stock.But someone grabs your waist and smacks you on the table.The table breaks and you are on the ground.Your back hurts.You look around.The entire room is looking at you,fists clenched.They know you cheated and they don\'t look too happy about it.',
   'You cast a spell on him.He roars and charges towards the other members in the room.You walk up to the shopkeeper with your magical assistant sending people flying in the background.The spell will make him unconsious after he has finished dealing with your problems.',
   'He places a light but sharp sword and a deadly but heavy axe on the table before you.',
    'You don\'t have enough coins to make that purchase.The shopkeeper\'s henchmen throw you outside the shop.You don\'t want to start your journey without weapons.',
   /*150*/'Now that you\'ve chosen your primary weapon,you ask the shopkeeper for ranged weapons.He nods and places two bows.You pick up one of them and test the string.It is tight.The shopkeeper tells you its a berserker\'s bow capable of shooting 5 arrows at a time,thereby inflicting more damage.You test the other bow.The string is loose.It\'s the predator bow,it can shoot single arrows consecutively thereby increasing fire rate.What do you choose?',
   'You decide to do this the old fashion way and say "You don\'t want any part of this" as you start to get up but one smack on the face from the brute and you are on the ground again.Your nose is bleeding.The people around you are not angry anymore.Instead they start cheering.Your opponent steps back from you.The shopkeeper walks about and collects bet amounts.You realise that you are in a one on one fist fight with the brute.You smile and get up.You get into an attacking stance.',
   'He has already sent you to the floor twice.So you decide to strike first and strike hard.You put all your energy into the punch but he stops it with his hand.You are stunned.You smile sheepishly.He pulls your arm and you towards him,tosses you upon his shoulders as the crowd cheers and throws you towards a pillar.Your back now hurts.You take a while to get back on your feet again.He seems to be very pleased with the attention he\'s been getting and he signals the audience to cheer louder.',
    'You decide to use this distraction as an opportunity.You quickly jump onto the shopkeepers table and run on it,pick up a coins pot and jump onto the brute\'s shoulders.You smack his head with the pot.The pot breaks and the crowd is silenced.All you can hear is coins from the pot raining down on the wooden floor.You jump off the brute\'s shoulders.He falls down with a thud.He lies on the floor unconcious.The crowd roars and claps for you.The shopkeeper comes to you a bag of coins."I wagered against you but here\'s your coin."he says as he hands over 1000 coins to you.He walks back to his table.',
   /*154*/'You decide to wait for him to attack first and use his energy against him.He tries to punch you again.You evade and quickly punch his stomach followed by a punch to the face.He steps back in pain.Before he recovers,you kick him away from you.He falls down and his nose is now bleeding.The crowd becomes silent for a few seconds trying to figure out what just happened.Then they start cheering for you.You appear to have an upper hand.What will be your next move? ',
   'You decide to let the brute strike first.You taunt him.He starts running towards you like a raging bull.He grabs your waist and locks your arms.He lifts you off your feet and he pins you to the ground.He\'s on top of you now.In three consecutive punches on the face,he knocks you out.',
    'You run towards the brute and grab his waist but you are unable to move him because of his size.He grabs your waist and throws you aside.The crowd starts laughing.You are pissed,without thinking,you start running towards the brute.What next?',
   'He is about to punch you.You slide through his legs,quickly recover and start running towards his back.He turns back and you jump and punch him.He drops to the ground.The crowd is stunned.They start cheering for you.The shopkeeper walks towards you."Nice punch" he says as he gives you the bet money.You receive 1000 coins.',
   'You quickly create a magic shield and you appear to have survived being burnt alive.But the fire is not stopping and you are slowly losing energy in order to keep the shield going.You manage to keep the shield going for a minute or so and you faint.You can feel the fire consuming you.',
    'Your success angers them even more and they increase their attacks.You realise that you are seriously outnumbered.An idea strikes your head.You quickly slash through three monsters and start spinning with your two handed sword.The brainless creatures keep running towards you and your blade gets them.They stop attacking you and run away.Before you lies heaps of monster carcass.You lay down and grab your breath.The slain monsters start to turn into dust.A few minutes later,you get up and walk back to where you came from knowing you chose the wrong path.You reach the less beaten path.',
    'You get to the island and are greeted by another tribe.They don\'t look friendly.You take out your predator bow and pull out 6 arrows from your quiver.You hold them between your fingers.You shoot one of them and you grab the string when it bounces back and shoot the other one in fraction of seconds.7 arrows,7 targets down.They start throwing spears at you.You get behind cover.You occasionally jump out of cover and quickly take out 7 enemies at a time with your predator bow.You keep doing this until the whole tribal settlement is clear.You hop onto the boat and head back to the ocean and start rowing to the shore.',
  /*161*/'You loot the bodies and get around 2000 coins.You are about to leave when something grabs your eye.One of them appears to be holding a scroll.You open the scroll and find a message which says "Beware the man from the future".That doesn\'t make sense to you.You hop back into your boat and start rowing away from the island.Suddenly you notice smoke from somewhere within the island.You definately know that\'s not your doing.Do you',
   'You draw 5 arrows from you quiver and aim them at the wizard with your berserker bow.You pull and release.He conjures up a sheild but he is weak and your arrows easily pierce through and kills him.Now that all your enemies are elliminated,you march into the cave.',
   'You row back to the island and start walking towards the smoke.You cut your way through dense vegetation and you\'re surprised to see a blacksmith\'s shop in what you assumed to be a deserted island.You walk into the shop.Its deserted.You are about to leave but you hear a voice saying "Need something?".You turn around and walk towards the blacksmith.What do you do? ',
   'What do you ask him?',
   '"This place wasn\'t always like this.It used to be full of life.Until them bandits and tribesmen started pillaging the city.The folks in the city couldn\'t tolerate it anymore and they left the island.I wanted to leave too but them bandits caught me and when they got to know i make weapons.They forced me to stay.And ever since,I\'ve been stuck in this hellhole."',
   '"Oh that.I was dragging a weapons cart from my hut.Them bloody bandits ambushed me and took the cart.I make weapons, not use them.I surrendered the cart and ran for my life.The smoke is probably from their camp."',
  '"Yes please!Its time them bandits met their match.Here\'s a deal.If you bring the cart to me,I\'ll give you a discount.Do we have a deal?"',
  /*168*/'You walk out of the shop and start walking towards the smoke.After some time,you begin to feel you\'re not alone.There\'s something in the bushes.You conjure up a fireball.A panther jumps out of the bushes.You hurl the fireball at it.It dodges it and pounces on you.You\'re on the ground holding the neck of the beast.It is constantly trying to paw your face.All of a sudden something hits the panther\'s head and it stops moving.You throw it aside.Your head is covered with its blood.You crawl closer to the beast.',
  'A tiny metal object is embedded in the panther\'s skull.You look around for the source.A man appears from the shadows.He confuses you.You have never seen anyone dressed like him.He has weird haircut and a hippie beard.He seems to be holding a weapon.You ask him who he is.He says "Well let\'s just say that I\'m not from your time."He walks up to you and offers you his hand.He helps you get back on your feet.',
  'What would you like to ask him?',
  'Yes,I come from the future.The device I used to travel here was stolen from me.Will you help me find it?',
 /*172*/ '"Oh this?This is a machine gun.It can shoot bullets with a simple pull of a trigger.",he says as he hands you over the gun.You try it.The recoil drives you crazy.',
   'You quickly aim the gun at him and pull the trigger.Three bullets and he drops dead.He looks at you in shock."I trusted you" he says as he draws his last breath.Now that you have his machine gun,do you?',
   'Now that you have your weapons in place,you head back to the shore,hop on to the boat and head back into the ocean',
   'You follow the smoke and in no time,you find the bandit camp.They spot you and within no time you kill all of them with your gun.You loot their corpses and find 1000 coins.You drag the cart to the blacksmith',
   'You take the cart back to the blacksmith.He thanks you for the trouble and places an Axe and a spear on the table.',
    'He places an axe and a spear on the table',//177
   'You don\'t have enough funds to make that purchase.You head back to the coast and hop on to the boat and go back to the ocean',
   'You give the gun back to him',
   '"We\'ll take my bike",he says.You\'re confused."Is your horse named bike?",you ask.He laughs.You also laugh sheepishly."Who names a horse bike?" you tell yourself.You follow him through the bushes."This is a bike",he says as he points to a black machine with two wheels.The machine looks very sophisticated.He goes and sits on the machine and asks you to hop on.You sit on the bike."My name\'s Jake by the way",he says as he starts the machine.The machine roars and starts moving.',
   'The bike is pretty fast and can climb steep slopes with ease."How much for the bike?",you ask him."Not for sale",he says.After 10 minutes or so,you reach a tribal camp.You both hide behind the bushes.You see the blacksmith\'s cart."I need to take that cart back to the blaksmith",you tell Jake and point towards the cart. ',
   '"Any ideas?",you ask Jake.He nods and takes out what looks like a rock from his vest and pulls the pin embedded in the rock and throws the rock towards the camp.Nothing happens.The tribesmen walk towards the rock and to your surprise,it explodes and kills all of them."Anything other weapon of mass destruction in your pocket that I should be aware of?",you ask.He smiles and both of you walk towards the camp.',
   '"Let me take care of this",you tell him as you take aim with your predator bow.Thanks to the bow\'s incredible speed,you take all of them out without them knowing what hit them."Impressive",Jake says and both of you walk to the camp',
   'You take aim with your berserker bow.The string is hard and you take two of them out but the sound produced by the string alerts the other tribesmen and they start running towards you.One of them blows a conch, calling for reinforcements."So much for stealthy and sneaky",Jake says as both of you step out of the bushes.You use the berserker bow\'s full potential to shoot five arrows at a bandit.He dies immediately.Another bandit throws a spear at you,you dodge and pull out five more arrows and pin the bandit to the ground.Meanwhile Jake has taken care of everyone else with his gun."You sure that\'s not for sale?",you reconfirm."The reinforcements have arrived",he says as he reloads his gun.You look where he\'s looking and spot men riding tigers approaching fast.Jake starts shooting and a rider is charging towards you.Do you',
   'You headshot the tiger with your bow.The rider falls down and shoot a fireball at him.You check on Jake.He is pinned down by a tiger and he doesn\'t have his gun.You chant a spell as you swing your arm and a blast of wind carries the tiger away from Jake.He quickly grabs the gun and shoots the tiger dead."You saved my life.Thank you",he says as you help him up.',
   'You knock the rider out but the tiger pounces on you,pinning you to the ground.You ask Jake for help but he too,is in the same situation.Do you',
   'You send a blast of wind towards Jake which takes the tiger away from Jake.He throws a knife and kills the tiger on you and grabs his gun and takes care of his tiger.You throw your tiger away and hieve a sigh of relief.Jake helps you up and thanks you.',
 /*188*/'You shoot fire and kill the tiger towering over you.You throw it aside and look at Jake but it\'s too late.Jake is dead and his tiger pounces on you.You dodge and kill the tiger with your bow.You look at Jake\'s motionless body and feel terrible.You could have saved him and helped him get home.You pick up Jake\'s gun and give him a proper burial.',
    'You feel miserable and responsible for Jake\'s fate.You decide to leave the island.You go back to the shore and hop on to the boat and paddle to the ocean.',
   'You look for the cart and eventually find it.You take it to the blacksmith.',
   'You run towards him and jump.He grabs you and smacks you down.The crowd cheers.You cannot move.He then stomps you.Everything goes black.',
   /*192*/'You and Jake thoroughly search the camp.You find the cart and drag it out.It\'s a very heavy cart.Jake suggests you check if the cart contents are alright.You open the blanket over the cart contents and you see a spherical object emitting bright blue light."That\'s the time machine!That\'s the thing that brought me here.",Jake says.',
   '"The blacksmith?He\'s the one who stole this from me when I got here.Listen Warrick.I need to get back to my time.I have a family",Jake says.',
   'He doesn\'t reply and you want that discount.He kicks you aside.You recover and before he grabs the artefact,you shoot a blast of wind at him.The wind takes him away from the cart.You make the cart dissapear.He gets up and starts reloading his gun.',
   'You materialise the cart above his head.It falls on him with a bang.Sword drawn,you walk towards the wreckage.The cart is completely destroyed and weapons are lying all over the place.You also spot Jake\'s hand.You take his gun and the time machine and walk back to the blacksmith."Sorry about your weapons but I still have this",you tell the blacksmith',
   'You charge at him with your magical sword.You jump and aim the sword at him.Lightening discharges from the sword towards Jake.He rolls aside and starts shooting at you.You materialise a shield.It stops the bullets but you notice the shield cracking up.It can\'t save you for long.Meanwhile Jake is walking towards you.The cracks on the shield intensify',
   'You quickly jump aside and aim the sword at Jake.He aims his gun at you but the electricity from the sword getd him first.However a bullet pierces your shoulder.The pain is unbearable.You cast a spell to reduce the pain.Your shoulder region feels numb.',
   'You walk towards Jake.He lies dead in front of you.',
 /*199*/'You decide to leave him be and walk back to the blacksmith.You materialise the cart in front of him',
   'You pick up his gun.You hear a click,You see a string attached to it.At the end of the string you find a pin.On his vest you see a pinless grenade.',
   'You decide to run for it.But it\'s too late.BOOM.',
   'You use magic to cast a sphere around the grenade.The grenade explodes within.The explosion increases the size of the sphere.You struggle to keep it at bay.Your magical energy is also depleting beacause you are using two spells at the same time.You decide to release the healing spell in order to control the explosion.The pain is unbearable.You push the sphere up to the sky.It explodes.You faint',
   'You wake up with a sharp pain in your shoulder.You cast a spell to reduce the pain.You have lost a lot of blood.Furthermore,your surroundings are on fire.You quickly take the gun from Jake and run to the blacksmith.You materialise the cart in front of him',
   'You jump aside and take cover behind a tree',
  /*205*/  'You pull out your berserker\'s bow and shoot 5 arrows at him.You hit your target,however,in doing so,you have revealed your position.Before he falls to the ground,he sends a grenade your way.You run but the explosion gets you.',
    'You draw 5 arrows from your quiver and ready your predator bow.You quickly shoot 3 arrows at his chest.He tries to pull out a grenade.You shoot another arrow at his arm.You step out and finish him off with a headshot.',
   'You summon the cart near him.He walks towards the cart.You cast a spell on the weapons.When he walks near to the cart,the weapons inside spring to life and pin Jake to the ground.',
  'You charge with your sword.He keeps throwing grenades at you.You dodge them and keep running towards him.You jump and try to go for his head.He dogdes and punches your gut, hard.Before you recover,he grabs you and shoves you aside."Any last words?",he asks you at gunpoint.',
  /*209*/ '"If I die today,it won\'t be here",you scream as you run towards Jake,sword drawn.He guns you down before you could even reach him',
   'You push the cart towards Jake."Thanks Warrick.I owe you one.",he says as he picks up the spherical object.He twists the top and bottom part of the sphere and he starts to fade away.He tosses you the key to his bike just before vanishing into thin air.You catch it but he did not teach you how to move the bike.You walk to the bike and after hours of trying to figure out how it works,you decide to use magic to turn the wheels.You reach the shore and shrink the bike and put it on the boat and head out into the ocean',
   'You reach a shore and pick up your bike,restore it to its normal size and continue on your journey.You are driving through fields of tall grass.You reach a desert and notice smoke coming out from the bike.You ignore it and continue driving the bike with magic.Soon you sense something burning.The engine is on fire.',
   'You jump out of the bike and watch it explode in the distance.You are stuck in a desert with no mode of transport',
   'You use magic to put out the fire.But after a while,the bike stops.It just won\'t move.You are stuck in a desert with no mode of transport.',
  /*214*/ 'You grow weak.You cannot feel your legs.You kneel down.Your vision blurs.But you keep pushing.Your opponent is showing no signs of backing out.You feel an acute pain in your shoulder.You probably should\'ve taken care of that bullet Jake gifted you.You are not able to keep up the beam.The wizard\'s beam gets you.',
  'You reload your gun and take aim.You get rid of all of them within seconds.',
  'You loot them in hopes of finding something useful and to your luck,you find a piece of paper on the wizard.The swordsmen are pretty much bankrupt.It has instructions to cook up an imprison spell.It can imprison the foe in an indestructable cage.',
  'You draw your axe and start running towards the dragon.It tries to get you with its wing.You swing your axe at the wing but the impact sends you flying.However,you have inflicted heavy damage on the dragon.You get back up on your feet.',
  'The dragon is licking its wounds.You decide to seize this opportunity and jump onto its back and strike the dragon with the axe\'s blade.The blade pierces through the rough skin of the dragon.The dragon roars in pain.It runs out of the cave with you on it and takes off.You grip the axe tightly because you know that if you lose grip,you are but a flightless man.The dragon is flying over the city',
  /*219*/'You set the dragon on fire with a spell before letting go of the axe.',
  'You are freefalling.You use your teleportation spell to teleport to the ground',
   'You cast a spell to take control of the dragon.You take it away from the city.You see an empty grassland.You set course and bail out just before touchdown.The dragon lies dead before you.You have succesfully completed your quest.',
   'You cast a spell to summon a beast in order to distract the dragon.A large tiger materialises in front of you.It roars and pounces on the dragon.',
   'You feel this is the right time to lift the man\'s curse.The dragon is trying to get the tiger off its back.You point your hand at the dragon and start chanting the spell.The dragon\'s body begins to glow.The dragon roars.You keep chanting.The dragon starts turning into dust.You keep chanting.The dragon completely gone.All you see is a heap of sand in front of you and a confused tiger.From the heap,emerges a man.The tiger pounces on him.He kills it with a knife."Where did this come from?",he asks you."I\'m as confused as you are",you reply.',
   'You tell him your story from the very beginning,how you met his father who told you about the curse and how to lift it.He holds your hand and thanks you.You both walk out of the cave and look at the sunset.You ask him what he\'ll do now."I think I\'ll go meet my old man.What about you",he asks you.What do you tell him?',
   'You bid him farewell and walk back home.You recall your journey,from the King\'s palace to the dragon\'s lair.You are not interested in the King\'s reward anymore.You reach home and live happily ever after.THE END.',
  /*226*/'Now that the dragon is busy,you decide to gun it down.You reload your gun and empty an entire magazine on the dragon.It collapses.',
  'You are sitting outside the throne room.Your friend walks out."I\'ve told the king everything.Go claim your reward.",he says.',
   'Now that the dragon is occupied,you decide to end it once and for all.You blast the dragon with an energy beam.',
   'You keep walking and walking.You don\'t seem to be getting any closer to the mountains.You stop by a tree to rest.Suddently,out of no where,someone jumps on top of you and impales you to the ground.His knees are on arms,so you can\'t move.He has a knife near your neck."Where did you get that spear?",he asks you.What do you reply?',
   '"Why don\'t you let me go and I\'ll take you to him.",you yell as you summon a gust of wind to take him away from you.You jump back on your feet and pull out your spear.Your foe is also up and about.You notice he has an unconventional way of holding his spear.Usually it is the centre but he is holding the bottom-most part of the spear."You don\'t deserve to wield that spear",he says as he holds the spear at shoulder level and starts spinning towards you.',
   'As he nears you,you swing your spear at his legs.He loses balance and hits the ground.Before he recovers,you position the spear tip near his throat.',
   'You slit his throat and finish him.You continue walking towards the mountain.',//232
   'You withdraw your spear and offer him a hand."Am I worthy enough to wield the spear now?",you ask him as you help him get up."Sorry about that,the spear belonged to my son.",he says.',
   '"That blacksmith you purchased the spear from cursed my son to turn into a dragon and stole his spear.I\'ve spent months trying to find a way to lift the curse."',
  ];

  List <String> dialog=['Go to the blacksmith for supplies?',
    'Take the right path?',
    'Go to the beginning and try again',
    'Go through the underbush?',
    'Arm your sword?',
    'Go to the hut and rest?',
    'Go to the hut and rest?',
     'Stop to write it down',
    'Go to the beginning and try again',
    'Go to the beginning and try again',//9
    'Go across the river to the scary swamp.',
    'Go through the storm?',
    'Retreat',
    'Ask head 1 a question?',
    'Which path do i take?',
    'Which path do i take?',//15
    'Choose path 1',
    'Restart from checkpoint',
    'Choose the old,weed covered trail to the left over the grassy knoll.',
    'Choose path 1',
    'Restart from checkpoint',//20
    'Choose the old,weed covered trail to the left over the grassy knoll.',
    'Choose path 1',
    'Restart from checkpoint',
    'Choose the old,weed covered trail to the left over the grassy knoll.',
    'Follow the creek so that if you come upon the desert you will have water before entering.',//25
    'Get up and try and jump across the gap and prove to yourself you dont always need the aid of magic.',
    'Try to summon a beast to carry you to the desert.',
    'Restart from checkpoint',
    'Continue',
    'Continue',//30
    'Continue over the dune',
    'Restart from checkpoint',
    'Run back',
    'Stab at the heart',
    'Continue on the mountains',
    'Continue',
    'Shoot arrows',
    'Choose not to eat the piranhas?',//38
    'Try to take on the rapids head on?',
    'Rewind time',
    'Go into the mud',
    'Right',//42
    'Go down?',
    'Rest?',
    'Try to kill him',
    'Tell him to talk to you later?',
    'The right path',//47
    'Rewind time',
    'Continue on the plains',
    'Try for a headshot with your bow.',
    'Rewind time',
    'Restart from checkpoint',
    'Restart from checkpoint',
    'Restart from checkpoint',
    'Restart from checkpoint',//55
    'Restart from checkpoint',
    'Follow them to the island.',
    'Restart from checkpoint',
    'Restart from checkpoint',
    'Try to undo your mistakes',
    'You could try to banish them to another time and place with a fast activating spell.',
    'Restart from checkpoint',//62
    'Continue',
    'Retry?',
    'Try to dig for water',
    'Undo your mistake',
    'Undo your mistake',
    'Follow the map,knowing you\'ll lose some time',//68
    'Cast a spell to hold your breth for longer and jump into the lake',
    'Continue',
    'Draw your sword and charge at him',
    'Continue',
    'Aim and shoot before he gets you',
    'Check his pockets for information about him',
    'Go back to the left path',//75
    'Go to the dragon before they get here',
    'Attack',
    'Enter the cave',
    'Use the swordsmen as sheilds against the wizard\'s projectiles.',
    'Fight the wizard',//80
    'Bet your life and keep the beam going',
    'Enter the cave',
    'Fight the wizard',
    'Cast a magic shield to block the fire',
    'Shoot arrows at him',
    'Shoot a projectile',
    'Finish him off',
    'Enter the cave',
    'Loot the wizard before you enter the cave',//89
    'Memorize it and continue',
    'Restart from checkpoint',
    'Restart from checkpoint',
    'Use primary weapon',
    'Use magic to shoot fire at the wing',
    'Restart the battle',
    'Restart the battle',
    'Aim the sword at the head',//97
    'Continue',//98
    'Continue',
    'Create a portal that opens near the dragon',
    'Keep pushing',
    'Aim at the wizard with a bow',//102
    'Restart the story from the beginning',
    'Continue',
    'Continue',
    'Continue',
    'Restart the story from the beginning',
    'Restart the story from the beginning',//108
    'Draw your sword.',
    'Run outside',
    'Continue',
    'Continue',
    'Restart the story from the beginning',
    'Take aim using your bow.',
    'Continue',
    'Restart the story from the beginning',//116
    'Restart the story from the beginning',
    'Continue',
    'Continue',
    'Continue',
    'Continue',
    'Continue',//122
    'Continue',
    'Attack the stranger now that his sword is recharging.',
    'Continue',
    'Continue',
    'Attack now',
    'Crawl back',
    'Sure.Here you go.',//129
    'Restart the story from beginning',
    'Continue',
    'Continue',
    'I killed the dragon.',//133
    'Continue',
    'Restart the story from beginning',
    'Continue',
    'Restart the story from beginning',
    'Spare him',//138
    'Continue',
    'Restart the story from beginning',
    'Walk to the shopkeeper',
    'Pick their pockets',
    'Increase the bet',//143
    'Continue',
    'Use magic to take control over the man who knocked you out',
    'Use magic to take control over the man who knocked you out',
    'Ask the shopkeeper for weapons',//147
    'Light Sword (500 coins) ',
    'March back in',
    'Berserker\'s Bow (500 coins)',//150
    'Wait for him to strike first',
    'Attack',
    'Ask the shopkeeper for weapons',
    'Tackle your opponent',
    'Restart from checkpoint',
    'Jump and try to punch his face',//156
    'Walk to the shopkeeper',
    'Restart the fight',
    'Walk on the less beaten path',
    'Go back to the ocean',//160
    'Go back to the ocean',
    'Face the dragon',
    'Talk to him',
    'Tell me more about this island',//164
    '"I saw smoke up ahead.Everything alright?"',
    '"I can recover your cart for you"',
    '"We have a deal." ',
    'Continue',
    'Talk to him',
    '"Are you from the future?"',//170
    '"Of course"',
    'Give it back to him',
    'Look for the blacksmith\'s cart',
    'Continue',
    'Continue',//175
    'Buy the Axe (500 coins)',
    'Buy the Axe (650 coins)',
    'Continue',
    'Continue',
    'Continue',
    'Try to sneakily take them out one by one using your bow',
    'Continue',
    'Continue',
    'Shoot the tiger',//184
    'Continue',
    'Shoot fire at the tiger on you',
    'Continue',
    'Leave the island',
    'Continue',//189
    'Continue',
    'Restart from checkpoint',
    '"That can\'t be right.This cart belongs to the blacksmith."',
    '"I get a discount if I take this to the blacksmith"',//193
    'Charge with your sword',
    'Hand over the artefact to him',
    'Quickly jump aside and shoot lightening at him',//196
    'Walk towards Jake',
    'Take his gun',
    'Continue',
    'Run',//200
    'Restart from checkpoint',
    'Wake up',
     'Continue',
    'Use your bow',
    'Restart',
    'Confirm his death',//206
    'Confirm his death',
    '"I\'ll give you the cart"',
    'Restart from checkpoint',
    'Continue',
    'Use magic to control the fire',//211
    'Start walking',
    'Start walking',
    'Restart from checkpoint',//214
    'Enter the cave and face the dragon',
    'Enter the cave',
    'Try to climb onto the dragon',
    'Slay the dragon',
    'Continue',//219
    'Continue',//220
    'Claim your reward',
    'Finish off the dragon',
    'Tell him the whole story',
    '"Before you go,I need you do me a favour."',
    'Restart the story from beginning',
    'Claim your reward',
    'Walk into the throne room.',
    'Go to the palace and claim your reward',
    '"I bought it from a blacksmith!"',
    'Defend the attack with your spear',
    'Spare him',
    'Continue',
    '"That can\'t be right.I bought this from a blacksmith."',
    '"Have you found one?"',
  ];
  List <String> dialog2=['Continue on without supplies?',
    'Take the left path?',
    'Exit',
    'Walk back and take the left path',
    'Arm your bow?',
    'Keep walking?',
    'Keep walking?',
    'Hurry along and write it later?',
    'Rage Quit',
    'Rage Quit',
    'Go into the dangerous ocean.',
    'Head to the shore?',
    'Throw tiny fireballs',
    'Ask head 2 a question? ',
    'Do you lie or tell the truth?',//14
    'Do you lie or tell the truth?',
    'Choose path 2',
    'Quit',
    'Choose the dirt path to the right.The path seems to have small footprints of unknown origin.',
    'Choose path 2',
    'Exit',//20
    'Choose the dirt path to the right.The path seems to have small footprints of unknown origin.',
    'Choose path 2',
    'Exit',
    'Choose the dirt path to the right.The path seems to have small footprints of unknown origin.',//24
    'Follow the shortcut branching off the creek to the desert',
    'Instead use your magic to levitate over the gap and save your energy for the trek',
    'Try to walk the five plus miles on foot without aid.',
    'I quit',
    'Exit',
    'Exit',
    'Travel southwest of the sand dune',//31
    'Exit',
    'Stay and fight it with your sword.',
    'Go for the head',
    'Exit',//35
    'Chicken out',
    'Zap them',
    'Choose to eat the Piranhas?',
    'Try to evaporate some of the water with small fireballs',
    'Die',
    'Climb over the nearby tree and try to jump over the stream.',//41
    'Left',
    'Jump?',
    'Journey On?',//44
    'Try to speak to him',
    'Stay with him?',
    'The left path',
    'End your life',//48
    'Exit',
    'Run away while you still can.',
    'Exit',
    'Exit',
    'Exit',
    'Exit',
    'Exit',//55
    'Exit',
    'Go back to the shore?',
    'Exit',
    'Exit',//59
    'Accept your death',
    'Try to befriend them',
    'Exit',//62
    'Try a different path',
    'Exit?',
    'Give up because you know you will die even if you find water',
    'Let death consume you',
    'Let death consume you',//67
    'Leave the map with him and walk back to the left path.',
    'Cast a spell on the lake to throw out all metal objects',
    'Exit',
    'Generate mist to blind your foe',
    'Exit',
    'Flee while you still can to the left path.',//73
    'Journey on to the ocean as you have no time to lose',
    'Get on a boat and head out to the ocean',
    'Prepare an ambush and take revenge',
    'Wait',
    'Exit',//78
    'Dodge the projectiles and draw your sword.',
    'Exit',
    'Stop the beam and jump away.',
    'Exit',
    'Exit',//83
    'Jump to safety',
    'Start a conversation',
    'Try to talk to him',
   'Spare him',
    'Exit',
    'Enter the cave',//89
    'Exit',
    'Exit',
    'Exit',
    'Use magic',//93
    'Use your sword to shoot the wing',
    'Exit',
    'Exit',
    'Jump backwards',
    'Exit',//98
    'Exit',
    'Counter the flames with a jet of water',
    'Give up and burn to death',
    'Use special weapons and spells',
    'Exit.',
    'Exit.',
    'Exit.',
    'Exit.',
    'Exit.',
    'Exit.',//108
    'Use special spells to immobilize the beast',
    'Teleport outside the cave',
    'Exit',
    'Exit',
    'Exit',//113
    'Give up and let it escape.',
    'Exit',
    'Exit',
    'Exit',
    'Exit',//118
    'Exit',
    'Exit',
    'Exit',
    'Exit',//122
    'Exit',
    'Wait',
    'Exit',//125
    'Exit',
    'Sneakily try to assasinate him',
    'Exit',
    'Sure,but lets get out of this place first.',
    'Exit',//130
    'Exit',
    'Exit',
    'We killed the dragon.',
    'Exit',
    'Exit',
    'Exit',
    'Exit',
    'Kill him.',
    'Exit',//139
    'Exit.',
    'Try to collect money',
    'Challenge them to a match of arm wrestling',//142
    'Walk to the shopkeeper',
    'Exit.',
    'Get ready for a fist fight',
    'Get ready for a fist fight',//146
    'Exit',
    'Two handed heavy sword (800 coins)',
    'Exit',
    'Predator Bow (700 coins)',
    'Throw in a punch',//151
    'Get into a defensive stance',
    'Exit',
    'Wait for your opponent\'s move',//154
    'Exit',
    'Slide through him',
    'Exit',//157
    'Exit',
    'Exit',
    'Loot the bodies for coins',
    'Go back to the island',
    'Run away',
    'See what he has to offer',//163
    '"I saw fire nearby.Everything alright?"',
    'Show me what you have on offer',
    '"Do you have anything to sell now? "',
    'I have a dragon to hunt.Is there something you can sell now?',//167
    'Exit',
    'Exit',
    '"That weapon...Tell me about it"',//170
    '"Yeah sure but tell me more about that weapon of yours"',
    'Kill him with the gun',
    'Leave the island',//173
    'Exit',
    'Exit',
    'Buy the spear (600 coins)',
    'Buy the spear (800 coins)',
    'Exit',
    'Exit',//179
    'Exit',
    'Let Jake take care of them',
    'Exit',//182
    'Exit',
    'Shoot the rider',
    'Exit',
    'Send a blast of wind towards Jake',
    'Exit',//187
    'Look for the cart',
    'Exit',
    'Exit',//190
    'Exit',
    '"Oh.Can you go back home now?"',
    '"Okay it\'s yours to keep."',
    'Drop the cart on his head.',//194
    'Exit',
    'Jump aside and get cover.',
    'Exit',
    'Walk back to the blacksmith',
    'Exit',
    'Use magic to control the explosion.',
    'Maybe later',//201
    'Die',
    'Exit',
    'Materialise the cart near him',
    'Exit',//205
    'Walk back to the blacksmith',
    'Walk back to the blacksmith',
    '"I\'m not dying today"',
    'Exit',//209
    'Exit',
    'Bail out',
    'Exit',
    'Exit',
    'Exit',//214
    'Loot the bodies',
    'Exit',
    'Summon a beast to distract the dragon.',
    'Take it away from the city',//218
    'Exit',
    'Exit',
    'Walk back home',//221
    'Exit',
    'Walk back home',
    '"I think I\'ll just go home."',//224
    'Exit',
    'Exit',
    'Exit',
    'Walk back home',
    '"GET OFF ME!"',
    'Duck and attack his leg',//230
    'Kill him',
    'Exit',
    '"What happened to him?"',
    '"I think I know where to find him"',//234
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: NetworkImage(backdrop[backno]),
         fit: BoxFit.cover,

    )
    ),
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child:
      Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,

      children: <Widget>[
       Expanded(

         flex: 5,
        child: Padding(
        padding:  const EdgeInsets.all(15.0),
        child: Center(
          child: FlatButton(
            child:Text(story[storyNum],textAlign: TextAlign.center,style: GoogleFonts.medievalSharp(textStyle:TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.bold,backgroundColor: Colors.brown), ),),
            onPressed: () {
              Alert(
                  context: context,
                  title: "ModMenu",
                  content: Column(
                    children: <Widget>[
                     TextField(
                       controller:storyCon,

                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          labelText: 'Story Point',

                        ),

                      ),

                    ],
                  ),
                  buttons: [
                    DialogButton(
                      onPressed: () {
                           Navigator.pop(context);
                           setState(() {
                             checkpoint=storyCon.text;
                             if(checkpoint=='dragon'){
//                               backno=dragon;
                               storyNum=84;}
//
                             else if(checkpoint=='blacksmith'){
                               storyNum=141;
                               backno=1;}
                             else if(checkpoint=='island')  {
                               backno=9;
                               storyNum=12;}
                             else if(checkpoint=='Jake boss fight')  {
//                               backno=9;
                               storyNum=194;}


                           });

              },

                      child: Text(
                        "Enter",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ]).show();

            }
          ),
        ),
      ),
    ),
        Expanded(

          child: Padding(
            padding: EdgeInsets.all(10.0),

            child: FlatButton(
             textColor: Colors.white,
             color: Colors.brown,
             child: Text(dialog[storyNum],style: GoogleFonts.medievalSharp(textStyle:TextStyle(color: Colors.white,), ),),
             onPressed: () {
               setState(() {
                 switch(storyNum){
                   case 0:storyNum=141;
                   backno=1;
                   break;
                   case 2:storyNum=0;
                   backno=0;
                           break;
                   case 1:storyNum=3;
                           break;
                   case 4:storyNum=5;
                   backno=6;
                           break;
                   case 5:storyNum=7;
                          break;
                   case 8:storyNum=0;
                          break;
                   case 6:storyNum=7;
                          break;
                   case 7:storyNum=9;
                          break;
                   case 9:storyNum=0;
                          break;
                  case 10:storyNum=37;
                          break;

                   case 11:storyNum=12;
                           break;
                   case 12:storyNum=13;
                           break;
                   case 13:storyNum=14;
                           break;
                   case 14:storyNum=16;
                           break;
                   case 16:storyNum=24;
                            break;
                   case 17:storyNum=13;
                           break;
                   case 15:storyNum=19;
                            break;
                   case 19:storyNum=24;
                           break;
                   case 20:storyNum=13;
                           break;
                   case 21:storyNum=22;
                           break;
                   case 22:storyNum=17;
                         break;
                   case 24:storyNum=25;
                           break;
                   case 25:storyNum=26;
                           break;
                   case 26:storyNum=27;
                          break;
                   case 28:storyNum=25;
                           break;
                   case 27:storyNum=29;
                           break;
                   case 29:storyNum=30;
                           break;
                   case 30:storyNum=31;
                           break;
                   case 31:storyNum=32;
                           break;
                   case 32:storyNum=31;
                           break;
                   case 34:storyNum=35;
                          break;
                   case 35:if(spear==0)storyNum=36;
                   else storyNum=229;
                           break;
                   case 36:storyNum=76;
                   break;
                   case 38:storyNum=40;
                          break;
                   case 40:storyNum=37;
                          break;
                   case 42:storyNum=43;
                          break;
                   case 48:storyNum=47;
                          break;
                   case 47:storyNum=49;
                          break;
                   case 49:storyNum=24;
                           break;
                   case 45:storyNum=50;
                           break;
                   case 50:storyNum=51;
                           break;
                   case 51:storyNum=45;
                          break;
                   case 37:storyNum=52;
                           break;
                   case 33:storyNum=31;
                   break;
                   case 52:storyNum=37;
                          break;
                   case 39:storyNum=53;
                           break;
                   case 53:storyNum=38;
                           break;
                   case 41:storyNum=54;
                   break;
                   case 54:storyNum=41;
                   break;
                   case 43:storyNum=55;
                   break;
                   case 55:storyNum=42;
                   break;
                   case 56:storyNum=42;
                   break;
                   case 57:if(predator==0)storyNum=58;
                   else storyNum=160;
                   break;
                   case 58:storyNum=12;
                   break;
                   case 44:storyNum=59;
                   break;
                   case 59:storyNum=43;
                   break;
                   case 46:storyNum=60;
                   break;
                   case 60:storyNum=45;
                   break;
                   case 62:storyNum=61;
                   break;
                   case 61:storyNum=63;
                   break;
                   case 63:if(twoHandedSword==0)
                     storyNum=64;
                   else
                     storyNum=159;
                   break;
                   case 64:storyNum=24;
                   break;
                   case 65:storyNum=66;
                   break;
                   case 66:storyNum=25;
                   break;
                   case 67:storyNum=24;
                   break;
                   case 3:storyNum=68;
                   break;
                   case 68:storyNum=69;
                   break;
                   case 69:storyNum=70;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 1),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked a special sword',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   sword=1;
                   break;
                   case 70:storyNum=11;
                   break;
                   case 71:storyNum=72;
                   enemy=1;
                   break;
                   case 72:storyNum=4;
                   break;
                   case 73:storyNum=74;
                   break;
                   case 74:storyNum=75;
                   teleport=1;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 1),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked the ability to teleport',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   break;
                   case 75:storyNum=4;
                   break;
                   case 76:storyNum=84;
                   wizard=1;
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   break;
                   case 77:if(gun==1&&method==1) {storyNum=215;}
                   else if(teleport==1){
                      storyNum=78;
                   }
                   else
                     {
                       storyNum=79;
                     }
                   break;
                   case 78:storyNum=84;
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   break;
                   case 80:storyNum=81;
                   break;
                   case 81:if(injury==0)storyNum=82;
                   else storyNum=214;

                   break;
                   case 83:storyNum=81;
                   break;
                   case 82:storyNum=84;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 1),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked the ability to freeze time.',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   time=1;
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   break;
                   case 85:storyNum=86;
                   break;
                   case 86:if(berserker==0)storyNum=87;
                   else storyNum=161;
                   break;
                   case 88:storyNum=84;
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   break;
                   case 87:storyNum=89;
                   break;
                   case 89:storyNum=90;
                   break;
                   case 90:storyNum=84;
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   imprison=1;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 1),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked the ability to imprison a foe.',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   break;
                   case 91:storyNum=76;
                   break;
                   case 92:storyNum=31;
                   break;
                   case 93:if(axe==1)storyNum=217;
                     else if(sword==1)
                             storyNum=94;
                           else
                              storyNum=95;
                   break;
                   case 95:storyNum=84;
                   break;
                   case 94:storyNum=96;
                   dragHealth.removeLast();
                   dragHealth.removeLast();

                   break;
                   case 96:storyNum=84;
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                   dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);

                   break;
                   case 97:storyNum=98;
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   fly=0;
                   break;
                   case 98:storyNum=109;
                   break;
                   case 99:storyNum=109;
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   fly=0;

                   break;
                   case 101:if(wizard==1)
                              storyNum=102;
                           else
                             storyNum=103;
                   break;
                   case 102:storyNum=103;
                   break;
                   case 103:storyNum=0;
                   break;
                   case 104:storyNum=108;
                   dragHealth.clear();
                   break;
                   case 105:storyNum=108;
                   break;
                   case 106:storyNum=108;
                   break;
                   case 108:storyNum=0;
                   break;
                   case 109:storyNum=110;
                   break;
                   case 112:storyNum=113;
                   break;
                   case 113:storyNum=0;
                   break;
                   case 110:storyNum=113;
                   break;
                   case 111:if(fly==1)
                     storyNum=114;
                   else
                      storyNum=115;
                   break;
                   case 116:storyNum=0;
                   break;
                   case 114:storyNum=117;
                   break;
                   case 115:storyNum=135;
                   break;
                   case 117:storyNum=0;
                   break;
                   case 100:storyNum=118;
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   break;
                   case 118:storyNum=109;
                   break;
                   case 119:storyNum=109;
                   break;
                   case 122:storyNum=110;
                   break;
                   case 120:storyNum=123;
                   break;
                   case 121:storyNum=123;
                   break;
                   case 123:if(enemy==1)
                     storyNum=124;
                   else
                     storyNum=125;
                   break;
                   case 125:storyNum=135;
                   break;
                   case 124:storyNum=126;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked a special sword',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   break;
                   case 126:storyNum=135;
                   break;
                   case 128:if(friend==1)
                     storyNum=129;
                   else
                     storyNum=130;
                   break;
                   case 130:storyNum=0;
                   break;
                   case 129:storyNum=131;
                   sword=0;
                   break;
                   case 131:storyNum=133;
                   break;
                   case 132:storyNum=133;
                   sword=1;
                   break;
                   case 134:storyNum=135;
                   break;
                   case 135:storyNum=0;
                   break;
                   case 133:if(sword==1)
                     storyNum=136;
                   else
                     storyNum=137;
                   break;
                   case 136:storyNum=135;
                   break;
                   case 137:storyNum=0;
                   break;
                   case 127:storyNum=138;
                   break;
                   case 138:storyNum=139;
                   break;
                   case 139:storyNum=135;
                   break;
                   case 140:storyNum=0;
                   break;
                   case 141:storyNum=148;
                   backno=3;
                   break;
                   case 143:storyNum=144;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Success',
                     subtitle: 'You just received 900 coins',
                     configuration: IconConfiguration(icon: Icons.attach_money),
                   );
                   coins+=900;
                   break;
                   case 144:storyNum=145;
                   backno=8;
                   break;
                   case 142:storyNum=146;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Success',
                     subtitle: 'You just received 1800 coins',
                     configuration: IconConfiguration(icon: Icons.attach_money),
                   );
                   coins+=1800;
                   break;
                   case 145:storyNum=147;
                   backno=8;
                   break;
                   case 146:storyNum=147;
                   backno=8;
                   break;
                   case 147:storyNum=148;
                   backno=3;
                   break;
                   case 148:if(coins<500){
                     storyNum=149;
                     backno=5;}
                   else{
                     storyNum=150;
                     coins=coins-500;
                     lightSword=1;
                     StatusAlert.show(
                         context,
                         duration: Duration(seconds: 2),
                         title: 'Success',
                         subtitle: 'You purchased a light sword',
                         configuration: IconConfiguration(icon: Icons.done),);}
                   break;
                   case 149:storyNum=141;
                   backno=1;
                   break;
                   case 150:if(coins<500)
                     storyNum=149;
                   else{
                     storyNum=1;
                     backno=2;
                     coins=coins-500;
                     berserker=1;
                     StatusAlert.show(
                     context,
                 duration: Duration(seconds: 2),
                 title: 'Success',
                 subtitle: 'You purchased a berserker\'s bow',
                 configuration: IconConfiguration(icon: Icons.done),);}
                   break;
                   case 152:storyNum=153;
                   break;
                   case 153:storyNum=148;
                   backno=3;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Success',
                     subtitle: 'You just received 1000 coins',
                     configuration: IconConfiguration(icon: Icons.attach_money),);
                   coins+=1000;
                   break;
                   case 151:storyNum=154;
                   break;
                   case 155:storyNum=145;
                   backno=8;
                   break;
                   case 154:storyNum=156;
                   break;
                   case 157:storyNum=148;
                   backno=3;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Success',
                     subtitle: 'You just received 1000 coins',
                     configuration: IconConfiguration(icon: Icons.attach_money),);

                   coins+=1000;
                   break;
                   case 84:storyNum=158;
                   break;
                   case 158:storyNum=84;
                   break;
                   case 159:storyNum=25;
                   break;
                   case 160:storyNum=24;
                   break;
                   case 161:storyNum=24;

                   break;
                   case 162:storyNum=84;
                   break;
                   case 163:storyNum=164;
                   break;
                   case 164:storyNum=165;
                   break;
                   case 165:storyNum=166;
                   break;
                   case 166:storyNum=167;
                   break;
                   case 167:storyNum=168;
                   break;
                   case 168:storyNum=169;
                   break;
                   case 169:storyNum=170;
                   break;
                   case 170:storyNum=171;
                   break;
                   case 171:storyNum=180;
                   break;
                   case 174:storyNum=24;
                   gun=1;
                   break;
                   case 173:storyNum=175;
                   gun=1;
                   break;
                   case 175:storyNum=176;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 1),
                     title: 'Success',
                     subtitle: 'You just received 1000 coins',
                     configuration: IconConfiguration(icon: Icons.attach_money),);
                   coins+=1000;
                   break;
                   case 176:if(coins>=500){storyNum=174;
                   backno=9;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 1),
                     title: 'Success',
                     subtitle: 'You succesfully purchased an Axe',
                     configuration: IconConfiguration(icon: Icons.done_outline),);
                  axe=1;
                  coins-=500;}
                  else {
                    storyNum=178;
                    backno=9;
                   }
                   break;
                   case 178:storyNum=24;
                   break;
                   case 177:if(coins>=650){storyNum=174;
                   backno=9;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 1),
                     title: 'Success',
                     subtitle: 'You succesfully purchased an Axe',
                     configuration: IconConfiguration(icon: Icons.done_outline),);
                   axe=1;
                   coins-=650;}
                   else {
                     storyNum=178;
                     backno=9;
                   }
                   break;
                   case 172:storyNum=179;
                   method=1;
                   break;
                   case 179:storyNum=170;
                   break;
                   case 180:storyNum=181;
                   break;
                   case 182:storyNum=192;
                   break;
                   case 181:if(predator==1)storyNum=183;
                   else storyNum=184;
                   break;
                   case 183:storyNum=192;
                   break;
                   case 184:storyNum=185;
                   break;
                   case 185:storyNum=192;
                   break;
                   case 187:storyNum=192;
                   break;
                   case 186:storyNum=188;
                   break;
                   case 188:storyNum=189;
                   backno=9;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked a Jake\'s gun',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   gun=1;
                   break;
                   case 189:storyNum=24;
                   break;
                   case 190:storyNum=176;
                   break;
                   case 156:storyNum=191;
                   break;
                   case 191:storyNum=141;
                   break;
                   case 192:storyNum=193;
                   break;
                   case 193:storyNum=194;
                   break;
                   case 195:storyNum=177;
                   break;
                   case 194:if(sword==1)storyNum=196;
                   else storyNum=208;
                   break;
                   case 196:storyNum=197;
                   break;
                   case 197:storyNum=198;
                   injury=1;
                   break;
                   case 199:storyNum=176;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked a gun',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   gun=1;
                   break;
                   case 198:storyNum=200;
                   break;
                   case 200:storyNum=201;
                   break;
                   case 201:storyNum=192;
                   injury=0;
                   break;
                   case 202:storyNum=203;
                   break;
                   case 203:storyNum=176;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked a gun',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   gun=1;
                   break;
                   case 204:if(berserker==1)storyNum=205;
                   else storyNum=206;
                   break;
                   case 205:storyNum=192;
                   injury=0;
                   break;
                   case 206:storyNum=198;
                   break;
                   case 207:storyNum=198;
                   break;
                   case 209:storyNum=192;
                   injury=0;
                   break;
                   case 210:storyNum=211;
                   StatusAlert.show(
                     context,
                     duration: Duration(seconds: 2),
                     title: 'Congratulations',
                     subtitle: 'You have unlocked Jake\'s bike',
                     configuration: IconConfiguration(icon: Icons.lock_open),);
                   bike=0;
                   break;
                   case 212:storyNum=31;
                   break;
                   case 211:storyNum=213;
                   break;
                   case 213:storyNum=31;
                   break;
                   case 214:storyNum=77;
                   break;
                   case 216:storyNum=84;
                   break;
                   case 215:storyNum=84;
                   break;
                   case 217:storyNum=218;
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   break;
                   case 218:storyNum=219;
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   dragHealth.removeLast();
                   break;
                   case 219:if(teleport==1)  storyNum=220;
                   else storyNum=221;
                   break;
                   case 220:storyNum=108;
                   break;
                   case 221:storyNum=135;
                   break;
                   case 223:storyNum=224;
                   break;
                   case 222:if(dragonMan==1) storyNum=223;
                   else if(gun==1&&method==1) storyNum=226;
                   else storyNum=228;

                   break;
                   case 225:storyNum=0;
                   break;
                   case 226:storyNum=135;
                   break;
                   case 224:storyNum=227;
                   break;
                   case 227:storyNum=135;
                   break;
                   case 228:storyNum=135;
                   break;
//                   case 229 decent convo with drag dad
//                   case 230 spear break
                   case 231:storyNum=233;
                   break;
                   case 232:storyNum=36;
                   break;
                   case 233:storyNum=234;
                   break;
                 }

               });

    },
          ),
        ),
        ),
        Expanded(

          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.brown,
              textColor: Colors.white,
              child: Text(dialog2[storyNum],style: GoogleFonts.medievalSharp(textStyle:TextStyle(color: Colors.white,), ) ),
              onPressed: (){
                setState(() {
                  switch(storyNum){
                    case 0:storyNum=2;
                    backno=4;
                           break;
                    case 2:exit(0);
                            break;
                    case 1:storyNum=4;
                           break;
                    case 3:storyNum=4;
                            break;
                    case 4:storyNum=6;
                    backno=7;
                           break;
                    case 5:storyNum=8;
                           break;
                    case 8:exit(0);
                            break;
                    case 6:storyNum=8;
                            break;
                    case 9:exit(0);
                           break;
                    case 7:storyNum=10;
                           break;
                    case 10:storyNum=11;
                           break;
                    case 11:storyNum=13;
                            break;
                    case 12:storyNum=57;
                             break;
                    case 13:storyNum=15;
                            break;
                    case 14:storyNum=22;
                           break;
                    case 15:storyNum=22;
                           break;
                    case 17:exit(0);
                           break;
                    case 16:storyNum=24;
                           break;
                    case 20:exit(0);
                             break;
                    case 19:storyNum=21;
                             break;
                    case 22:storyNum=24;
                          break;
                    case 26:storyNum=28;
                           break;
                    case 28:exit(0);
                            break;
                    case 29:exit(0);
                            break;
                    case 30:exit(0);
                           break;
                    case 32:exit(0);
                           break;
                    case 31:storyNum=33;
                           break;
                    case 33:storyNum=34;
                            break;
                    case 35:exit(0);
                            break;
                    case 36:exit(0);
                            break;
                    case 37:storyNum=38;
                           break;
                    case 38:storyNum=39;
                          break;
                    case 40:exit(0);
                            break;
                    case 39:storyNum=41;
                            break;
                    case 41:storyNum=42;
                            break;

                    case 43:storyNum=44;
                           break;
                    case 44:storyNum=45;
                            break;
                    case 45:storyNum=46;

                            break;
                    case 46:storyNum=47;
                    friend=1;
                             break;
                    case 47:storyNum=48;
                             break;
                    case 48:exit(0);
                           break;
                    case 49:exit(0);
                           break;
                    case 50:storyNum=24;
                            break;
                    case 51:exit(0);
                            break;
                    case 52:exit(0);
                          break;
                    case 53:exit(0);
                            break;
                    case 54:exit(0);
                            break;
                    case 42:storyNum=56;
                           break;
                    case 47:storyNum=23;
                            break;
                    case 55:exit(0);
                            break;
                    case 56:exit(0);
                            break;
                    case 57:storyNum=13;
                            break;
                    case 58:exit(0);
                    break;
                    case 59:exit(0);
                    break;
                    case 60:exit(0);
                    break;
                    case 24:storyNum=61;
                    break;
                    case 61:storyNum=62;
                    break;
                    case 62:exit(0);
                    break;
                    case 63:storyNum=24;
                    break;
                    case 64:exit(0);
                    break;
                    case 25:storyNum=65;
                            break;
                    case 66:exit(0);
                    break;
                    case 65:storyNum=67;
                    break;
                    case 67:exit(0);
                    break;
                    case 68:storyNum=4;
                    break;
                    case 70:exit(0);
                    break;
                    case 69:storyNum=71;
                    break;
                    case 72:exit(0);
                    break;
                    case 71:storyNum=73;
                    break;
                    case 73:storyNum=4;
                    break;
                    case 74:storyNum=11;
                    break;
                    case 75:storyNum=11;
                    break;
                    case 76:storyNum=77;
                    break;
                    case 78:exit(0);
                    break;
                    case 79:storyNum=80;
                    break;
                    case 80:exit(0);
                    break;
                    case 82:exit(0);
                    break;
                    case 77:storyNum=83;
                    break;
                    case 83:exit(0);
                    break;
                    case 81:storyNum=85;
                    break;
                    case 87:storyNum=88;
                    wizard=1;
                    break;
                    case 88:exit(0);
                    break;
                    case 89:storyNum=84;
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    dragHealth.add(Icon(Icons.favorite, color: Colors.red,),);
                    break;
                    case 90:exit(0);
                    break;
                    case 85:storyNum=91;
                    break;
                    case 91:exit(0);
                    break;
                    case 86:storyNum=91;
                    break;
                    case 34:storyNum=92;
                    break;
                    case 92:exit(0);
                    break;
                    case 84:storyNum=93;
                    break;
                    case 95:exit(0);
                    break;
                    case 96:exit(0);
                    break;
                    case 94:storyNum=97;
                    break;
                    case 98:exit(0);
                    break;
                    case 93:if(teleport==1)
                         storyNum=99;
                      else
                         storyNum=100;
                    break;
                    case 99:exit(0);
                    break;
                    case 100:storyNum=101;
                    dragHealth.removeLast();
                    dragHealth.removeLast();
                    break;
                    case 101:exit(0);
                    break;
                    case 103:exit(0);
                    break;
                    case 102:if(sword==1)
                      storyNum=104;
                     else if(teleport==1)
                        storyNum=105;
                     else if(time==1)
                       storyNum=106;
                     else
                       storyNum=107;
                    break;
                    case 104:exit(0);
                    break;
                    case 105:exit(0);
                    break;
                    case 106:exit(0);
                    break;
                    case 107:exit(0);
                    break;
                    case 108:exit(0);
                    break;
                    case 110:if(teleport==1)
                          storyNum=111;
                    else
                       storyNum=112;
                    break;
                    case 111:exit(0);
                    break;
                    case 112:exit(0);
                    break;
                    case 113:exit(0);
                    break;
                    case 115:exit(0);
                    break;
                    case 114:storyNum=116;
                    break;
                    case 116:exit(0);
                    break;
                    case 117:exit(0);
                    break;
                    case 118:exit(0);
                    break;
                    case 97:storyNum=119;
                    break;
                    case 119:exit(0);
                    break;
                    case 109:if(imprison==1)
                       storyNum=120;
                    else if(time==1)
                      storyNum=121;
                    else
                      storyNum=122;
                    break;
                    case 120:exit(0);
                    break;
                    case 121:exit(0);
                    break;
                    case 122:exit(0);
                    break;
                    case 123:exit(0);
                    break;
                    case 125:exit(0);
                    break;
                    case 126:exit(0);
                    break;
                    case 124:storyNum=127;
                    dragHealth.removeLast();
                    dragHealth.removeLast();
                    dragHealth.removeLast();
                    dragHealth.removeLast();
                    break;
                    case 127:storyNum=128;
                    dragHealth.clear();
                    break;
                    case 128:exit(0);
                    break;
                    case 130:exit(0);
                    break;
                    case 129:storyNum=132;
                    break;
                    case 131:exit(0);
                    break;
                    case 132:exit(0);
                    break;
                    case 133:storyNum=134;
                    break;
                    case 134:exit(0);
                    break;
                    case 135:exit(0);
                    break;
                    case 136:exit(0);
                    break;
                    case 137:exit(0);
                    break;
                    case 139:exit(0);
                    break;
                    case 138:storyNum=140;
                    break;
                    case 140:exit(0);
                    break;
                    case 141:storyNum=142;
                    break;
                    case 142:storyNum=143;
                    break;
                    case 144:exit(0);
                    break;
                    case 145:storyNum=151;
                    backno=8;
                    break;
                    case 143:storyNum=148;
                    backno=3;
                    coins+=900;
                    StatusAlert.show(
                      context,
                      duration: Duration(seconds: 2),
                      title: 'Success',
                      subtitle: 'You just received 900 coins',
                      configuration: IconConfiguration(icon: Icons.done),);
                    break;
                    case 146:storyNum=151;
                    backno=8;
                    break;
                    case 147:exit(0);
                    break;
                    case 148:if(coins<800){
                      storyNum=149;
                      backno=5;}
                    else{
                      storyNum=150;
                      twoHandedSword=1;
                      coins=coins-800;
                      StatusAlert.show(
                        context,
                        duration: Duration(seconds: 2),
                        title: 'Success',
                        subtitle: 'You just purchased a two handed sword',
                        configuration: IconConfiguration(icon: Icons.done),);}
                    break;
                    case 149:exit(0);
                    break;
                    case 150:if(coins<700)
                      storyNum=149;
                    else{
                      storyNum=1;
                      backno=2;
                    coins=coins-700;
                    predator=1;
                      StatusAlert.show(
                        context,
                        duration: Duration(seconds: 2),
                        title: 'Success',
                        subtitle: 'You just purchased a predator bow',
                        configuration: IconConfiguration(icon: Icons.done),);}
                    break;
                    case 151:storyNum=152;
                    break;

                    case 153:exit(0);
                    break;
                    case 152:storyNum=154;
                    break;
                    case 154:storyNum=155;
                    break;
                    case 155:exit(0);
                    break;
                    case 156:storyNum=157;
                    break;
                    case 157:exit(0);
                    break;
                    case 158:exit(0);
                    break;
                    case 159:exit(0);
                    break;
                    case 160:storyNum=161;
                    StatusAlert.show(
                      context,
                      duration: Duration(seconds: 2),
                      title: 'Success',
                      subtitle: 'You just received 2000 coins',
                      configuration: IconConfiguration(icon: Icons.attach_money),);
                    coins+=2000;
                    break;
                    case 161:storyNum=163;
                    break;
                    case 162:exit(0);
                    break;
                    case 164:storyNum=166;
                    break;
                    case 163: storyNum=177;
                    break;
                    case 165:storyNum=177;
                    break;
                    case 166:storyNum=177;
                    break;
                    case 167:storyNum=177;
                    break;
                  case 168:exit(0);
                  break;
                    case 169:exit(0);
                    break;
                    case 170:storyNum=172;
                    method=1;
                    break;
                    case 171:storyNum=172;
                    method=1;
                    break;
                    case 172:storyNum=173;
                    break;
                    case 173:storyNum=174;
                    backno=9;
                    break;
                    case 174:exit(0);
                    break;
                    case 175:exit(0);
                    break;
                    case 176:if(coins>=600){storyNum=174;
                    backno=9;
                    StatusAlert.show(
                      context,
                      duration: Duration(seconds: 1),
                      title: 'Success',
                      subtitle: 'You succesfully purchased a spear',
                      configuration: IconConfiguration(icon: Icons.done_outline),);
                    spear=1;
                    coins-=600;}
                    else{
                      storyNum=178;
                      backno=9;
                  }
                    break;
                    case 177:if(coins>=800){storyNum=174;
                    backno=9;
                    StatusAlert.show(
                      context,
                      duration: Duration(seconds: 1),
                      title: 'Success',
                      subtitle: 'You succesfully purchased a spear',
                      configuration: IconConfiguration(icon: Icons.done_outline),);
                    spear=1;
                    coins-=800;}
                    else{
                      storyNum=178;
                      backno=9;
                    }
                    break;
                    case 178:exit(0);
                    break;
                    case 179:exit(0);
                    break;
                    case 180:exit(0);
                    break;
                    case 181:storyNum=182;
                    break;
                    case 182:exit(0);
                    break;
                    case 183:exit(0);
                    break;
                    case 185:exit(0);
                    break;
                    case 184:storyNum=186;
                    break;
                    case 186:storyNum=187;
                    break;
                    case 187:exit(0);
                    break;
                    case 189:exit(0);
                    break;
                    case 188:storyNum=190;
                    gun=1;
                    break;
                    case 190:exit(0);
                    break;
                    case 191:exit(0);
                    break;
                    case 192:storyNum=210;
                    break;
                    case 193:storyNum=210;
                    break;
                    case 194:storyNum=195;
                    break;
                    case 195:storyNum=195;
                    break;
                    case 197:exit(0);
                    break;
                    case 198:storyNum=199;
                    break;
                    case 199:exit(0);
                    break;
                    case 201:exit(0);
                    break;
                    case 200:storyNum=202;
                    break;
                    case 202:exit(0);
                    break;
                    case 203:exit(0);
                    break;
                    case 196:storyNum=204;
                    break;
                    case 205:exit(0);
                    break;
                    case 206:storyNum=176;
                    break;
                    case 204:storyNum=207;
                    break;
                    case 207:storyNum=176;
                    break;
                    case 208:storyNum=209;
                    break;
                    case 209:exit(0);
                    break;
                    case 210:exit(0);
                    break;
                    case 211:storyNum=212;
                    break;
                    case 212:exit(0);
                    break;
                    case 213:exit(0);
                    break;
                    case 214:exit(0);
                    break;
                    case 215:storyNum=216;
                    break;
                    case 216:exit(0);
                    break;
                    case 217:storyNum=222;
                    dragHealth.removeLast();
                    dragHealth.removeLast();
                    dragHealth.removeLast();
                    break;
                    case 219:exit(0);
                    break;
                    case 220:exit(0);
                    break;
                    case 221:exit(0);
                    break;
                    case 222:exit(0);
                    break;
                    case 223:exit(0);
                    break;
                    case 224:storyNum=225;
                    break;
                    case 225:exit(0);
                    break;
                    case 226:exit(0);
                    break;
                    case 227:exit(0);
                    break;
                    case 228:exit(0);
                    break;
                    case 229:storyNum=230;
                    break;
                    case 230:storyNum=231;
                    break;
                    case 231:storyNum=232;
                    break;
                    case 232:exit(0);
                    break;
                    case 233:storyNum=234;
                    break;


                  }
                  


                });
              },
            )
          ),
        ),

        Row(
          children: dragHealth,
        ),
        Container(
          child: Center(child: Text('$coins coins',style: GoogleFonts.medievalSharp(textStyle:TextStyle(color: Colors.white,), )),
        ),
        ),
    ],
    )
    )
        )
    );
  }
}


