# cocofish-magic
A zsh theme modified from af-magic, which is simple and lean, with python environment prompt colored.

## Appearance
<img src="./src/theme-screenshot.avif" alt="screenshot"/>

## Features

Few of the Oh_My_Zsh! themes was able to modify the python environment prompt's color. They are white and plain by default and therefore easily get blended into blocks of terminal responses and you are hard to find your cursor to start commanding again.

This theme was able to modify the "(base)" prompt (or any of your other environment names) into a light blue color, and it is also easy to modify it into other colors or even layouts. 

## Usage

### Download

Download the `cocofish-magic.zsh-theme` file into your custom theme directory. Namely, put your downloaded file into: 

```bash
$ZSH_CUSTOM
└── themes
    └── cocofish-magic.zsh-theme
```

### Edit .rc files

We have two .rc files to edit. 

First edit the following line in your `.zshrc`

```bash
ZSH_THEME="cocofish-magic"
```

Then you should edit `.condarc`, setting the following as "False":

```bash
changeps1: False
```

### Rerun Zsh

Run the following command:

```bash
exec zsh
```

and we are done.

## Customize

If you want to edit the colors of the prompts, feel free to do any changes to the `.zsh-theme` file. 

In `PROMPT="..."` lines, functions `FG[123]` `fg[red]` `fg_bold[cyan]` are responsible for color modifying. You can modify the colors by changing the parameters, either name of colors or 3-digit numbers, in the bracket `[]` , and for the correspondence between the colors and the numbers, please refer to this website: https://plumbum.readthedocs.io/en/latest/colors.html
