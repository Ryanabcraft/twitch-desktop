[Setup]
AppName=Twitch Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/twitch-desktop
AppSupportURL=https://github.com/Ryanabcraft/twitch-desktop/issues
DefaultDirName={localappdata}\Twitch Desktop
DefaultGroupName=Twitch Desktop
UninstallDisplayIcon={app}\Twitch.exe
UninstallDisplayName=Twitch Desktop
OutputDir=dist_installer
OutputBaseFilename=Twitch-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Twitch.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Twitch"; Filename: "{app}\Twitch.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Twitch Desktop"; Filename: "{app}\Twitch.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Twitch Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Twitch.exe"; Description: "Executar Twitch Desktop"; Flags: postinstall nowait skipifsilent
