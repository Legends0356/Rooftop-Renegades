# Rooftop Renegade

**Rooftop Renegade** is a 2D endless side-scrolling platformer built in Java with JavaFX. The goal is simple but challenging: survive as long as possible by jumping between moving platforms, collect coins for bonus points, and achieve the highest score. Fall off the bottom of the screen and it's game over.

As time passes, the background changes to darker, less visible versions — making platforms harder to spot and increasing difficulty.

## Gameplay Images
<img width="799" height="529" alt="image" src="https://github.com/user-attachments/assets/079423bd-bb8a-4506-baf9-4a04aafd3487" />
<img width="805" height="535" alt="image" src="https://github.com/user-attachments/assets/d9a2efc7-f715-4da7-a3e5-30118b304980" />
<img width="802" height="532" alt="image" src="https://github.com/user-attachments/assets/50502492-9c89-4a9f-800a-f04f01bb676f" />
<img width="802" height="532" alt="image" src="https://github.com/user-attachments/assets/933afe1c-6c1b-4ac0-ae77-c466b4c6ce82" />

## Features
- Smooth endless runner gameplay with random platform generation
- Player movement: single jump + double jump
- Coin collection for extra points
- Progressive difficulty with changing backgrounds
- Main menu, settings screen (music mute toggle), and high-score leaderboard
- Persistent leaderboard saved to file (`LeaderBoard.txt`)
- Background music (looping)
- Animated player and coin sprites (GIF-based)

## Tech Stack
- **Language**: Java (originally compiled on Java 8, revived on Java 21)
- **GUI / Graphics**: JavaFX (OpenJFX 21)
- **Animation**: `AnimationTimer` for game loop
- **Audio**: JavaFX `MediaPlayer`
- **Persistence**: File I/O with `PrintStream` and `Scanner`
- **Build / Run**: Manual command-line compilation (no Maven/Gradle)

## Credits & Roles
This was a collaborative high-school culminating project (2020) by four students:

- **Samantha Barfoot** — Designed and implemented menus (main, settings, leaderboard) and navigation buttons
- **Kurtis Quasdorf** — Created all visual assets: player animations (walking/jumping), coin GIF, backgrounds, platforms, button images
- **Leonard Bairagee & Michael Wieszczek** — Co-leads on programming and project coordination: core game structure, jumping mechanics, collision detection, gravity/anti-gravity logic
- **Leonard Bairagee** — Additional focus on initialization and spawning of dynamic objects (platforms, coins, scrolling backgrounds)
- **Michael Wieszczek** — Additional focus on product coordination, music integration, overall implementation, and integration

## Controls

Space / W / Up Arrow — Jump (single tap or double in air)

## Known Limitations

Animated GIFs (player, coin) often show only first frame in JavaFX
High-score name entry uses console (no GUI input field)
Hardcoded paths — moving folders may break images/sound
No "Play Again" button on leaderboard (use back button)

Revival (2026)
The 2020 code no longer compiled on modern Java (JavaFX removed from JDK). With step-by-step guidance, I updated it to run on Java 21 + OpenJFX by fixing module paths, command-line flags, button rendering, and file paths.
This introduced me to real-world JavaFX setup, command-line compilation, and debugging legacy code — even if mostly guided.

## How to Run (Windows)
1. Make sure you have Java 21+ installed (e.g., from adoptium.net or oracle.com)
2. Download and extract OpenJFX SDK 21[](https://gluonhq.com/products/javafx/)
3. Place all game files in this folder structure:
   
	rooftopRenegade/

	├── src/

	│   └── main/

	│       └── *.java

	├── main/                  ← button PNGs

	├── Resources/             ← backgrounds, GIFs, sound, LeaderBoard.txt

	├── bin/                   ← compiled classes (created on compile)

	└── run.bat

5. Double-click `run.bat` or run from terminal (project root):
```bash
java --module-path "C:/path/to/javafx-sdk-21.0.10/lib"  ^   ##Replace the path with your actual OpenJFX lib folder.##
     --add-modules javafx.controls,javafx.fxml,javafx.media,javafx.graphics ^
     -cp bin main.MainApplication




