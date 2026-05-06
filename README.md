# so_long

A small 2D game built in C as part of the 42 school curriculum. The player navigates a Pac-Man-style character through a map, collecting all items before reaching the exit.

## Preview

```
11111111
100C0001
1000C001
1P010001
1C000001
10000EC1
11111111
```

| Symbol | Meaning |
|--------|---------|
| `1` | Wall |
| `0` | Empty space |
| `P` | Player start position |
| `C` | Collectible |
| `E` | Exit |

## Features

- Move the player with **W A S D** or the **arrow keys**
- Collect all `C` items before the exit `E` opens
- Move counter displayed in the terminal after each step
- Map validation at startup — invalid maps are rejected with an error message
- Path-finding check to ensure the map is completable

## Requirements

- macOS (uses Cocoa / OpenGL / IOKit frameworks)
- [Homebrew](https://brew.sh) with `glfw` installed: `brew install glfw`
- `cmake` (required to build MLX42): `brew install cmake`

## Building

```bash
make
```

This will:
1. Compile the bundled **libft** library
2. Clone and build **MLX42** (the graphics library)
3. Compile and link the game binary `so_long`

Additional targets:

| Target | Description |
|--------|-------------|
| `make clean` | Remove object files |
| `make fclean` | Remove object files, binary, and built libraries |
| `make re` | Full rebuild |

## Usage

```bash
./so_long <path/to/map.ber>
```

Example:

```bash
./so_long maps/valide/map01.ber
```

## Map format

Maps are plain-text `.ber` files. They must satisfy these rules:

- Rectangular shape
- Surrounded entirely by walls (`1`)
- Contains exactly **one** player start position (`P`)
- Contains exactly **one** exit (`E`)
- Contains **at least one** collectible (`C`)
- A valid path must exist from `P` to all `C`s and to `E`

Sample valid maps are provided in `maps/valide/`. Examples of invalid maps (and the errors they trigger) can be found in `maps/invalid/`.

## Project structure

```
so_long/
├── so_long.c                  # Entry point
├── include/so_long.h          # Header / struct definitions
├── utils/                     # Game logic source files
├── libs/                      # libft (custom C standard-library)
├── maps/
│   ├── valide/                # Valid test maps
│   └── invalid/               # Invalid test maps
└── img/                       # PNG sprites
```

## Author

**fgabler** — [42 school](https://42.fr) student
