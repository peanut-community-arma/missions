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

private _situation = ["diary", ["Shooting notes","
<br/>
<font size='18'>SITUATION</font>
<br/>
10 AUG 2029. The island nation of Altis has been under huge international sanctions ever since the coup. Officially, the entire country is deemed unsafe for travelers because of the threat of kidnapping by local gangs and corrupt police. But that just means it's the ideal place to stage your comebacks - to propel your social media careers to never-before-seen heights. No one can ever accuse you of being derivative - look at you doing Real Journalism, getting into the shit, and catching 100% original footage! And besides, it's not like anyone would ever actually shoot you... right?
<br/><br/>

<font size='18'>ENEMY FORCES</font>
<br/>
You're pretty sure you've bribed enough people that they wouldn't seriously hurt you.
<br/><br/>

<font size='18'>FRIENDLY FORCES</font>
<br/>
Three pals, one camera crew, and the gang of fixers that insurance insisted that you hire. Your camera crew have been with you throughout your careers and are constantly anxious but mean well. You don't know what the tipping culture is here but it's generally smart to promise lots of tips to the fixers.
<br/><br/>
The following vehicles are available for use:<br/>
- 1x Offroad (Production)<br/>
- 1x Volkswagen Golf, decorated (Streamers)<br/>
- 1x Jeep Wrangler (Apex DLC; Security Chief)<br/>
- 3x Van (one per fixer squad)
"]];

/* ================================================================================
	MISSION
	 - Describe any objectives that the team is expected to complete.
	 - Summarize(!) the overall task. This MUST be short and clear.
*/

private _mission = ["diary", ["Shooting plan","
<br/>
<font size='18'>SHOOT OBJECTIVES</font>
<br/>
- Finish filming three on-location scenes: by the <marker name='mk_galati'>Galati kindergarten</marker>, the <marker name='mk_abdera'>historic church in Abdera</marker>, and the <marker name='mk_beach'>beach at Krya Nera</marker>. So long as you get the spirit of the scene down, you're fine. Ad bits can be done separately at any location.<br/>
- Avoid death or serious injury<br/>

<br/>
<font size='18'>STREAMER CHALLENGE LIST</font>
<br/>
Production is in charge of 'smoothing over' these demands with security i.e. blatant lying, stalling, or otherwise buying time for these to be done. You may have to remind them of this. DON'T TELL THEM WHAT YOU'RE DOING, it's more fun this way<br/>
- Fly the planes at the <marker name='mk_airstrip'>dirt airstrip</marker><br/>
- Get a hold of some guns and fire them on-camera to look hardcore<br/>
- These scripts were written by Production and are boring as hell, jazz them up with improv<br/>
- Sneak into the <marker name='mk_helo'>military base</marker> and joyride their helicopter<br/>
<br/>
"]];

/* ================================================================================
	EXECUTION
	 - Provide an outline as to what the commander of the player's command might give.
*/

private _execution = ["diary", ["Private streamer notes","
<br/>
<font size='18'>TODAY'S CONTROVERSY</font>
<br/>
Pick one each. Remember, you're all incredibly apologetic about whatever it was, and want to prove you have matured and grown past that.
<br/>
- Got caught doing undisclosed ads<br/>
- Heated Gamer Moment<br/>
- Massive, blatant plagiarism<br/>
- Got caught cheating in League, begging for shorter suspension
<br/><br/>

<font size='18'>AD BITS</font>
<br/>
If a script doesn't mention it, insert one wherever feels appropriate.
<br/><br/>
Today's Adventure is Sponsored by RoamMore Travel!
<br/>
A big thanks to RoamMore Travel for making today's exploration possible! If you're a wanderer at heart, RoamMore Travel specializes in crafting unforgettable getaways. From dreamy destinations to personalized itineraries, they'll turn your travel dreams into reality. Visit their site and plan your next adventure with RoamMore Travel!
<br/><br/>
Powered by FitFlex: Elevate Your Fitness Game!
<br/>
A special shoutout to FitFlex for supporting this video! Whether you're hitting the gym, jogging in the park, or just staying active, FitFlex offers a range of fitness essentials to keep you on track. From gear to nutrition, they're your fitness ally. Head over to FitFlex and make your journey to a healthier you, easier!
<br/><br/>
Introducing TechTrove!
<br/>
Hey tech enthusiasts! Get ready for the ultimate gadget journey with TechTrove. From cutting-edge smartphones to gaming gear that'll level up your skills, we're your one-stop shop for unbiased reviews and in-depth analysis. Join our community and stay ahead in the tech game. Hit that subscribe button now and never miss a tech-tastic update!
<br/><br/>
Team Up with SquadBoost Energy Drinks for Unstoppable Gaming!
<br/>
Fuel up and game on with SquadBoost Energy Drinks! Designed for gamers, by gamers, these energy-packed beverages will keep you in the zone for those marathon gaming sessions. Say goodbye to sluggish gameplay and hello to the ultimate gaming boost. Get your SquadBoost now and let's conquer together!
<br/><br/>
Get Ready to Dominate with PowerPlay Accessories!
<br/>
Hey gamers, gear up for victory with PowerPlay Accessories! From precision gaming mice to pro-level keyboards, PowerPlay's got the tools you need to conquer any virtual battlefield. Elevate your gameplay and take that winning shot. Head over to PowerPlay now and level up your gaming arsenal!
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