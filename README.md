# geomys

> A Gopher web browser using POSIX shell script


## Installing

Move the file *geomys* to a folder in your PATH variable, or run `make install`,
by default it will be installed into *~/.local/bin*. Use *PREFIX* to override
the install location.

You need one of `nc`, `netcat`, `ncat`, or `socat` to connect to gopher servers.


## Using

Start browsing by running geomys with an optional URL:

`geomys gopher://gopher.floodgap.com/1/`

you can omit the protocol and port:

`geomys gopher.floodgap.com/1/`

no arguments takes you to *gopher.floodgap.com*:

`geomys`


### Key bindings

- `b` to go back one page
- `u` go one path segment up
- `o` to open a new URL, you'll be prompted to type it
- `r` to reload the page
- `H` to go to the home page
- `g` to follow a link in the current page, enter its number
- `s` to save the page to a file
- `m` to add the current page to bookmarks
- `M` to go to a bookmark
- `K` to delete the bookmark of the current page
- `q` to quit

Arrow keys and page up/down scroll the current page.


### Configuration

You can setup a config file at `~/.config/geomys/geomys.conf` to configure *geomys* the way you like.

The file uses a simple `key=value` style, see the complete example for the default values below.

**hints:**
* `geomys` will be appended to `cachehome`, the directory must be writable for your user.
* The `style-` keys must be ANSI style codes.

```
margin=8
homepage="gopher.floodgap.com/1/"
sty_info='\033[2m'
sty_error='\033[31;1m'
sty_linkb='\033[35m'
sty_linkt=' => \033[36;3m '
sty_search='\033[33;1m'
sty_searcht=' ? \033[36;3m '
sty_dir='\033[34;1m'
sty_text='\033[0m'
sty_bin='\033[31m'
sty_html='\033[32m'
sty_image='\033[33m'
```


### Themes

You can customize the appearance of geomys by using different themes. Here are some predefined themes you can use:


#### Dark Theme

```
sty_info='\033[2m'
sty_error='\033[31;1m'
sty_linkb='\033[35m'
sty_linkt=' => \033[36;3m '
sty_search='\033[33;1m'
sty_searcht=' ? \033[36;3m '
sty_dir='\033[34;1m'
sty_text='\033[0m'
sty_bin='\033[31m'
sty_html='\033[32m'
sty_image='\033[33m'
```


#### Light Theme

```
sty_info='\033[2m'
sty_error='\033[31;1m'
sty_linkb='\033[30m'
sty_linkt=' => \033[34;3m '
sty_search='\033[33;1m'
sty_searcht=' ? \033[34;3m '
sty_dir='\033[34;1m'
sty_text='\033[0m'
sty_bin='\033[31m'
sty_html='\033[32m'
sty_image='\033[33m'
```


#### Solarized Theme

```
sty_info='\033[2m'
sty_error='\033[31;1m'
sty_linkb='\033[38;5;136m'
sty_linkt=' => \033[38;5;141;3m '
sty_search='\033[38;5;166;1m'
sty_searcht=' ? \033[38;5;141;3m '
sty_dir='\033[38;5;33;1m'
sty_text='\033[0m'
sty_bin='\033[38;5;160m'
sty_html='\033[38;5;64m'
sty_image='\033[38;5;136m'
```


## Gopher item types

Menus show a short label before each numbered link:

| Label | Type | Meaning |
|-------|------|---------|
| TXT   | 0    | Plain text |
| DIR   | 1    | Menu / directory |
| ???   | 7    | Search (prompts for query) |
| HTM   | h    | HTML / external URL |
| BIN   | 9    | Binary (download prompt) |
| GIF   | g    | GIF image |
| IMG   | I    | Image |

Informational (`i`) and error (`3`) lines are rendered without link numbers.


## Meta

Geomys is genus that contains the Pocket Gopher, the mascot of the
Gopher internet protocol.


### Further works

- Better history
- Opening external HTTP links
- Telnet item support
- Client TLS for gopher+s (if desired)


### Contributing

Please read the [contributing file](CONTRIBUTING.md).


### Inspired by

- [ereandel](https://github.com/blmayer/ereandel)
- [gmi](https://sr.ht/~chambln/gmi/)
- [bollux](https://sr.ht/~acdw/bollux/)
