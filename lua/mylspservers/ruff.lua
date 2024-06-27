local ruff = require("lspservers.ruff")

ruff.init_options.settings.configuration = "~/.config/TurboNvim/pyproject.toml"

return ruff
