# Start
# You are a wrestler in the making
# And before you become a actual wrestler
# Answer the questions below


# What is your name? @name
# What is your stage name? @stage_name

# #Choices
# Would you like to start in the big leagues (WWE OR TNA YOU CHOOSE LATER)
# Or the indies, (can be a real company or fictional)



# #Answer 1 Big Leagues
# More story: OK so 2 big leagues have offered you a contract, who will you choose?
# WWE is PG, TNA is TV-14

# Next choice:WWE or TNA




# #Answer 2 Indies
# More story: You are going to be hitting people with chairs everyday. Good for you. You are going to have to make a name for yourself, #{@stage_name}
# Next choice: You can choose the name of the promotion (Real or fictional)

class ChunkOfStory
	def initialize(label)
		@label      = label
		@story_text = story_text
		@question   = question
		@choices    = choices
	end
	attr_reader :label
	attr_accessor :story_text
	attr_accessor :question
	attr_accessor :choices

	def display
		puts @story_text
		puts
		puts @question
		present_choices
		next_part = @choices[get_answer-1]
		next_part.display
	end

	def present_choices
		index = 0
		@choices.each do |choice|
			index += 1
            puts "#{index}. #{choice.label}"
		end
	end

	def get_answer
		answer = gets.chomp.to_i
	end

end

dummy = ChunkOfStory.new "This part of the story is not written yet."
start = ChunkOfStory.new "Story Start"
big_leagues = ChunkOfStory.new "Big Leagues"
indie = ChunkOfStory.new "Indies"
wwe = ChunkOfStory.new "WWE"
tna = ChunkOfStory.new "tna"
heeltna = ChunkOfStory.new "Heel"
facetna = ChunkOfStory.new "Face"

knowaboutyourgimmickfacetnadebutbackstage = ChunkOfStory.new "Know your Role, And gimmick."
promodebuttna = ChunkOfStory.new "Get a promo debut, also get more mic skills than Roman Reigns."
matchdebuttna = ChunkOfStory.new "Match Debut"
wwetag = ChunkOfStory.new "Same as wwe but in a tag team."
tnatag = ChunkOfStory.new "Same as tna but in a tag team"
facewwedebut = ChunkOfStory.new "Be a WWE superstar, with style. AS A FACE"
heelwwedebut = ChunkOfStory.new "Be a WWE superstar, with style. AS A HEEL"
facewwedebuttag = ChunkOfStory.new "Be a face, in a tag team."
heelwwedebuttag = ChunkOfStory.new "Be a heel, in a tag team."
customcompany = ChunkOfStory.new "Be in a custom company and sign the contract"
customcompanytag = ChunkOfStory.new "Be in a custom company with a tag partner"
facecustomcompanydebut = ChunkOfStory.new "Be in a custom company as a face"
heelcustomcompanydebut = ChunkOfStory.new "Be in a custom company as a HEEL"
heelindiesdebut = ChunkOfStory.new "Be in the indies, as a heel."
faceindiesdebut = ChunkOfStory.new "Be in the indies, as a face"
faceindiesdebutinterviewA = ChunkOfStory.new "Stay in character as a face"
faceindiesdebutinterviewB = ChunkOfStory.new "Turn heel."
faceindiesdebutinterview2A = ChunkOfStory.new "Stay face"
faceindiesdebutinterview2B = ChunkOfStory.new "Turn heel!!!!"
royalrumblewwedebut1a = ChunkOfStory.new "Debut in the ROYAL RUMBLE MATCH!!!! as a face!!!!"
rawdebut1a = ChunkOfStory.new "DEBUT IN RAW!!!!! as a face...."
smackdownlivedebut1a = ChunkOfStory.new "Debut in SmackDown! Live. as a face."
nxtdebut1a = ChunkOfStory.new "Debut in Developmental territory, NXT, as a face!"
nxtroyalrumblewwedebut1a = ChunkOfStory.new "Be the first NXT wrestler to Participate in the Royal Rumble Match"
rawroyalrumblewwedebut = ChunkOfStory.new "Be a raw competitor that competes in the royal rumble.."
smackdownliveroyalrumblewwedebut = ChunkOfStory.new "Be a SmackDown Live competitor that will compete in the royal Rumble."
smackdownliveroyalrumblewwedebut2a = ChunkOfStory.new "Keep it a surprise"
smackdownliveroyalrumblewwedebut2b = ChunkOfStory.new "Tease it, the fans will keep on speculating on will you debut or not."
heelcustomcompany1A = ChunkOfStory.new "Pick a fight"
heelcustomcompany1B = ChunkOfStory.new "Get to know about your gimmick"
facecustomcompanydebut1A = ChunkOfStory.new "Get to know about your gimmick"
facecustomcompanydebut1B = ChunkOfStory.new "Pick a fight"
smackdownliveroyalrumblewwedebut3Romanreigns = ChunkOfStory.new "Roman Reigns."
smackdownliveroyalrumblewwedebut3Chrisjericho = ChunkOfStory.new "Chris Jericho BABYYYYYY!"











