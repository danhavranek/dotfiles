th.git = th.git or {}
th.git.modified_sign = "M"
th.git.deleted_sign = "D"

require("git"):setup()
require("starship"):setup()

-- Rounded border
require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})
