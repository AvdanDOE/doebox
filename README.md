![Doebox Banner](https://github.com/AvdanDOE/readme_doeassets/blob/main/doebox_banner.png)

# doebox

The desktop environment element for AvdanDOE.

## components

Doebox is built upon various things, like customized versions of Cutefish DE (not included in this repository, but should be ran on top of), elkowar's wacky widgets, plank and others.

## separate installation

You are beforehand heavily discouraged from running the doebox outside of AvdanDOE, but you can do so nevertheless, following the instructions.

1. Make sure you have eww (elkowar's wacky widgets), material design icons font, harmonyos sans font and plank (bare minimum) on your system. It is encouraged you use a binary version of eww, that is added to path, otherwise you might have to spend some time configuring it to run its own commands outside of the code.
2. Go into the `eww.yuck` file in `dock` and change the effective configuration path (`ewwCmd` variable).
3. Place respective configuratons into their folders (for info refer to the packages' manuals).
4. Launch plank with `plank`, open its settings and configure it to use the proper theme and positions (align wherever).
5. Launch eww with `eww -c 'config path' open-many dockstatus dockmain dockstatic dockdynamic`
