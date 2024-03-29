**N.B.** This documentation is beeing deprecated and the content should be added/updated on https://userguide.opendatasoft.com/

# Opendatasoft's documentation

This repository contains documentation resources for the Opendatasoft platform, APIs, and tools.

All content is written in English. Translations are managed with transifex at https://www.transifex.com/opendatasoft/documentation-5/
Please ask to join the group to contribute to the translation effort.

## Setup

First, set up your Python installation. Creating a Python virtual environment using virtualenv is recommended.
Install dependencies by running:
```python
pip install -r requirements.txt
```

To push to and retrieve from transifex the translation files (.po), you must be a maintainer on the project.
Once this is done, configure your Transifex environment:

``` bash
tx init --user=<username> --pass=<password>
sphinx-intl update-txconfig-resources --pot-dir build/locale --transifex-project-name documentation-5
```

## Building the documentation

To build the documentation in HTML format:
```bash
make html
```

Please be aware that Sphinx builds fully independent pages and that it only builds pages that have changed since the last build. This means that you may experience different menus on different pages unless you clean the build directory beforehand.
```bash
rm -r build && make html
```

To list translatable strings and retrieve their translations from Transifex:
```bash
make translations
```

To build the localized documentation using translated strings from Transifex:
```bash
make localizedhtml
```

The generated HTML files will be available in `/build/html`. You can either open the index.html file in your browser or run
`make server` and go to `http://localhost:9000/build/html`.

## Building the PDF documentation

To build the documentation in English:
```bash
make pdf
```

To build the localized version:
```bash
make pdf-fr
```

**N.B.** The PDF generator fails when it encounters untranslated texts.
You may have to comment not fully translated sections out of the root `index.rst` so that the build passes.

To generate the PDF version of the manual, you will need to do several things:
- Open the illustrator files in an image editing software (you can use Affinity Designer, Sketch, or Adobe Illustrator).
- Update the date of the front cover for the language you're working on.
- Export the cover as a PDF.
- Generate the PDF.
- Remove the default cover.
- Stitch the generated cover to the generated PDF manual (you can use Apple Preview).
- Because the SVG fails, it's preferable to remove the final sections by deleting the pages. Note that you can only do this at the end of the document, or you will mess up the page counts.
- If the page break shows unwante sections headers, you can use a white rectangle to hide some elements.

## Troubleshooting

When building the documentation, you may run into an error about an unknown locale UTF-8. In that case, you need to use
the following:
```
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

## Workflow

1. Create a new branch for your work.
2. Create a pull request to develop.
3. Once the pull request is merged, you can work on the translations using "make translations".

The release works with a pull request into master and pushing the updated master branch to GitHub.

Travis will then build the HTML documentation in all languages and deploy it.

## Translations

Translations are managed through Transifex at https://www.transifex.com/opendatasoft/documentation-5/

Main documentation resources:

* http://sphinx-doc.org/intl.html
* http://docs.transifex.com/client/

### Push new documentation to Transifex

```
make push-translations
git add source .tx/config
git commit -m "Rebuilt translations sources"
```


### Retrieve translations from Transifex

```
make pull-translations
make localizedhtml
```
You need to fix all warnings returned during HTML file generation in .po files and Transifex (they are blocking during release).

If you know that only one language was impacted, you can use `make pull-translations-fr` and `make localizedhtml-fr` to only fetch and build the French version for example.
```
git add source
git commit -m "Update translations"
```

### Build translated documentation

Shortcut: `make localizedhtml`

```bash
sphinx-intl build
make -e SPHINXOPTS="-D language='fr'" html
```

## Writing content

Documentation is written in reStructuredText (rst). While not as popular as Markdown, it allows for richer pages.

The syntax reference is available at http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html but you should really start with https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html.

It would be best if you strived to constrain the topic of each page to a single topic. Related topics should be placed within the same folder, but topics should all have their dedicated pages.

### Writing guidelines

- Write short sentences about simple concepts (as much as possible).
- Keep a neutral tone; the content should be easy to reuse inside
a blog post or a newsletter, for example.
- Use present tense.
- When describing steps, use imperative. For example, "Click on this button, then type in the title...".
- When talking about Opendatasoft as a company, use "us" or "Opendatasoft".

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

To reference an internal page (here, the people.rst page in the company folder):
```
    :doc:`Monty Python members </company/people>`
```
To reference any external page (note the trailing `_`):
```
    `Monty Python members <https://en.wikipedia.org/wiki/Monty_Python>`_
```
To make a reference to another part of the same document, you can use internal links.
In translations, the reference must be translated using the exact same wording as the referenced title section:
```
    `Available classes`_
```
translated in French to
```
    `Classes disponibles`_
```
If you have multiple links with the same name, then you will need to transform your named references into anonymous references by adding an extra `_`:
```
    `link <http://google.com>`__
    `link <http://google.fr>`__
```
To have a link opened in a new window or tab using target="_blank", you need to use a substitution:
```
Check this awesome |externalwebsite|
```
To raw HTML using the target="_blank" attribute:
```
.. |externalwebsite| raw:: html

   <a href="http://www.externalwebsite.com/" target="_blank">external website</a>
```

In an array, add an empty line:
```
* * GeoJSON
     * .json, .geojson
     *
     *
       :doc:`Geojson </extractors/geojson>`
```
### Images

All images should be named following this norm:

> doc_page_name__image-name--language.ext

Where:

* `doc_page_name` is the name of the `.rst` file the image is originally referenced from (using `_` as tokens separator),
* `image-name` is the name of the image itself. It should describe its content (using `-` as tokens separator).
* `language` is either `en`, `fr`, `de`, `es`, etc.

If you abide by this convention, you can include images using the `localizedimage` and `localizedfigure` directives
as such:

> .. localizedimage:: doc_page_name__image-name.ext

> .. localizedfigure:: doc_page_name__image-name.ext

The image postfixed will be included in the current build language. If the image doesn't exist, it will
fall back to the English version of the image.

If you need to annotate images (add circles, arrows, basic text), you can download Skitch
(https://evernote.com/skitch/). It is free and very handy for these basic edits.

### ODS elements

```
:ods-keycap:`Keycap`

:ods-button-grey:`Button Grey`

:ods-button-blue:`Button Blue`

:ods-button-orange:`Button Orange`

:ods-help-text:`Help text`

:ods-checkbox:`Checkbox`

:ods-page-title:`Element > Page title`

:ods-tab:`Tab`
```

<img src="source/elements.png?raw=true" alt="ODS elements preview" width="200"/>

### Icons from FontAwesome
To use an icon from FontAwesome, add a substitution between | (spaces are important)
```
Check this awesome |externalwebsite| |externallink|
```

To raw HTML including the Font Awesome <i> link
```
.. |externallink| raw:: html

   <i class="fa fa-external-link" aria-hidden="true"></i>
```
Note that the external link decorator is added automatically.

### Updating the cheatsheet on the documentation

How to:

- Change directory to your documentation root (for example, `source/`)
- Run the script `updateicons.py` with your platform root as a parameter (for example, `python script/updateicons.py ~/src/platform`)

This script will perform the following operations:

- Copy all icons from the codebase to the documentation.
- Zip all these icons for download.
- Generate the cheatsheet .rst file.
- You still have to generate the documentation using `make html`.
