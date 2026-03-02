th.git = th.git or {}
th.git.modified_sign = "M"
th.git.deleted_sign = "D"

require("git"):setup()
require("starship"):setup()
require("relative-motions"):setup({ show_numbers = "relative", show_motion = true })

require("full-border"):setup({
	type = ui.Border.ROUNDED,
})

require("session"):setup({
	sync_yanked = true,
})
