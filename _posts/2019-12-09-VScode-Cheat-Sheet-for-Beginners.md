---
layout: post
icon: star-o
title: "VScode Cheat Sheet for Beginners"
author: 2019sungmi
tags: [vscode, settings, cheatsheet, coding]
---

I recently had some time to organize my VScode extensions and wanted to share my settings and shortcuts I find very useful.

## VScode commands (for Windows)

### 1. **Toggle command _( Ctrl + / )_**

![toggle command](/img/blog/vscode/vscode_short_comment.png)

- THE MOST IMPORTANT SHORTCUT OF ALL
- You can easily toggle comment codeblocks!

### 2. **Same word selector _( Ctrl + D )_**

![same word select](/img/blog/vscode/vscode_short_same.png)

- Select the word and press ctrl+D.
- For multiple words, use ctrl+D multiple times.
- Use this to replace words at the same time.

### 3. **Insert multi cursor _( Alt + Click )_**

![multi cursor](/img/blog/vscode/vscode_short_mulitcursor.png)

- Insert cursor and edit multiple lines at the same time

### 4. **Move code line up and down _( Alt + Arrowkey )_**

![move code up1](/img/blog/vscode/vscode_short_move1.png)
![move code up2](/img/blog/vscode/vscode_short_move2.png)

- No more copy paste when you have to move your code line!

### 5. **Indent in and out _( Ctrl + ] or Ctrl+ [ )_**

- Use shortcut keys to indent/outdent your codeblock!

## Vscode Extensions (Global)

All extensions can be found and downloaded from the Vscode extension tab.

### Material Theme

![material theme](/img/blog/vscode/vscode_ext_materialtheme.png)

Set a theme for your vscode.
Better looking environment, better workflow!

### Bracket Pair Colorizer 2

![bracket pair](/img/blog/vscode/vscode_ext_bracket.png)

Ever got stressed because you got sick of matching the end brackets to the start brackets?
With Bracket Pair it's easy to see mistakes!

### Todo Tree

_Screenshot shows my custom settings for Todo Tree!_

![todo tree](/img/blog/vscode/vscode_ext_todotree.png)

This is an awesome in-code todo list manager. Just write TODO: or FIXME: (default tags) in your code and Todo tree will automatically update your todo list!

If you want to edit the settings or add new tags, you can easily go to File>Preferences>Settings and add changes to your settings.json file!

My custom setting looks like this:

```JSON
{
    "todo-tree.highlights.enabled": true,
    "todo-tree.highlights.defaultHighlight": {
        "type": "text and comment",
    },
    "todo-tree.highlights.customHighlight": {
        "TODO": {
            "foreground": "#2f3542",
            "background": "#f6b93b",
            "iconColour": "#f39c12",
            "icon": "issue-opened",
            "type": "line"
        },
        "FIXME": {
            "foreground": "#2f3542",
            "background": "#e55039",
            "iconColour": "#e55039",
            "icon": "flame",
            "type": "line"
        },
        "REVIEW": {
            "foreground": "#2f3542",
            "background": "#9980FA",
            "iconColour": "#6c5ce7",
            "icon": "eye",
            "type": "line"
        },
        "NOTE": {
            "foreground": "#2f3542",
            "background": "#7bed9f",
            "iconColour": "#2ed573",
            "icon": "info",
            "type": "line"
        }
    },
    "todo-tree.general.tags": [
        "TODO",
        "FIXME",
        "REVIEW",
        "NOTE"
    ]
}
```

Simply add this to your settings.json file and you will be good to go! (If you already have other settings, be sure to paste this code without the outest curly brackets!)

### _...install code linting extensions for your codes!_

## Vscode extensions (by type)

### Python

- indent-rainbow

  ![indent rainbow](/img/blog/vscode/vscode_ext_indet.png)
  
- Python Preview

  ![python preview](/img/blog/vscode/vscode_ext_pyprev.png)

### Markdown

- Markdown Preview Github Styling
  
  ![md preview github style](/img/blog/vscode/vscode_ext_md-git.png)
- Markdown Shortcut
  
  ![md shortcut ](/img/blog/vscode/vscode_ext_mdshort.png)

### Javascript

- Turbo Console Log
  
  ![turbo console log](/img/blog/vscode/vscode_ext_jsturbo.png)
- Prettier
  
  ![prettier](/img/blog/vscode/vscode_ext_prettier.png)
