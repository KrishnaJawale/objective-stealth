/// @description Insert description here
// You can write your code in this editor
dialogue[0] = "Player: So whats the job, boss?";
dialogue[1] = "\nBoss: Listen up buddy. It’s simple. There’s a building I want you to get. Your gonna\nstart from the roof, the only safe start. Each floor only has a SINGLE POINT OF ENTRY\nto the next floor: an elevator, one on each floor, which are all heavily guarded. Not to mention\nthat the elevator won't work unless you flip a switch on the other side of the room.\nIt isn't going to be easy. The target is a breifcase with contains a mastercard.";
dialogue[2] = "\nPlayer: No Problem. Get in, kill all the guards, and moonwalk outta there!";
dialogue[3] = "\nBoss: You can’t moonwalk outta there ya idiot.";
dialogue[4] = "\nPlayer: I - I can’t?";
dialogue[5] = "\nBoss: Cause you can’t kill this time. This place has much more technologically\nadvanced security than what your used to.";
dialogue[6] = "\nPlayer: Alrighttt. Can I ask one more question?";
dialogue[7] = "\nBoss: No. Quit the chit chat and get working. Here’s a pistol, just in case \nyou run into some hot water.";
dialogue[8] = "\nPlayer: But boss! I always get a pistol. They shoot so slow. Can I \nat least get a machine gun this time?";
dialogue[9] = "\n. . .";
dialogue[10] = "\nBoss: WHY DO YOU ALWAYS ASK ME THAT?! GET OUTTA HERE! AND YOUR \nNOT EVEN GONNA GET A PISTOL THIS TIME! GET TO WORK!";

dialouge_drawn = "";

index = 0;

sentence = dialogue[index];

i = 1;
alarm[0] = 1;

go_to_next_sentence = false;

skipped_cutscene = false;

shake = false;

skip_cutscene = 0;