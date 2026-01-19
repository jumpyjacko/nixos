{
  programs.git = {
    enable = true;

    settings = {
      core.editor = "nvim";
      core.pager = "delta";
      delta.navigate = true;
      delta.light = false;

      column.ui = "auto";

      init.defaultBranch = "main";
      merge.conflictStyle = "zdiff3";
      push.autoSetupRemote = true;
      branch.sort = "-committerdate";
      tag.sort = "version:refname";
      interactive.diffFilter = "delta --color-only";

      help.autocorrect = "prompt";

      diff = {
        algorithm = "histogram";
        colorMoved = "plain";
        renames = true;
      };
    };
  };
}
