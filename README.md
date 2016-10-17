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
tx init --user=<username> --pass=<password>
sphinx-intl update-txconfig-resources --pot-dir build/locale --transifex-project-name documentation-5
```

## Building the documentation

To build the documentation.
```bash
make html
```

Please be aware that Sphinx builds fully independant pages and that it only builds pages that have changed since the last build. Which means you may experience different menus on different pages unless you clean the build directory beforehand.
```bash
rm -r build && make html
```

To list translatable strings and retrieve their translations from transifex:
```bash
make translations
```

To build the localized documentation (using translated strings from transifex):
```bash
make localizedhtml
```

The generated html will be available in `/build/html`. You can either open the index.html file in your browser or do a
`make server` and go to `http://localhost:9000/build/html`.

## Troubleshooting

When building the documentation, you may run into an error about an unknown locale UTF-8. In that case you need to use
the following:
```
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

## Workflow

1. Create a new branch for your work
2. Create a pull request to develop
3. Once the pull request is merged, you can work on the translations using "make translations"

The release works with a pull request into master and pushing the updated master branch to github.

Travis will then build the html documentation in all languages and deploy it.

## Translations

Translations are managed through Transifex at https://www.transifex.com/opendatasoft/documentation-5/

Main documentation resources:

* http://sphinx-doc.org/intl.html
* http://docs.transifex.com/client/


### Translating images

* https://wiki.typo3.org/Localization_(reST):
* https://groups.google.com/forum/#!topic/sphinx-users/CursdollSZo

### Build .pot files, push them to transifex and retrieve .po files

Shortcut: `make translations`

``` bash
make gettext
sphinx-intl update -p build/locale -l fr
tx push -s
tx pull -f fr
```

### Build translated documentation

Shortcut: `make localizedhtml`

```bash
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

To reference an internal page (here, the people.rst page in the company folder)
```
    :doc:`Monty Python members </company/people>`
```
To reference any external page (note the trailing `_`)
```
    `Monty Python members <https://en.wikipedia.org/wiki/Monty_Python>`_
```
If you have multiple links with the same name, then you will need to transform your named references into anonymous references by adding an extra `_`
```
    `link <http://google.com>`__
    `link <http://google.fr>`__
```

### Images

If you need to annotate images (add circles, arrows, basic text), you can download Skitch
(https://evernote.com/skitch/). It is free and very handy for these basic edits.
