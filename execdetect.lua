return function()
	local vars = {
		Synapse = function()
			return (syn ~= nil), "Synapse"
		end,
		ScriptWare = function()
			return (import ~= nil and getexecutorname ~= nil), "ScriptWare"
		end,
		SirHurt = function()
			return (XPROTECT ~= nil), "SirHurt"
		end,
	}

	local exec = ""
	for i, v in pairs(vars) do
		local checkPassed, exploitName = v()
		if checkPassed then
			exec = exploitName
			return
		end
	end
	return exec
end
