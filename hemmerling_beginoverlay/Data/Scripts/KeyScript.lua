local trigger = script.parent.parent
local Key = script:GetCustomProperty("Key"):WaitForObject()
-- print (Key.id)
-- print (trigger.id)

-- code starts here

Key:SetColor(Color.WHITE) 

function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		Key:SetColor(Color.GREEN)	
	end
end

function OnEndOverlap(trigger, other)
	if other:IsA("Player") then
		Key:SetColor(Color.WHITE)				
	end
end

function OnInteracted(trigger, other)
	if other:IsA("Player") then
    	Key:SetColor(Color.RED)	
		Task.Wait(2)
		Key:SetColor(Color.WHITE)				
		UI.PrintToScreen("Interacted!")
	end
end

print ("Keyscript")
trigger.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.endOverlapEvent:Connect(OnEndOverlap)
trigger.interactedEvent:Connect(OnInteracted)
