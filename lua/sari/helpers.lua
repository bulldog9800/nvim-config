local ts_utils = require('nvim-treesitter.ts_utils')

Helpers = {}

function Helpers.test()
	local current_node = ts_utils.get_node_at_cursor();
	if not current_node then
		return ""
	end

	local expr = current_node
	while expr do
		if expr:type() == 'function_declaration' then
			break
		end
		expr = expr:parent()
	end

	if not expr then
		return ""
	end

	local func_name = (ts_utils.get_node_text(expr:child(1)))[1]

	return func_name
end

return Helpers
