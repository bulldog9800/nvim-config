local orig = vim.lsp.util.make_position_params

vim.lsp.util.make_position_params = function(win, encoding)
    if not encoding then
        print("⚠️ make_position_params called without encoding")
        print(debug.traceback("", 2))
    end
    return orig(win, encoding)
end

require("sari.remap")
require("sari.lazy")
require("sari.options")
require("sari.autocmds")
require("sari.colors")
