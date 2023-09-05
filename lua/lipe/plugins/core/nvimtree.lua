return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    local pref_signs = require(USR .. ".preferences.signs")
    local nvim_tree = require("nvim-tree")

    local function on_attach(bufnr)
      local api = require "nvim-tree.api"

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      api.config.mappings.default_on_attach(bufnr)

      vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
      vim.keymap.set("n", "v", api.node.open.vertical, opts "Open: Vertical Split")
      vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close Directory")
      vim.keymap.set("n", "C", api.tree.change_root_to_node, opts "CD")
    end

    nvim_tree.setup {
      auto_reload_on_write = false,
      disable_netrw = false,
      hijack_cursor = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      sort_by = "name",
      root_dirs = {},
      prefer_startup_root = false,
      sync_root_with_cwd = true,
      reload_on_bufenter = false,
      respect_buf_cwd = false,
      on_attach = on_attach,
      select_prompts = false,
      view = {
        adaptive_size = false,
        centralize_selection = true,
        width = 35,
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        float = {
          enable = false,
          quit_on_focus_loss = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 30,
            height = 30,
            row = 1,
            col = 1,
          },
        },
      },
      renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = true,
        full_name = false,
        highlight_opened_files = "none",
        root_folder_label = ":t",
        indent_width = 2,
        indent_markers = {
          enable = false,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            none = " ",
          },
        },
        icons = {
          webdev_colors = true,
          git_placement = "before",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = pref_signs.ui.Text,
            symlink = pref_signs.ui.FileSymlink,
            bookmark = pref_signs.ui.BookMark,
            folder = {
              arrow_closed = pref_signs.ui.TriangleShortArrowRight,
              arrow_open = pref_signs.ui.TriangleShortArrowDown,
              default = pref_signs.ui.Folder,
              open = pref_signs.ui.FolderOpen,
              empty = pref_signs.ui.EmptyFolder,
              empty_open = pref_signs.ui.EmptyFolderOpen,
              symlink = pref_signs.ui.FolderSymlink,
              symlink_open = pref_signs.ui.FolderOpen,
            },
            git = {
              unstaged = pref_signs.git.FileUnstaged,
              staged = pref_signs.git.FileStaged,
              unmerged = pref_signs.git.FileUnmerged,
              renamed = pref_signs.git.FileRenamed,
              untracked = pref_signs.git.FileUntracked,
              deleted = pref_signs.git.FileDeleted,
              ignored = pref_signs.git.FileIgnored,
            },
          },
        },
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        symlink_destination = true,
      },
      hijack_directories = {
        enable = false,
        auto_open = true,
      },
      update_focused_file = {
        enable = true,
        debounce_delay = 15,
        update_root = true,
        ignore_list = {},
      },
      diagnostics = {
        enable = true,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = pref_signs.HINT,
          info = pref_signs.INFO,
          warning = pref_signs.WARN,
          error = pref_signs.ERROR,
        },
      },
      filters = {
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        custom = { "node_modules", "\\.cache" },
        exclude = {},
      },
      filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
        ignore_dirs = {},
      },
      git = {
        enable = true,
        ignore = false,
        show_on_dirs = true,
        show_on_open_dirs = true,
        timeout = 200,
      },
      actions = {
        use_system_clipboard = true,
        change_dir = {
          enable = true,
          global = false,
          restrict_above_cwd = false,
        },
        expand_all = {
          max_folder_discovery = 300,
          exclude = {},
        },
        file_popup = {
          open_win_config = {
            col = 1,
            row = 1,
            relative = "cursor",
            border = "shadow",
            style = "minimal",
          },
        },
        open_file = {
          quit_on_open = false,
          resize_window = false,
          window_picker = {
            enable = true,
            picker = "default",
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "lazy", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
        remove_file = {
          close_window = true,
        },
      },
      trash = {
        cmd = "trash",
        require_confirm = true,
      },
      live_filter = {
        prefix = "[FILTER]: ",
        always_show_folders = true,
      },
      tab = {
        sync = {
          open = false,
          close = false,
          ignore = {},
        },
      },
      notify = {
        threshold = vim.log.levels.INFO,
      },
      log = {
        enable = false,
        truncate = false,
        types = {
          all = false,
          config = false,
          copy_paste = false,
          dev = false,
          diagnostics = false,
          git = false,
          profile = false,
          watcher = false,
        },
      },
      system_open = {
        cmd = nil,
        args = {},
      },
    }

    -- nvim_tree.setup {
    --   update_focused_file = {
    --     enable = true,
    --     update_cwd = true,
    --   },
    --   renderer = {
    --     root_folder_modifier = ":t",
    --     icons = {
    --       glyphs = {
    --         default = "",
    --         symlink = "",
    --         folder = {
    --           arrow_open = "",
    --           arrow_closed = "",
    --           default = "",
    --           open = "",
    --           empty = "",
    --           empty_open = "",
    --           symlink = "",
    --           symlink_open = "",
    --         },
    --         git = {
    --           unstaged = "",
    --           staged = "S",
    --           unmerged = "",
    --           renamed = "➜",
    --           untracked = "U",
    --           deleted = "",
    --           ignored = "◌",
    --         },
    --       },
    --     },
    --   },
    --   diagnostics = {
    --     enable = true,
    --     show_on_dirs = true,
    --     icons = {
    --       hint = pref_signs.HINT,
    --       info = pref_signs.INFO,
    --       warning = pref_signs.WARN,
    --       error = pref_signs.ERROR,
    --     },
    --   },
    --   view = {
    --     width = 35,
    --     side = "left",
    --   },
    --   filters = {
    --     dotfiles = true,
    --   },
    -- }
  end,
}