puts "What is your name"
name = gets
puts "You are about to enter the world of wrestling, if you want to step foot in it then you will be remembered with your ring name, not as #{name}"
puts "So speaking about ring names, What is your Ring name?"
ring_name = gets
puts "A catchphrase is a thing that you like to say?"
puts "What is your catchphrase?"
catchphrase = gets
puts "What is your insult?"
insult = gets
puts "What is your theme song"
theme_song = gets
puts "What are the lyrics of your theme song"
lyrics_of_theme_song = gets
puts "The Indie Circuit is where most people start, if you get promoted to the big leagues maybe you need to change your gimmick."
puts "If you decide to be in the Indies, What will the company be called?"
company_indies = gets
puts "The big leagues are the places where very few people start, it is the main place of wrestling"
puts "If you decide to be in the big leagues, you can choose either real or fictional companies, what will the fictional one be called?"
company_big_leagues = gets
puts "If you want to be in a team, what will it be called. if you want to be a singles competitor then just put enter and select
the choice that you don't want to be in a tag team."
team_name = gets
puts "Who is your partner, just put a random name if you dont want to be in the tag team
and do the same thing as the last question told you."
partner_tag_first = gets
puts "Getting back to the fictional company, what will your boss be called?"
boss_name = gets
puts "who is the interviewer for the indies?"
interviewername = gets
puts "If you are a heel during your debut in indies or big leagues, who will be your rival?"
rival_name = gets
puts "but If you are a face during your debut in the indies or big leagues, who will be your rival?"
rival_name_face = gets
puts "Ok so lets get to the story"



start.story_text = "
You are a wrestler in the making
and before you become a actual wrestler."
start.question = "How will you begin your career?"
start.choices = [big_leagues, indie]


big_leagues.story_text = "Ok so there are 3 big leagues to choose from."
big_leagues.question = "Which will you choose? will you be singles or tag team at the beginning?"
big_leagues.choices = [wwe, tna, wwetag, tnatag, customcompany, customcompanytag]

wwetag.story_text = "Ok so you are in the team called #{team_name} with #{partner_tag_first}"
wwetag.question = "Will #{ring_name} (you) and #{partner_tag_first} be face or heel?"
wwetag.choices = [facewwedebuttag, heelwwedebuttag]

customcompany.story_text = "Ok so you are in #{company_big_leagues} and you are in singles competition. For now. so then you are about
to sign a contract with #{boss_name}, and you got a contract of 900K dollars, good for a start in the big leagues. "
customcompany.question = "Do you want to be a face or a heel?"
customcompany.choices = [facecustomcompanydebut, heelcustomcompanydebut]

heelcustomcompanydebut.story_text = "Ok so you are a heel and you are in the backstage. this is your first time ever in the backstage,
so as a heel you would have to stay in character."
heelcustomcompanydebut.question = "Do you want to pick a fight or get to know your gimmick"
heelcustomcompanydebut.choices = [heelcustomcompany1A, heelcustomcompany1B]

facecustomcompanydebut.story_text = "Ok so you are a face and you are in the backstage. this is your first time ever in the backstage, as a face
you would need to stay in character."
facecustomcompanydebut.question = "Would you like to know about your gimmick or would you like to pick a fight?"
facecustomcompanydebut.choices = [facecustomcompanydebut1A, facecustomcompanydebut1B]


indie.story_text =
"You are going to be hitting people with chairs everyday.
Good for you. You are going to have to make a name for yourself. You will be in #{company_indies}"
indie.question = "How will you impress the audience? Will you be face or heel?"
indie.choices = [faceindiesdebut, heelindiesdebut]


