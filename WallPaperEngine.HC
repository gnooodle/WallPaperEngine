// WallPaperEngine by gnooodle@github, written in HolyC for TempleOS
// To start, press [F5]

U64 Color() {
    U64 choice = GetStr; // Organization
    Print("\n");

    return choice;
}

U0 Main() {
    DocClear;

    Print("-------WallPaperEngine-V1--------\n");
    Print("|                               |\n");
    Print("|      X-----------------X      |\n");
    Print("|      | Choose a color: |      |\n");
    Print("|      |-----------------|      |\n");
    Print("|      |    [Black]      |      |\n");
    Print("|      |    [Blue]       |      |\n");
    Print("|      |    [Green]      |      |\n");
    Print("|      |    [Cyan]       |      |\n");
    Print("|      |    [Red]        |      |\n");
    Print("|      |    [Purple]     |      |\n");
    Print("|      |    [LtGray]     |      |\n");
    Print("|      |    [DkGray]     |      |\n");
    Print("|      |    [LtBlue]     |      |\n");
    Print("|      |    [LtGreen]    |      |\n");
    Print("|      |    [LtCyan]     |      |\n");
    Print("|      |    [LtRed]      |      |\n");
    Print("|      |    [LtPurple]   |      |\n");
    Print("|      |-----------------|      |\n");
    Print("|      |(Case sensitive) |      |\n");
    Print("|      X-----------------X      |\n");
    Print("|                               |\n");
    Print("---------------------------------\n");

    Print("> ");
    U64 chosen = Color;
    Print("Chosen: ");
    Print(chosen); // Verify choice
    Print("\n");

    Cd("src/WallPaperEngine"); // Path to WallPaperEngine directory
    Cd(chosen); // To choice (necessary, bc all data files share same name, eg. 0047)

    U64 srcFile = "WallPaper.HC.Z"; // In reality would be compressed when in Temple
    U64 destFile = "::/Adam/WallPaper.HC.Z"; // This too

    Print("\nMaking adjustments...\n");
    Copy(srcFile, destFile);
    Print("Changes complete.\n");

    Print("A reboot is needed for further changes to be made, [Enter] to reboot now.");
    U64 response = GetStr;

    if (response) {
        Reboot;
    }
}

Main;
