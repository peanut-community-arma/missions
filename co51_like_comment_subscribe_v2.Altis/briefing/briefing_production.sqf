/* ================================================================================
	GENERAL BRIEFING NOTES
	 - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden use ' instead of ".
*/

/* ================================================================================
	SITUATION
	 - Outline of what is going on, where we are we and what has happened before the mission has started? This needs to contain any relevant background information.
	 - Draw attention to friendly and enemy forces in the area. The commander will make important decisions based off this information.
	 - Outline present weather conditions, players will typically assume that it is daylight with sunny weather.
*/

private _situation = ["diary", ["Situation","
<br/>
<font size='18'>SITUATION</font>
<br/>
10 AUG 2029. The island nation of Altis has been under huge international sanctions ever since the coup. Officially, the entire country is deemed unsafe for travelers because of the threat of kidnapping by local gangs and corrupt police. Naturally, this means that the talent thinks it's a great idea to shoot a bunch of promo videos in the middle of a barely-stabilized political red zone. And it's your job to make sure they look good doing it, while trying to get home in one piece.
<br/><br/>
Just another day in the life of the world's most stressed out Youtube crew. At least you get a controlling stake in the media company. You're the only ones who actually understand how serious the situation is - the Youtubers have their heads firmly up their ass, and the fixers are just in it for the money. You have to make sure this goes well, because like hell are you going to let yourselves get dragged down.
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
Whatever local AAF, police, and FIA presence are in the area. We're not talking serious hardware, the nastiest thing the locals have got are surplus small arms and a bunch of jeeps. But that's still plenty enough to kill a tourist.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to three Youtubers undergoing some kind of crisis, a harried production crew, and a crew of fixers who are more or less in the dark. You and the Youtubers know where the scenes will be, and you wrote their scripts. The fixers know the rough locations of the scenes but nothing else.
<br/><br/>
The following vehicles are available for use:<br/>
- 1x Offroad (Production) - four spare drones are in this car<br/>
- 1x Volkswagen Golf, decorated (Streamers)<br/>
- 1x Jeep Wrangler (Apex DLC; Security Chief)<br/>
- 3x Van (one per fixer squad)
"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Shooting Plan","
<br/>
Broadly speaking, your job is to keep the streamers more or less happy and not freaked out. The local fixers should be told that that they are in fact going to get paid, but not more than that just in case they are in cahoots with local gangs or received a better job offer, so please remind them that YOU'RE footing the bill. This is a dignified and serious job that no one respects.
<br/><br/>
Oh, and you've still got to get the shots.
<br/><br/>
<font size='18'>SHOOT OBJECTIVES</font>
<br/>
- Finish filming three on-location scenes: by the <marker name='mk_galati'>Galati kindergarten</marker>, the <marker name='mk_abdera'>historic church in Abdera</marker>, and the <marker name='mk_beach'>beach at Krya Nera</marker> (alternate positions in the bay can be chosen at will). Ad bits can be done separately at any location.<br/>
- Avoid death or serious injury<br/>

<br/>
<font size='18'>PRODUCTION/COMMS RULES</font>
<br/>
- Under no circumstances should the talent get their hands on real firearms<br/>
- The lead streamer had their aviation license suspended and should not be allowed within 100m of a plane<br/>
- Try to keep to schedule, do a quick shoot and get out fast<br/>
- STICK TO THE SCRIPT, no one needs another heated streamer moment<br/>
<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Camera guides","
<br/>
<font size='18'>SHOT COMPOSITION</font>
<br/>
In addition to primary shots of the talent performing their streams, use your cameras and drone camera to shoot some b-roll for the edit later. If necessary you can suggest that people move for ideal camera composition. You went to USC for this shit, come on.
<br/><br/>

<font size='18'>SHOOT SEQUENCING</font>
<br/>
- Block (position) all the key players in the scene<br/>
- Make sure wardrobe is on point and people are dressed appropriately. Procure items if necessary.<br/>
- Vary the closeness of shots (close-up, medium shot, long shot) to give yourself edit options later<br/>
- If you feel a take wasn't good enough, redo small sections. You don't have much of a reshoot budget, so limit to one or two lines per reshoot. You can always use AI to patch it over later.
<br/><br/>
"]];

private _galati = ["diary", ["SCRIPT - Galati","
<br/>
[Opening shot: Streamer standing against the picturesque backdrop of the village of Galati.]
<br/><br/>
Streamer: (upbeat) Hey there, folks! Welcome back to my channel. Today, we're diving into something incredibly special that's been close to my heart. As you might know, I'm all about exploring unique places around the world. Well, a while ago, destiny led me to the charming village of Galati in Altis, and let me tell you, it's a tale worth sharing.
<br/><br/>
[Get footage of STREAMER taking in the village's scenic beauty.]
<br/><br/>
Streamer: (enthusiastically) Galati is more than just stunning landscapes; it's a place filled with warmth, love, and an unwavering spirit. During my stay, I had the privilege of getting to know the local community and their wonderful kindergarten. The bond they share with their little ones is truly heartwarming.
<br/><br/>
Streamer: (reflectively) However, I also learned about the challenges this kindergarten faced. The infrastructure needed some TLC, and the children lacked certain resources that we often take for granted. It was in those moments that I felt a calling to make a difference.
<br/><br/>
[Cut to STREAMER engaged in a conversation with the village kindergarten teacher, discussing plans and sharing a genuine connection.]
<br/><br/>
Streamer: (passionately) And that's where you, my incredible viewers, come in. I know that you all are down to be a part of this remarkable journey. If you're interested in backing the Galati kindergarten or similar projects, know that even the tiniest act of kindness can set in motion waves of transformation. Hit up my donation links in the bio below, and a huge shoutout to our sponsor for the segment! <INSERT AD BIT> 
<br/><br/>
Together: Let's continue crafting a brighter world, one step at a time.
"]];

private _abdera = ["diary", ["SCRIPT - Abdera","
<br/>
Streamer: (enthusiastically) Hey there, fellow gamers! Today, we're taking a little break from our virtual adventures to dive into a real-world treasure right here in Altis. Yeah, you heard me right – we're visiting the town of Abdera, and there's something more than just pixels and polygons waiting for us.
<br/><br/>
[Shot of the streamer standing in front of the historic church in Abdera.]
<br/><br/>
Streamer: (excitedly) Check out this gem – the historic church that stands tall amidst the quaint town of Abdera. Now, you might be thinking, 'Hey, this isn't a dungeon or a dragon's lair!' And you're right, but trust me, this place has an epic tale of its own.
<br/><br/>
[The footage zooms in on the church's intricate architecture and details.]
<br/><br/>
Streamer: (engagingly) As gamers, we appreciate the artistry that goes into creating immersive worlds, right? Well, this church is like a real-life quest, filled with its own history and secrets. The architecture, those awe-inspiring frescoes, and even the peaceful courtyard – they're all part of the story.
<br/><br/>
Streamer: (playfully) Now, don't worry, I'm not turning into a history channel. But imagine the battles and triumphs this place has witnessed over time. It's like leveling up through the ages, and this church stands as a testament to the people who crafted it.
<br/><br/>
[The footage shows the streamers walking respectfully through the church.]
<br/><br/>
Streamer: (energetically) So, why am I telling you all this? Because, my fellow gamers, just like in our virtual quests, exploring the real world can be an adventure too. And you never know where you'll find inspiration for your next epic gaming masterpiece.
<br/><br/>
Streamer: (enthusiastically) So there you have it – the historic church in Abdera, a piece of Altis' history that's waiting to be uncovered. Now, I know you're itching to get back to your favorite games, but remember, the world outside can be just as enchanting.
"]];

private _beach = ["diary", ["SCRIPT - Krya Nera","
[Scenic shots of the beach in Krya Nera, capturing the waves, the sand, and the vibrant atmosphere.]
<br/><br/>
Tech Vlogger: (enthusiastically) Hey there, tech enthusiasts! It's [NAME] here, and today, we're stepping away from the screens and delving into a different kind of experience. Now, I know what you're thinking – '[NAME], you're all about gadgets and gizmos, what's this new adventure?'
<br/><br/>
Tech Vlogger: (smiling) I'll tell you what it is – a day at the captivating beach in Krya Nera! That's right, I've put my tech arsenal on standby and swapped out cables for sand for a day of sun, surf, and yes, a bit of tech too.
<br/><br/>
[The footage shows the vlogger trying out tech-related beach activities, like capturing underwater shots with a waterproof camera and testing solar-powered chargers.]
<br/><br/>
Tech Vlogger: (excitedly) Can you believe it? I got to explore the potential of waterproof tech while swimming among the waves, and I even took solar-powered chargers for a spin under the sun. Tech doesn't just belong in labs; it can be out here too, enhancing our outdoor experiences.
<br/><br/>
[The footage shifts to capture the sunset over the beach, painting the sky in hues of orange and pink.]
<br/><br/>
Tech Vlogger: (reflecting) As the sun dipped below the horizon, casting its warm hues over the beach, I realized that there's a harmony between technology and nature. It's not always about choosing one over the other – sometimes, it's about finding ways they can complement each other.
<br/><br/>
Tech Vlogger: (grinning) And hey, I can't help but think of you, my amazing long-time audience, who've been with me on this tech journey. You inspire me to push the boundaries of innovation and find ways tech can enhance our lives, even beyond the digital realm.
<br/><br/>
[The footage shows the streamers interacting with people at the beach, showcasing their tech-inspired beach activities.]
<br/><br/>
Tech Vlogger: (grateful) So, to all of you who love to geek out with me, thank you for your continued support. Together, we're proving that tech doesn't have to be confined within four walls.
"]];

/* ================================================================================
	ADMINISTRATION
	 - Outline of logistics: available resources (equipment/vehicles) and ideally a summary of their capabilities.
	 - Outline of how to use any mission specific features/scripts.
	 - Seating capacities of each vehicle available for use.
*/

private _administration = ["diary", ["OOC mission notes","
<br/>
We're all here to actually have fun with each other, and while the mission is set up to be semi-antagonistic, try not to push unless you KNOW for a fact that people are comfortable and in on the joke. Remember that different groups of players have vastly different 'objectives' due to the way the mission is set up - let people have their fun, but also remember that the mission will almost literally grind to a halt if you don't give a little and compromise.
"]];

player createDiaryRecord _administration;
player createDiaryRecord _beach;
player createDiaryRecord _abdera;
player createDiaryRecord _galati;
player createDiaryRecord _execution;
player createDiaryRecord _mission;
player createDiaryRecord _situation;