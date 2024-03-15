# Vi and Vim Tutorial

## Contents

- [Vi and Vim Tutorial](#vi-and-vim-tutorial)
  - [Contents](#contents)
  - [Introduction](#introduction)
    - [Vi](#vi)
    - [Vim](#vim)
    - [Vi vs Vim](#vi-vs-vim)
  - [Basic vi commands](#basic-vi-commands)
  - [vi commands](#vi-commands)
  - [Basic vim commands](#basic-vim-commands)
  - [vim Commands](#vim-commands)
  - [Customizing Vim's behavior via the .vimrc file](#customizing-vims-behavior-via-the-vimrc-file)
    - [Examples of `.vimrc` Customizations](#examples-of-vimrc-customizations)



## Introduction

`vi` and `vim` ([https://www.vim.org/](https://www.vim.org/)) are powerful, versatile, and highly customizable text editors that have been popular among developers, system administrators, and power users for decades. Both `vi` and `vim` are widely used on Unix-like operating systems due to their efficiency, flexibility, and rich feature set.

Go back to [Contents](#contents).

### Vi

- Vi, short for "VIsual editor", was developed by Bill Joy in the late 1970s as the default text editor for the Unix operating system. It is a modal text editor, meaning it operates in different modes for tasks such as navigating, editing, and command execution.
- Vi provides a minimalist yet efficient editing environment, allowing users to manipulate text quickly and effectively from the command line. It offers a wide range of features, including powerful search and replace capabilities, text manipulation commands, and support for regular expressions.
- Vi's modal editing paradigm can be initially challenging for new users to grasp but offers significant advantages in terms of speed and productivity once mastered.

Go back to [Contents](#contents).

### Vim

- Vim, short for "Vi IMproved," is an enhanced and extended version of Vi created by Bram Moolenaar in the early 1990s. Vim builds upon Vi's foundation while introducing additional features, improvements, and customization options.
- Vim retains Vi's modal editing concept but introduces numerous enhancements, including syntax highlighting, code completion, split-screen editing, plugins, and a built-in scripting language (Vimscript) for customization.
- Vim is highly configurable, allowing users to tailor the editor to their specific needs and preferences through the use of configuration files (such as .vimrc) and plugins. Its extensive plugin ecosystem offers additional functionality for tasks such as version control integration, language-specific enhancements, and productivity tools.
- Despite its rich feature set, Vim remains lightweight and efficient, making it suitable for a wide range of editing tasks, from writing code and editing configuration files to composing emails and taking notes.

In summary, Vi and Vim are renowned for their speed, efficiency, and extensibility, making them indispensable tools for text editing and manipulation in Unix-like environments. Whether you're a seasoned developer, system administrator, or casual user, mastering Vi or Vim can significantly enhance your productivity and efficiency when working with text.

Go back to [Contents](#contents).


### Vi vs Vim

The `vim` (Vi IMproved) is an extended and enhanced version of the original `vi` text editor. While both `vim` and `vi` share many similarities, `vim` includes additional features and improvements over `vi`. 

Here are some key differences:

1. **Extended Functionality:**

- `vim` offers more features and functionality compared to `vi`. These include syntax highlighting, auto-indentation, split windows, tabs, mouse support, and built-in scripting support (via Vimscript).

2. **Plugin Support:**

- Vim has a robust ecosystem of plugins developed by the community, which extend its functionality further. These plugins cover a wide range of features, from version control integration to language-specific enhancements.

3. **Improved Usability:**

- `vim` has various usability improvements over `vi`, such as better navigation commands, additional editing modes (like visual mode), and enhanced search and replace capabilities. These improvements make Vim more intuitive and efficient for many users.

4. **Customization:**

- Vim allows for extensive customization through its configuration file (`.vimrc`) and plugin system. Users can tailor Vim to suit their specific preferences and workflow, making it highly adaptable to different editing tasks and environments.

5. **Cross-Platform Support:**

- While `vi` is primarily associated with Unix-like operating systems, `vim` has been ported to a wide range of platforms, including Windows, macOS, and various Unix-like systems. This cross-platform support makes Vim accessible to a broader audience.

6. **Continued Development:**

- Vim is actively developed and maintained, with regular updates and new features being introduced over time. This ongoing development ensures that Vim remains relevant and competitive in the text editing landscape.

Overall, while `vi` serves as the foundation for `vim`, `vim` expands upon `vi`'s capabilities and addresses many of its limitations, making it a more powerful and versatile text editor for modern users.

Go back to [Contents](#contents).


## Basic vi commands

Using `vi` can seem daunting at first, especially if you're accustomed to more modern text editors with graphical interfaces. However, once you get the hang of it, `vi` (and its modern counterpart, `vim`) can be quite efficient. 

Here's a basic guide to using `vi`:

1. **Opening a File:**

- Open your terminal or command prompt.
- Type `vi` followed by the name of the file you want to edit. 
  
For example:

```bash
vi filename.txt
```

2. **Modes:**

- **Command Mode:** When you first open `vi`, you're in command mode. This mode allows you to navigate the file, delete text, and perform other actions.
- **Insert Mode:** In insert mode, you can type and edit text.
- **Visual Mode:** Visual mode allows you to select blocks of text.

3. **Basic Navigation:**

- Use the arrow keys to move the cursor.
- Alternatively, you can use `h`, `j`, `k`, and `l` keys for left, down, up, and right respectively.
- Jump to the beginning of the line with `0` or to the end with `$`.
- Use `gg` to move to the beginning of the file and `G` to move to the end.

4. **Editing:**

- To enter insert mode, press `i`.
- To delete characters, use the `x` key. To delete lines, use `dd`.
- To copy (yank) a line, press `yy`. To paste it, press `p`.
- To undo the last action, press `u`.

5. **Saving and Exiting:**

- To save changes and exit, press `Esc` to ensure you're in command mode, then type `:wq` and press `Enter`.
- To exit without saving, press `Esc`, then type `:q!` and press `Enter`.

6. **Searching:**

- Press `/` followed by the term you want to search for, then press `Enter`. To search backward, use `?` instead of `/`.
- Use `n` to move to the next occurrence of the search term, and `N` to move to the previous one.

7. **Visual Mode:**

- Press `v` to enter visual mode.
- Use the navigation keys to select the text you want to manipulate.
- Once selected, you can delete, copy, or perform other actions on the selected text.

8. **Help:**

- If you need help while using `vi`, you can press `Esc` to ensure you're in command mode, then type `:help` and press `Enter`. This will open vi's built-in help system.

Remember, mastering `vi` takes practice, and it may feel awkward at first. However, as you become more familiar with its commands and shortcuts, you'll find it to be a powerful and efficient text editor.

Go back to [Contents](#contents).



## vi commands

Below is an overview of the main categories of `vi` commands and their usage.

1. Navigation Commands:

- `h`, `j`, `k`, `l` - Move cursor left, down, up, and right respectively.
- `0`,`$` - Move to the beginning and end of the line.
- `^` - Move to the first non-whitespace character of the line.
- `gg`, `G` - Move to the beginning and end of the file.
- `w`, `b` - Move forward and backward by a word.
- `%` - Move to the matching parenthesis, bracket, or brace.

2. Editing Commands:

- `i` - Enter insert mode before the cursor.
- `I` - Enter insert mode at the beginning of the line.
- `a` - Enter insert mode after the cursor.
- `A` - Enter insert mode at the end of the line.
- `o`, `O` - Insert a new line below or above the current line and enter insert mode.
- `x` - Delete character under the cursor.
- `dd` - Delete the current line.
- `yy` - Copy (yank) the current line.
- `p`, `P` - Paste after or before the cursor.
- `u` - Undo the last change.
- `.` - Repeat the last change.

3. Search and Replace Commands:

- `/search_term` - Search forward for search_term.
- `?search_term` - Search backward for search_term.
- `n` - Repeat the last search in the same direction.
- `N` - Repeat the last search in the opposite direction.
- `:s/old_term/new_term/g` - Replace all occurrences of old_term with new_term in the current line.
- `:%s/old_term/new_term/g` - Replace all occurrences of old_term with new_term in the entire file.

4. Saving and Exiting Commands:

- `:w` - Save changes to the file.
- `:q` - Quit `vi` if there are no unsaved changes.
- `:wq` or `:x` - Save changes and quit `vi`.
- `:q!` - Quit `vi` without saving changes.

5. Visual Mode Commands:

- `v` - Enter visual mode to select text character by character.
- `V` - Enter visual line mode to select entire lines.
- `Ctrl + v` - Enter visual block mode to select rectangular blocks of text.

6. Other Useful Commands:

- `:help` - Open `vi`'s built-in help system.
- `:e filename` - Open a different file in the current buffer.
- `:sp filename` - Split the window and open a different file.
- `:vsp filename` - Open a different file in a vertical split.
- `:tabnew filename` - Open a new tab and edit a different file.

This is just a brief overview of some commonly used `vi` commands. There are many more commands and functionalities available in `vi`, and mastering them requires practice and exploration. You can refer to `vi`'s documentation or online resources for more information on specific commands and features.


Go back to [Contents](#contents).




## Basic vim commands

Here's a basic guide to get you started with Vim:

1. **Opening Vim:**

- Open your terminal or command prompt.
- Type `vim` followed by the name of the file you want to edit. If the file does not exist, Vim will create a new one with that name.

2. **Modes:**

- **Normal mode:** This is the default mode when you open Vim. In this mode, you can navigate through the file and execute commands.
- **Insert mode:** This mode is for inserting text into the file, similar to other text editors.
- **Visual mode:** This mode allows you to select blocks of text.

3. **Navigating:**

- Use the arrow keys to move the cursor.
- Alternatively, you can use `h`, `j`, `k`, and `l` keys for left, down, up, and right respectively.
- Jump to the beginning of the line with `0` or to the end with `$`.
- Use `gg` to move to the beginning of the file and `G` to move to the end.

4. **Editing:**

- Press `i` to enter insert mode from normal mode. You can start typing text.
- Press `Esc` to exit insert mode and return to normal mode.
- Use `x` to delete the character under the cursor. `dw` to delete a word, `dd` to delete a line.

5. **Saving and Exiting**

- To save changes and exit, press `Esc` to ensure you are in normal mode, then type `:wq` and press Enter.
- To exit without saving, press Esc to ensure you are in normal mode, then type `:q!` and press `Enter`.

6. **Search and Replace**

- In normal mode, press `/` followed by the term you want to search for, then press `Enter`.
- To replace a term, in normal mode, type `:%s/old_term/new_term/g` and press `Enter`. This replaces all occurrences of `old_term` with `new_term`.

7. **Undo and Redo**

- To undo, press `u` in normal mode.
- To redo, press `Ctrl + r` in normal mode.

8. **Customization:**

- Vim is highly customizable. You can customize its behavior by editing the `.vimrc` file in your home directory.
You can install plugins to extend Vim's functionality.

9. **Getting Help:**

- Within Vim, you can access the built-in help system by typing `:help`. This will provide detailed information on various commands and features.

10. **Practice:**

- Vim has a steep learning curve, so the best way to learn is by practicing regularly. There are many tutorials and resources available online to help you master Vim.

Remember, Vim can be complex at first, but once you get used to its keybindings and workflow, it can significantly enhance your text editing efficiency.

Go back to [Contents](#contents).



## vim Commands

Listing all Vim commands and explaining how to use them in detail would be quite extensive, as Vim is a highly versatile and customizable text editor with numerous commands and functionalities. However, I can provide you with a broad overview of the main categories of commands and their usage:

1. **Movement Commands:**

- `h`, `j`, `k`, `l` - Move cursor left, down, up, and right respectively.
- `0`,`$` - Move to the beginning and end of the line.
- `gg`, `G` - Move to the beginning and end of the file.
- `w`, `b` - Move forward and backward by a word.
- `Ctrl + f`, `Ctrl + b` - Scroll forward and backward one page.
- `Ctrl + u`, `Ctrl + d` - Scroll half a page up and down.

1. **Editing Commands:**

- `i` - Enter insert mode before the cursor.
- `a` - Enter insert mode after the cursor.
- `o`, `O` - Insert a new line below or above the current line and enter insert mode.
- `x` - Delete character under the cursor.
- `dd` - Delete the current line.
- `yy` - Copy (yank) the current line.
- `p`, `P` - Paste after or before the cursor.
- `u` - Undo the last change.
- `Ctrl + r` - Redo the last undone change.

3. **Search and Replace Commands:**

- `/search_term` - Search forward for `search_term`.
- `?search_term` - Search backward for `search_term`.
- `n` - Repeat the last search in the same direction.
- `N` - Repeat the last search in the opposite direction.
- `:s/old_term/new_term/g` - Replace all occurrences of `old_term` with `new_term` in the current line.
- `:%s/old_term/new_term/g` - Replace all occurrences of `old_term` with `new_term` in the entire file.

4. **Saving and Exiting Commands:**

- `:w` - Save changes to the file.
- `:q` - Quit Vim.
- `:wq` or `:x` - Save changes and quit Vim.
- `:q!` - Quit Vim without saving changes.

5. **Visual Mode Commands:**

- `v` - Enter visual mode to select text character by character.
- `V` - Enter visual line mode to select entire lines.
- `Ctrl + v` - Enter visual block mode to select rectangular blocks of text.

6. **Other Useful Commands:**

- `:help` - Open Vim's built-in help system.
- `:e filename` - Open a different file in the current buffer.
- `:sp filename` - Split the window and open a different file.
- `:vsp filename` - Open a different file in a vertical split.
- `:tabnew filename` - Open a new tab and edit a different file.

Remember, this is just a brief overview of some commonly used Vim commands. Vim has many more commands and functionalities, and mastering them requires practice and exploration. You can always refer to Vim's documentation (:help) for more information on specific commands and features.

Go back to [Contents](#contents).



## Customizing Vim's behavior via the .vimrc file 

Customizing Vim's behavior via the `.vimrc` file allows you to tailor the editor to your preferences and workflow. 

Here's how you can do it:

1. **Locate or Create `.vimrc`:**

- Open your terminal or command prompt.
- Navigate to your home directory by typing cd `~`.
- Check if you already have a `.vimrc` file by typing `ls -a`. If you don't see `.vimrc` listed, you can create one by typing `touch .vimrc`.

2. **Edit `.vimrc`:**

- Use a text editor to open the `.vimrc` file. For example:

```bash
vim ~/.vimrc
```

- This will open the `.vimrc` file in Vim for editing.

3. **Add Customizations**:

- You can add various configurations and settings to your .vimrc file. Here are a few examples:
    - Set options such as syntax highlighting, line numbers, and tab size:
```vim
syntax on
set number
set tabstop=4
```

- Define key mappings for custom commands or shortcuts:

```vim
nnoremap <F2> :w<CR>
inoremap <F2> <Esc>:w<CR>
```

- Set colorscheme:
  
```vim
colorscheme desert
```

- Define custom functions or commands:

```vim
function! MyCustomCommand()
    echo "This is a custom command!"
endfunction
command MyCustomCommand :call MyCustomCommand()
```

- Configure plugin settings or load plugins:

```vim
" Example plugin configuration
" Plugin 'tpope/vim-fugitive'
```

Customize according to your preferences and needs. You can find many resources online with tips and configurations for `.vimrc`.

4. **Save and Exit:**

- Once you've made your desired changes, save the file by pressing `Esc` to exit insert mode (if you're in insert mode), then type `:w` and press Enter.
- Exit Vim by typing `:q` and pressing Enter.

5. **Apply Changes:**

- After editing your `.vimrc` file, the changes will take effect the next time you open Vim or whenever you reload Vim configurations. You can reload Vim configurations without restarting Vim by typing `:source ~/.vimrc` and pressing `Enter` while in Vim.

By customizing your `.vimrc` file, you can make Vim work exactly how you want it to, improving your productivity and enhancing your editing experience.

Go back to [Contents](#contents).



### Examples of `.vimrc` Customizations

Let's dive deeper into customizing Vim behavior by exploring additional configurations and settings you can add to your `.vimrc` file:

1. **Syntax Highlighting:**

- Enable syntax highlighting to colorize different elements of code for better readability:

```vim
syntax on
```

2. **Line Numbers:**

- Display line numbers to easily reference specific lines in the file:

```vim
set number
```

3. **Tab Settings:**

- Set the number of spaces a tab character represents:

```vim
set tabstop=4     " Set tab width to 4 spaces
set expandtab     " Use spaces instead of tab characters
```

4. **Indentation Settings:**

- Define how Vim handles indentation:

```vim
set autoindent    " Automatically indent new lines based on previous lines
set smartindent   " Smart indentation based on syntax
```

5. **Search Settings:**

- Adjust settings related to searching for text within files:

```vim
set ignorecase    " Ignore case when searching
set smartcase     " Case-sensitive search if any uppercase characters are used
set hlsearch      " Highlight search results
```

6. **Visual Settings:**

- Configure options related to visual appearance:

```vim
set background=dark    " Set background color (dark or light)
colorscheme desert     " Set color scheme (replace 'desert' with your desired scheme)
```

7. **Custom Key Mappings:**

- Define custom key mappings for executing commands or shortcuts:

```vim
nnoremap <F2> :w<CR>    " Map F2 to save the file
inoremap <F2> <Esc>:w<CR>  " In insert mode, also save when pressing F2
```

8. **Custom Functions and Commands:**

- Define your own functions or commands for custom behavior:

```vim
function! MyCustomCommand()
    echo "This is a custom command!"
endfunction

command MyCustomCommand :call MyCustomCommand()
```

9. **Plugins and Plugin Settings:**

- Manage plugins and configure their settings (if you're using a plugin manager like Vundle or Pathogen):

```vim
" Plugin management (e.g., Vundle)
" Plugin 'tpope/vim-fugitive'   " Example plugin configuration
```

10. **Miscellaneous Settings:**

- There are many other settings you can tweak to customize Vim to your liking. Explore the Vim documentation or online resources for more options.

Remember, Vim's flexibility allows you to tailor it precisely to your needs, whether you're a developer, writer, or any other kind of user. Experiment with different configurations in your `.vimrc` file to find what works best for you.

Go back to [Contents](#contents).
