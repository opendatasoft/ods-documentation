# OpenDataSoft's documentation

This repository contains documentation resources for OpenDataSoft platform, APIs and tools.

All content in written in english, translations are managed with transifex at https://www.transifex.com/opendatasoft/documentation-5/
Please ask to join the group to contribute to the translation effort.

## Setup

First, set up your Python installation (a virtualenv is recommended).
```python
pip install -r requirements.txt
```

To be able to push to and retrieve from transifex the translation files (.po), you'll need to be a maintainer on the project. 
Once this is done, you'll have to configure your environment with:

``` bash
pip install sphinx-intl
pip install transifex-client

tx init --user=<username> --pass=<password>
sphinx-intl update-txconfig-resources --pot-dir build/locale --transifex-project-name documentation-5
```

## Building the documentation

To build the documentation.
```bash
make html
```

To build the localized documentation (fetching translations from transifex):
```bash
make localizedhtml
```

The generated html will be available in `/build/html`. You can either open the index.html file in your browser or do a `make server`and go to `http://localhost:9000/build/html`.

## Troubleshooting

When building the documentation, you may run into an error about an unknown locale UTF-8. In that case you need to use the following:
```
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

## Translations

Translations are managed through Transifex at https://www.transifex.com/opendatasoft/documentation-5/

Main documentation resources:

* http://sphinx-doc.org/intl.html
* http://docs.transifex.com/client/


### Translating images

* https://wiki.typo3.org/Localization_(reST):
* https://groups.google.com/forum/#!topic/sphinx-users/CursdollSZo

### Build .po files and push them to transifex

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

## Writing articles

Documentation is written in reStructuredText (rst). While not as popular as Markdown, it allows for richer pages. 

The syntax reference is available at http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html but you should really start with http://sphinx-doc.org/rest.html.

### Writing guidelines
- Write short sentences about simple concepts (as much as possible)
- Keep a neutral tone; the content should be easy to reuse inside
a blog post or a newsletter for example
- Use present tense
- When describing steps, use imperative. e.g. "Click on this button, then type in the title..."
- When talking about OpenDataSoft as a company, use "us" or "OpenDataSoft"

### Titles

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

### Links

To reference an internal page
```
    :doc:`Monty Python members </people>`
```
To reference any external page (note the trailing `_`)
```
    `Monty Python members <https://en.wikipedia.org/wiki/Monty_Python>`_
```

### Images

If you need to annotate images (add circles, arrows, basic text), you can download Skitch
(https://evernote.com/skitch/). It is free and very handy for these basic edits.
