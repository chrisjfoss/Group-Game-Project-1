/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(textbox_obj))
{
	dlog = [];

	var rand_dialog = choose(0,1,2,3,4);

	if (rand_dialog==0)
	{
		dlog[0] = ["Ahoy traveler, welcome to Fort Endurance. Sorry for the state of the fort currently, it won't be like that for much time once the war is done.^1",dlog_continue];
		dlog[1] = ["If you want to join in, we will happily accept new troops into the volunteer corp. Hahaha!^0",dlog_goto];
	}
	else if (rand_dialog==1)
	{
		dlog[0] = ["Do you ever find explosions comforting? They are like lullabies to me.^0",dlog_goto];
	}
	else if (rand_dialog==2)
	{
		dlog[0] = ["I hope you stay long. This place is heaven. A perfect end to our long journey. Peace, truly.^0",dlog_goto];
	}
	else if (rand_dialog==3)
	{
		dlog[0] = ["You are a fighter it seems, you will fit in perfectly! We are soldiers unsurprisingly. Prisoners of war of a long forgotten war.^1",dlog_continue];
		dlog[1] = ["Our species lost but we didn't stop fighting but we were captured and sent here.^2",dlog_continue];
		dlog[2] = ["But as soldiers the fight never ends, you bring it with you. Hahaha! I am happy to keep fighting and doing what the cosmos has ordained for us.^0",dlog_goto];
	}
	else if (rand_dialog==4)
	{
		dlog[0] = ["We are showing the enemy what for! We will give our kin an honorable death!^0",dlog_goto];
	}
}

event_inherited();