local tree = require("nvim-tree")
tree.setup(
	{
		on_attach = function(bufnr)
			local api = require "nvim-tree.api"

			local function opts(desc)
				return {
					desc = "nvim-tree: " .. desc,
					buffer = bufnr,
					noremap = true,
					silent = true,
					nowait = true
				}
			end

			api.config.mappings.default_on_attach(bufnr)
		end,
		renderer = {
			add_trailing = false,
			group_empty = false,
			full_name = false,
			root_folder_label = ":~:s?$?/..?",
			indent_width = 2,
			special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
			symlink_destination = true,
			highlight_git = false,
			highlight_diagnostics = false,
			highlight_opened_files = "none",
			highlight_modified = "none",
			highlight_clipboard = "name",
			indent_markers = {
				enable = false,
				inline_arrows = true,
				icons = {
					corner = "└",
					edge = "│",
					item = "│",
					bottom = "─",
					none = " ",
				},
			},
			icons = {
				web_devicons = {
					file = {
						enable = true,
						color = true,
					},
					folder = {
						enable = false,
						color = true,
					},
				},
				git_placement = "before",
				diagnostics_placement = "signcolumn",
				modified_placement = "after",
				padding = " ",
				symlink_arrow = " ➛ ",
				show = {
					file = true,
					folder = true,
					folder_arrow = true,
					git = true,
					diagnostics = true,
					modified = true,
				},
				glyphs = {
					default = "",
					symlink = "",
					bookmark = "󰆤",
					modified = "●",
					folder = {
						arrow_closed = "",
						arrow_open = "",
						default = "",
						open = "",
						empty = "",
						empty_open = "",
						symlink = "",
						symlink_open = "",
					},
					git = {
						unstaged = "-",
						staged = "✓",
						unmerged = "",
						renamed = "➜",
						untracked = "★",
						deleted = "",
						ignored = "◌",
					},
				},
			},
		}
	})
