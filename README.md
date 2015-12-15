# OpenDataSoft's documentation

This repository contains documentation resources for OpenDataSoft platform, APIs and tools.

## Content structure
Each language's documentation is entirely contained in a `docs-(language)`
(`docs-en`,  `docs-fr`) at the root of the repository; this includes the content
itself, and all the tools necessary to build the documentation.

## Writing articles
Documentation can be written in either Markdown (md) or reStructuredText (rst). The latter isn't as popular as
the former and its syntax isn't as easy but it allows for richer pages. In order to learn the rudiments of rst, you can
toy with the online rst editor available at http://rst.ninjs.org/

The documentation supports a strict interpretation of Markdown ([CommonMark](http://commonmark.org/)), and doesn't support
tables for example.

### Writing guidelines
- Write short sentences about simple concepts (as much as possible)
- Keep a neutral tone; the content should be easy to reuse inside
a blog post or a newsletter for example
- Use present tense
- When describing steps, use imperative. e.g. "Click on this button, then type in the title..."
- When talking about OpenDataSoft as a company, use "us" or "OpenDataSoft"

### Markdown guidelines

#### Images
If you need to add an image in an article, just put the image in the same folder
as the article, and use this syntax:
```
![Refine on facets](facet-explore-en.jpg)
```

If you need to annotate images (add circles, arrows, basic text), you can download Skitch
(https://evernote.com/skitch/). It is free and very handy for these basic edits.

#### Tables
If you need to write tables in a Markdown article, for now you have to use HTML.
Keep in mind that the content in a HTML table in Markdown isn't interpreted in
Markdown, so for example you can't use `**this is bold**` inside a table cell,
instead you'll have to use real HTML all the way (`<strong>this is bold</strong>`).

### RST guidelines

#### Titles

```
    1st level title
    ===============
    
    2nd level title
    ---------------
    
    3rd level title
    ~~~~~~~~~~~~~~~
    
    4th level title
    ^^^^^^^^^^^^^^^
```

#### Links

To reference an internal page
```
    :doc:`Monty Python members </people>`
```
To reference any external page (note the trailing `_`)
```
    `Monty Python members <https://en.wikipedia.org/wiki/Monty_Python>`_
```

## Building the documentation

First, set up your Python installation (a virtualenv is recommended).
```python
pip install -r requirements.txt
```

### Sphinx

Move to the version of the doc you want to build(`/docs-fr` or `/docs-en`) and use `make`.
```bash
make html
```

You may run into an error about an unknown locale UTF-8. In that case you need to use the following:
```
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

The generated html will be available in `/docs-LANGUAGE/build/html`.

### Browsing locally the documentation
You can just open `/docs-LANGUAGE/build/html/index.html` in your browser, it should
work directly over the filesystem without having to run a local HTTP server.

## Translations

Translations are managed through Transifex at https://www.transifex.com/opendatasoft/documentation-5/

Main documentation resources:

* http://sphinx-doc.org/intl.html
* http://docs.transifex.com/client/


### Translating images

* https://wiki.typo3.org/Localization_(reST):
* https://groups.google.com/forum/#!topic/sphinx-users/CursdollSZo

### Setup

``` bash
pip install sphinx-intl
pip install transifex-client

tx init --user=<username> --pass=<password>
sphinx-intl update-txconfig-resources --pot-dir build/locale --transifex-project-name documentation-5
```

### Build po files and push them to transifex

Shortcut: `make translations`

``` bash
make gettext
sphinx-intl update -p build/locale -l fr
tx push -s
```

### Fetch translations from transifex and build translated documentation

Shortcut: `make localizedhtml`

```bash
tx pull -l fr
sphinx-intl build
make -e SPHINXOPTS="-D language='fr'" html
```
