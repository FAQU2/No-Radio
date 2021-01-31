#include <sourcemod>
#include <sdktools>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = 
{
	name = "No radio",
	author = "FAQU",
	description = "Disables radio and ping commands"
};

public void OnPluginStart()
{
	AddCommandListener(Command_Radio, "radio");
	AddCommandListener(Command_Radio, "radio1");
	AddCommandListener(Command_Radio, "radio2");
	AddCommandListener(Command_Radio, "radio3");
	AddCommandListener(Command_Radio, "player_ping");
	AddCommandListener(Command_Radio, "chatwheel_ping");

	HookUserMessage(GetUserMessageId("RadioText"), Hook_Radio, true);
}

public Action Command_Radio(int client, const char[] command, int argc)
{
	return Plugin_Handled;
}

public Action Hook_Radio(UserMsg msg_id, BfRead msg, const int[] players, int playersNum, bool reliable, bool init)
{
	return Plugin_Handled;
}
