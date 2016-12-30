
local function run(msg, matches)
	local text = io.popen("sh ./data/sinfo.sh"):read('*all')
	if is_sudo(msg) then
		return text
	end
end

return {
	patterns = {
		'^(سرور)$'
	},
	run = run,
	moderated = true
}

-- @AmirVTA
-- @ARKInfo
-- @ARKInfoLite
