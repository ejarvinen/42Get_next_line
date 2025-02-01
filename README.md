# 42Get_next_line
## Introduction
**Get_next_line** is a C function that reads a line from a file descriptor. This project aims to introduce **static variables** while adhering to best coding practices and memory management in C. The function reads a file line-by-line, making it easier to process text files.

## Features
- Reads a line from a given file descriptor.
- Handles memory allocation and deallocation properly.
- Works with different buffer sizes defined at compilation.

## Bonus Features
- Uses only one static variable.

## Installation
1. Clone the repository:
```
git clone https://github.com/ejarvinen/42Get_next_line.git
```
2. Navigate to the project directory:
```
cd 42Get_next_line
```
3. Compile the project:
```
make
```
*Running `make` ompiles project, reads `textfile.txt` line-by-line to `stdout` for demo purposes.*

## Usage
To use `get_next_line()` in your project:
```
#include "get_next_line.h"

int fd = open("file.txt", O_RDONLY);
char *line;
while ((line = get_next_line(fd))) {
    printf("%s", line);
    free(line);
}
close(fd);
```
### Compiling and Running
To compile with a buffer size of 42:
```
cc -Wall -Wextra -Werror -D BUFFER_SIZE=42 get_next_line.c get_next_line_utils.c -o gnl
```