faceindiesdebut.story_text = "You will be face in the indies and you are in the backstage of #{company_indies} and you are
really enjoying it, so far you just arrived and you go take a interview with #{interviewername} "
faceindiesdebut.question = "Do you want to be yourself or be a heel"
faceindiesdebut.choices = [faceindiesdebutinterviewA, faceindiesdebutinterviewB]

faceindiesdebutinterviewA.story_text = "You start with saying, thank you #{interviewername}. It's my pleasure to be your
guest tonight. then #{interviewername} says thank you, he then asks when you will debut. you say, It's a secret. he laughs. then
he asks what do you think about the fans."
faceindiesdebutinterviewA.question = "Do you want to act face or heel with this question?"
faceindiesdebutinterviewA.choices = [faceindiesdebutinterview2A, faceindiesdebutinterview2B]

faceindiesdebutinterview2B.story_text = "You say, I think they are pathetic! They can boo me or cheer me during my debut! I don't care!
They can get outta here!"


wwe.story_text = "Now that you are in the WWE..."
wwe.question = "will you be a face or heel?"
wwe.choices = [facewwedebut, heelwwedebut]

facewwedebut.story_text = "Now you are in the WWE HQ and you shake Triple
H's Hand and you sign a contract with Triple H."
facewwedebut.question = "Do you want to debut in the Royal Rumble Match or in RAW,
SmackDown! Live, or NXT."
facewwedebut.choices = [royalrumblewwedebut1a, rawdebut1a, smackdownlivedebut1a, nxtdebut1a]

royalrumblewwedebut1a.story_text = "If you win the royal rumble, Then you punch your way to WrestleMania!!!! In the main event
which is a WORLD TITLE MATCH!!!!!!!"
royalrumblewwedebut1a.question = "What Brand will you be in, RAW or SmackDown! Live? or will you be
the first ever NXT superstar to be in the Royal Rumble and fight for the NXT Title at WrestleMania?
Your choice."
royalrumblewwedebut1a.choices = [nxtroyalrumblewwedebut1a, rawroyalrumblewwedebut, smackdownliveroyalrumblewwedebut]

smackdownliveroyalrumblewwedebut.story_text = "If you win the royal rumble in SmackDown live, then you will have a world heavyweight
championship title match against whoever is the champion at WrestleMania."
smackdownliveroyalrumblewwedebut.question =  "You will enter the rumble at no.3, Do you want to tease it, or keep it a surprise?"
smackdownliveroyalrumblewwedebut.choices = [smackdownliveroyalrumblewwedebut2a, smackdownliveroyalrumblewwedebut2b]

smackdownliveroyalrumblewwedebut2a.story_text = "Ok so you don't tease it, now number 3 entrant to the rumble is about to come out!!
5! 4! 3! 2! 1! then your theme hits, everyone is like who dat? when they see #{ring_name} on the titantron they went crazy!!! WOOOO!!!!!"
smackdownliveroyalrumblewwedebut2a.question = "Who do you want to try to eliminate first? this will also make a difference in who is your tag team partner and your first rival even though it is one versus all. "
smackdownliveroyalrumblewwedebut2a.choices = [smackdownliveroyalrumblewwedebut3Chrisjericho, smackdownliveroyalrumblewwedebut3Romanreigns]

tna.story_text = "Now that you are in TNA..."
tna.question = "Will you be a face or heel?"
tna.choices = [facetna, heeltna]

facetna.story_text = "Ok so then you are #{name} and you are in TNA. Good even though TNA is worse than WWE, They use the talent
wisely. now you are in The backstage."
facetna.question = "What will you do?"
facetna.choices = [dummy, knowaboutyourgimmickfacetnadebutbackstage]
knowaboutyourgimmickfacetnadebutbackstage.story_text = "OK so the gimmick manager told you this, Your ring name is #{ring_name} and you are a face.
your theme song is #{theme_song} and the lyrics are #{lyrics_of_theme_song} he also said, Do not swear in front of the camera, you will
get in big trouble if you do (like being fired. HAHAHA. or suspended. grins) you can only say PG or TV-14 swears. No F-Bomb or other TV-MA Swears"
knowaboutyourgimmickfacetnadebutbackstage.question = "Ok so now it is your turn, Do you want to debut in a match or a promo."
knowaboutyourgimmickfacetnadebutbackstage.choices = [matchdebuttna, promodebuttna]

start.display
