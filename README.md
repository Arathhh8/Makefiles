# Description

This project is a simple example of how to use Makefiles to manage the build process for a C program. It includes basic functionality and demonstrates how to compile and link source files into an executable binary.

You do not need an IDE to work with this project; you can manage and build it using the command line. However, if you prefer using a code editor, I recommend Visual Studio Code (VSCode) for its robust support for C programming and its integration with build tools like Make.

## Requirements

* **Compiler**: GCC (GNU Compiler Collection)
* **Make**: GNU Make

### How to Check if You Have These Tools

Before installing GCC and Make, you may want to check if they are already installed on your system. Here’s how you can verify their presence:

#### macOS and Linux

1. **Check GCC**:
    Open a terminal and run:

    gcc --version

    If GCC is installed, you’ll see version information. If not, you'll receive a command not found message.

2. **Check Make**:
    In the terminal, run:

    make --version

    If Make is installed, you’ll see version information. If not, you'll receive a command not found message.

#### Windows

1. **Check GCC**:
    Open Command Prompt or PowerShell and run:

    gcc --version

    If GCC is installed, you’ll see version information. If not, you'll receive a command not recognized message.

2. **Check Make**:
    In Command Prompt or PowerShell, run:

    make --version

    If Make is installed, you’ll see version information. If not, you'll receive a command not recognized message.

If either of these tools is not installed, follow the installation instructions provided in the [Installation Instructions](#installation-instructions) section to get them set up on your system.

### Installation Instructions

#### macOS

To install GCC and Make on macOS, you can use [Homebrew](https://brew.sh/), a package manager for macOS. If you don't have Homebrew installed, follow these steps:

1. **Install Homebrew** (if not already installed):

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

2. **Install GCC and Make**:

    brew install gcc
    brew install make

#### Windows

To install GCC and Make on Windows, you can use [MinGW](https://www.mingw-w64.org/) (Minimalist GNU for Windows) or [MSYS2](https://www.msys2.org/).

1. **Install MSYS2**:
    -Download the installer from [MSYS2](https://www.msys2.org/) and follow the instructions on the website.
    -Open the MSYS2 terminal and update the system:

      pacman -Syu

2. **Install GCC and Make**:

    pacman -S mingw-w64-x86_64-gcc
    pacman -S make

   Alternatively, if you use MinGW:
    -Download and install the [MinGW Installation Manager](http://mingw.org/wiki/Getting_Started).
    -Open the MinGW Installation Manager and select `mingw32-gcc-g++` and `mingw32-make` to install.

#### Linux

On most Linux distributions, you can install GCC and Make using your distribution's package manager.

-**Debian/Ubuntu**:

    sudo apt update
    sudo apt install build-essential

-**Fedora**:

    sudo dnf install gcc gcc-c++ make

-**Arch Linux**:

    sudo pacman -S base-devel

## Project Structure

    Makefiles/
    |–– docs/
    |   |–– MAKEFILE.md     # Check this for more Make Information 
    |
    |–– src/                # Source files  
    |   |–– main.c
    |   |–– output.c
    |   |–– calculator.c
    |
    |–– inc/                # Header files
    |   |–– functions.h
    |
    |–– Makefile
    |–– README.md           # This file

## Compilation

To compile the project, navigate to the root directory of the project (Makefiles folder) and run:

    make

this will generate the executable binary named 'main'.

## Project Structure after compilation

    Makefiles/
    |–– bin/
    |   |–– main            # Executable file
    |
    |–– docs/
    |   |–– MAKEFILE.md     # Check this for more Make information 
    |
    |–– inc/                # Header files
    |   |–– functions.h
    |
    |–– obj/                # Object files
    |   |–– calculator.o
    |   |–– main.o
    |   |–– output.o
    |
    |–– src/                # Source files  
    |   |–– calculator.c
    |   |–– main.c
    |   |–– output.c
    |
    |–– Makefile
    |–– README.md           # This file

### Execution

After compilation, you can run the binary with:

    ./bin/main          # Linux or macOS

    ./bin/main.exe      # Windows

or

you can run:

    make run    # This is an automated way to simplify your workflow and another method to utilize Makefiles :D

#### Output expected

    Result: 4

---

    Congrats, it is working well!

To remove generated files, run:

    make clean

## Notes

* Ensure you have 'gcc' and 'make' installed on your system.
* This project uses a simple Makefile with basic rules. For more complex projects, you may need additional configurations.
* Please go to docs/MAKEFILE.md to get more information about Make, it is very useful in order to understand how ***make*** works.

### Additional

This project serves as a basic template to get you started. I encourage you to expand and customize it according to your needs and interests. Feel free to:

-**Add More Functionality**: Implement additional features that you think could enhance the project. This could include new algorithms, additional modules, or any other improvements.
  
-**Create New `.c` and `.h` Files**: As you develop new features, you may find it useful to add more source (`.c`) and header (`.h`) files. Make sure to organize them appropriately within the `src/` and `inc/` directories.

-**Update the Makefile**: If you add new source or header files, remember to update the Makefile to include these changes. This ensures that the build process incorporates your new files and configurations.

-**Test Thoroughly**: As you make changes and add new features, it's important to test the project thoroughly. Ensure that your modifications work as expected and do not introduce new issues.

This project is designed as a starting point, and there is plenty of room for enhancement. Whether you're looking to learn more about C programming, experiment with new ideas, or build something more complex, feel free to adjust and extend the project as you see fit.

---

For more info, visit: <https://www.gnu.org/software/make/manual/make.html>

<center

**Happy Coding!** 😊

</center>
