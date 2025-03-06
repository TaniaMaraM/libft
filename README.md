[![Libft bonus badge](https://github.com/ayogun/42-project-badges/blob/main/badges/libftm.png?raw=true)](https://github.com/schardot/42_core/tree/main/rank00/libft)

# **Libft Project** 

My own first C library! Libft is where it all began—building a custom C library from scratch, reimplementing standard functions and tackling strings, memory, and linked lists.

This is my implementation of the Libft project from 42 Berlin, which includes custom functions for string manipulation, linked list management, and memory handling. The project focuses on developing essential tools for low-level programming. 💻


## 🧭 Table of Contents

- [String Functions](#string-functions)
- [Memory Functions](#memory-functions)
- [Linked List Functions](#linked-list-functions)
- [Output Functions](#output-functions)
- [Extras](#extras)
- [Makefile](#makefile)

---

## 🔠 String Functions

- [**`ft_atoi`**](ft_atoi.c) - Converts a string to an integer.
- [**`ft_isalnum`**](ft_isalnum.c) - Checks if a character is alphanumeric.
- [**`ft_isalpha`**](ft_isalpha.c) - Checks if a character is alphabetic.
- [**`ft_isascii`**](ft_isascii.c) - Checks if a character is ASCII.
- [**`ft_isdigit`**](ft_isdigit.c) - Checks if a character is a digit.
- [**`ft_isprint`**](ft_isprint.c) - Checks if a character is printable.
- [**`ft_strchr`**](ft_strchr.c) - Locates the first occurrence of a character in a string.
- [**`ft_strjoin`**](ft_strjoin.c) - Joins two strings.
- [**`ft_strlcat`**](ft_strlcat.c) - Concatenates two strings, with a limit on the number of characters.
- [**`ft_strlcpy`**](ft_strlcpy.c) - Copies a string, with a limit on the number of characters.
- [**`ft_strlen`**](ft_strlen.c) - Returns the length of a string.
- [**`ft_strmapi`**](ft_strmapi.c) - Applies a function to each character of a string and returns a new string.
- [**`ft_strnstr`**](ft_strnstr.c) - Locates a substring within a string.
- [**`ft_strncmp`**](ft_strncmp.c) - Compares two strings up to a given length.
- [**`ft_strrchr`**](ft_strrchr.c) - Locates the last occurrence of a character in a string.
- [**`ft_strtrim`**](ft_strtrim.c) - Trims characters from the beginning and end of a string.
- [**`ft_substr`**](ft_substr.c) - Extracts a substring from a string.
- [**`ft_itoa`**](ft_itoa.c) - Converts an integer to a string.
- [**`ft_striteri`**](ft_striteri.c) - Applies a function to each character of a string (in place).
- [**`ft_strmapi`**](ft_strmapi.c) - Applies a function to each character of a string and returns a new string.

---

## 💾 Memory Functions

- [**`ft_bzero`**](ft_bzero.c) - Sets a block of memory to zero.
- [**`ft_calloc`**](ft_calloc.c) - Allocates memory and sets it to zero.
- [**`ft_memchr`**](ft_memchr.c) - Searches for a character in a block of memory.
- [**`ft_memcmp`**](ft_memcmp.c) - Compares two blocks of memory.
- [**`ft_memcpy`**](ft_memcpy.c) - Copies a block of memory.
- [**`ft_memmove`**](ft_memmove.c) - Moves a block of memory.
- [**`ft_memset`**](ft_memset.c) - Sets a block of memory to a specific value.

---

## 🔗 Linked List Functions

- [**`ft_lstadd_back`**](ft_lstadd_back.c) - Adds a new element to the end of a linked list.
- [**`ft_lstadd_front`**](ft_lstadd_front.c) - Adds a new element to the front of a linked list.
- [**`ft_lstclear`**](ft_lstclear.c) - Clears and frees the memory of a linked list.
- [**`ft_lstiter`**](ft_lstiter.c) - Iterates through a linked list and applies a function to each element.
- [**`ft_lstlast`**](ft_lstlast.c) - Returns the last element of a linked list.
- [**`ft_lstmap`**](ft_lstmap.c) - Applies a function to each element of a linked list and returns a new list.
- [**`ft_lstdelone`**](ft_lstdelone.c) - Deletes a single element of a linked list.
- [**`ft_lstnew`**](ft_lstnew.c) - Creates a new element for a linked list.
- [**`ft_lstsize`**](ft_lstsize.c) - Returns the number of elements in a linked list.

---

## 🖨️ Output Functions

- [**`ft_putchar_fd`**](ft_putchar_fd.c) - Writes a character to a file descriptor.
- [**`ft_putendl_fd`**](ft_putendl_fd.c) - Writes a string to a file descriptor followed by a newline.
- [**`ft_putnbr_fd`**](ft_putnbr_fd.c) - Writes an integer to a file descriptor.
- [**`ft_putstr_fd`**](ft_putstr_fd.c) - Writes a string to a file descriptor.

---

## 🔧 Extras

These are my personal test files used to verify and test the functions in the `libft` library:

- [**`bonus.c`**](bonus.c) - Contains additional test functions or utilities.
- [**`test.c`**](test.c) - Includes test cases to check the functionality of `libft`.

---
