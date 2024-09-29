ProjectConfig = struct;
ProjectConfig.repoPath = pwd;
ProjectConfig.Repo = gitrepo(ProjectConfig.repoPath);


% Run following scripts
% PositionControlParameters;
SpeedControlParameters;


disp("~~~~~~~~~~~~~~~~~~~~~~~~~~");
disp("Projet files loaded")
disp("~~~~~~~~~~~~~~~~~~~~~~~~~");
