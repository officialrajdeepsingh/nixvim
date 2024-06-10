{lib, ...}:
{
  plugins.copilot-cmp = {
    enable = lib.mkDefault false;
  };
  plugins.copilot-lua = {
    enable = lib.mkDefault false;
    suggestion = {enabled = false;};
    panel = {enabled = false;};
  };

  extraConfigLua = ''
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  '';
}
