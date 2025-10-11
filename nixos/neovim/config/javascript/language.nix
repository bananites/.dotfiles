{
  plugins = {
    conform-nvim = {
      settings = {
        formatters_by_ft.javascript = ["prettierd"];
        formatters_by_ft.typescript = ["prettierd"];
        formatters_by_ft.javascriptreact = ["prettierd"];
        formatters_by_ft.typescriptreact = ["prettierd"];
      };
    };
    lsp.servers.ts_ls = {
      enable = true;
      filetypes = [
        "javascript"
        "javascriptreact"
        "typescript"
        "typescriptreact"
      ];
      extraOptions = {
        settings = {
          javascript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true;
              includeInlayFunctionLikeReturnTypeHints = true;
              includeInlayFunctionParameterTypeHints = true;
              includeInlayParameterNameHints = "all";
              includeInlayParameterNameHintsWhenArgumentMatchesName = true;
              includeInlayPropertyDeclarationTypeHints = true;
              includeInlayVariableTypeHints = true;
            };
          };
          typescript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true;
              includeInlayFunctionLikeReturnTypeHints = true;
              includeInlayFunctionParameterTypeHints = true;
              includeInlayParameterNameHints = "all";
              includeInlayParameterNameHintsWhenArgumentMatchesName = true;
              includeInlayPropertyDeclarationTypeHints = true;
              includeInlayVariableTypeHints = true;
            };
          };
        };
      };
    };
    lsp.servers.eslint.enable = true;
    none-ls.sources.formatting.prettierd = {
      enable = true;
      disableTsServerFormatter = true;
    };
  };
}
