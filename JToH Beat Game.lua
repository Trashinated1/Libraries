-- join ring 1 or zone 1 and wait like 10 mins to complete that whole world

function notif(s,d)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="JToH";Text=s;Duration=d or 3})
end
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Parent
print("HERE")
notif("Starting soon")
wait(2)
queue_on_teleport(game:HttpGet("https://raw.githubusercontent.com/plusgiant5/Libraries/main/JToH%20Beat%20Game.lua"))
local plr = game.Players.LocalPlayer
local char = plr.Character
local head = char.Head
local ready = Instance.new("BindableEvent")
function antitp()
	char = plr.Character
	head = char.HumanoidRootPart
	local oldcf = head.CFrame
	local ogcf = head.CFrame
	head.Changed:Connect(function()
		if (head.Position-oldcf.p).magnitude > 25 then
			char:SetPrimaryPartCFrame(ogcf)
			ready:Fire()
		end
		oldcf = head.CFrame
	end)
end
antitp()
local bids = require(plr.PlayerScripts.PlayerScripts.SignColorScript.BadgeIds)
local comp = game.ReplicatedStorage.RequestTowerData:InvokeServer()
local todo = {}
for _,v in pairs(workspace:FindFirstChild("WinPads",true):GetChildren()) do
	if v:IsA("BasePart") and not comp[v.BadgeID.Value] and not string.find(v.TowerId.Value,"Co") and workspace.Teleporters:FindFirstChild(v.TowerId.Value) then
		todo[#todo+1] = v
	end
end
for _,v in pairs(todo) do
	local t = v.TowerId.Value
	if not comp[v.BadgeID.Value] then
		notif("Doing "..t)
		firetouchinterest(workspace.Teleporters[t].Teleporter.TPFRAME,head,0)
		wait(5)
		wait()
		local vvm = Instance.new("Tool")
		vvm.Name = "Vertical Mobility"
		vvm.Parent = char
		wait()
		vvm:Destroy()
		local antivm = false
		for _,v in pairs(v:GetTouchingParts()) do
			if v.Name == "VMBarrier" then
				antivm = true
				break
			end
		end
		if antivm then
			notif(t.." has VMBarrier, resetting character")
			char:BreakJoints()
			plr.CharacterAdded:Wait()
			wait(1)
			antitp()
		else
			firetouchinterest(v,head,0)
			wait(5)
			wait(6)
		end
	end
end
notif("done. teleporting to next place soon",8)
wait(12)
notif("teleporting to next place...",8)
function tele(id)
	game:GetService("TeleportService"):Teleport(id,game.Players.LocalPlayer)
end
local id = game.PlaceId

if id == 9070657865 then
	tele(9070979698)
elseif id == 9070979698 then
	tele(9070980083)
elseif id == 9070980083 then
	tele(9070980555)
elseif id == 9070980555 then
	tele(9070980846)
elseif id == 9070980846 then
	tele(9070981164)
elseif id == 9070981164 then
	tele(9070981409)
elseif id == 9070981409 then
	tele(9070981722)
elseif id == 9070981722 then
	tele(9070982474)
elseif id == 9070982474 then
	tele(8562822414)
	
	
	
elseif id == 9071001075 then
	tele(9071001366)
elseif id == 9071001366 then
	tele(9071001563)
elseif id == 9071001563 then
	tele(9071001883)
elseif id == 9071001883 then
	tele(9071002104)
elseif id == 9071002104 then
	tele(9071002463)
elseif id == 9071002463 then
	tele(8562822414)
end
