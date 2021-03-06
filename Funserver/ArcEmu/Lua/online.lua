local MSG_ONLINE = "#server info"

function ShowPlayersOnlineOnChat(event, plr, message, type, language)
if(message == MSG_ONLINE) then
			local Lua = GetLuaEngine()
			local LuaR = GetLuaEngineVersion()
			local Players = GetPlayersInWorld()
			local Time = GetGameTime()
			local Size = #Players
			local Revision =18
			if (Size == 1) then
					plr:SendBroadcastMessage("|cFFFFA500[Server Owner]|cFF00FFFFInfinityGaming Owner: |cFFFFA500Nexus")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFLua Engine: |cFFFFA500"..Lua.."")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFLua Engine Version: |cFFFFA500"..LuaR.." |cFF00FFFF0current LuaHypArc version.")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFUptime is: |cFFFFA500"..Time.." |cFF00FFFFseconds.")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFInfinityEmu Revision: |cFFFFA500"..Revision.." |cFF00FFFFalways being updated.")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFThere is |cFFFFA500"..Size.." |cFF00FFFFplayers online.")
					plr:SendBroadcastMessage("|cffFF0000[Reminder]|cffFFFF05Don't forget to support our server by |cffFF0000voting|cffFFFF05 and |cffFF0000donating|cffFFFF05 on |cffFF0000www.infinitygaming.org!")
				else
					plr:SendBroadcastMessage("|cFFFFA500[Server Owner]|cFF00FFFFInfinityGaming Owner: |cFFFFA500Nexus")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFLua Engine: |cFFFFA500"..Lua.."")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFLua Engine Version: |cFFFFA500"..LuaR.." |cFF00FFFFcurrent LuaHypArc version.")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFUptime is: |cFFFFA500"..Time.." |cFF00FFFFseconds.")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFInfinityEmu Revision: |cFFFFA500"..Revision.." |cFF00FFFFalways being updated.")
					plr:SendBroadcastMessage("|cFFFFA500[Server Info]|cFF00FFFFThere is |cFFFFA500"..Size.." |cFF00FFFFplayers online.")
					plr:SendBroadcastMessage("|cffFF0000[Reminder]|cffFFFF05Don't forget to support our server by |cffFF0000voting|cffFFFF05 and |cffFF0000donating|cffFFFF05 on |cffFF0000www.infinitygaming.org!")
				end
		end
end

RegisterServerHook(16, "ShowPlayersOnlineOnChat")