import matlab.addons.toolbox.ToolboxOptions;
import matlab.addons.toolbox.packageToolbox;

uuid = "d6b2a2d6-b121-4392-b3f9-463f3a64f0ad";
toolboxFolder = "toolbox";

toolBoxOptions = ToolboxOptions(toolboxFolder, uuid);
toolBoxOptions.OutputFile = "build/toolbox.mltbx";

if ~exist("build", 'dir')
    mkdir("build");
end

toolBoxOptions.ToolboxName = "Toolbox Exammple";

toolBoxOptions.ToolboxVersion = getenv("TOOLBOX_VERSION");
toolBoxOptions.Description = "";
toolBoxOptions.Summary = "";
toolBoxOptions.ToolboxImageFile = "";
toolBoxOptions.ToolboxMatlabPath = "toolbox";
toolBoxOptions.ToolboxGettingStartedGuide = "toolbox/gettingStarted.mlx";

toolBoxOptions.MinimumMatlabRelease = "";
toolBoxOptions.MaximumMatlabRelease = "";

packageToolbox(toolBoxOptions);
