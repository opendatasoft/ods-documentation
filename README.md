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

## Building the PDF documentation

To build the documentation in pdf:
```bash
make pdf
```

To build the localised version:
```bash
make pdf-fr
```

**N.B.** The pdf generator fails when it encounters untranslated texts.
You may have to comment not fully translated sections out of the root `index.rst` so that the build passes.

To generate the PDF version of the manual, you will need to do several things: 
- Open the illustrator files in an image editing software (you can use Affinity Designer, Sketch or Adobe Illustrator)
- Update the date of the front cover for the language you're working on 
- Export the cover as a PDF
- Generate the PDF
- Remove the ugly default cover
- Stitch the generated cover to the generated PDF manual (you can use Apple Preview)
- Because the SVG fails, it's preferable to remove the final sections (by deleting the pages - note that you can only do this at the end of the document or you will mess the page counts. 
- If page break shows unwanted sections headers, you can use a white rectangle to hide some elements. 

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
You need to fix all warnings that are produced during html file generation in .po files and Transifex (they are blocking during release).

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

## Writing articles

Documentation is written in reStructuredText (rst). While not as popular as Markdown, it allows for richer pages.

The syntax reference is available at http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html but you should really start with http://sphinx-doc.org/rest.html.

You should strive to constrain the topic of each page to a single topic. Related topics should be placed within a same folder but topics should all have their dedicated pages.

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
To make a reference to another part of the same document you can use internal links.
In translations, the reference must be translated using the exact same wording as the referenced title section
```
    `Available classes`_
```
translated in french to
```
    `Classes disponibles`_
```
If you have multiple links with the same name, then you will need to transform your named references into anonymous references by adding an extra `_`
```
    `link <http://google.com>`__
    `link <http://google.fr>`__
```
To have a link send to a target="_blank", you need to use a substitution
```
Check this awesome |externalwebsite|
```
To a raw html with the target="_blank" parameter
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

* `doc_page_name` is the name of the `.rst` file the image is originally referenced from (using `_` as tokens separator)
* `image-name` is the name of the image itself, it should describe its content (using `-` as tokens separator)
* `language` is either `en`, `fr`, `de`, `es`, etc.

If you abide by this convention, you can include images using the `localizedimage` and `localizedfigure` directives
as such:

> .. localizedimage:: doc_page_name__image-name.ext

> .. localizedfigure:: doc_page_name__image-name.ext

This will include the image postfixed with the current build language, and if the image doesn't exists, il will
fallback to the english version of the image.

If you need to annotate images (add circles, arrows, basic text), you can download Skitch
(https://evernote.com/skitch/). It is free and very handy for these basic edits.

### Icons from FontAwesome
To use an icon from FontAwesome, add a substitution between | (spaces are important)
```
Check this awesome |externalwebsite| |externallink|
```

To a raw html including the Font Awesome <i> link
```
.. |externallink| raw:: html

   <i class="fa fa-external-link" aria-hidden="true"></i>
```
Note that the external link decorator is added automatically.

### Updating the cheatsheet on the documentation

How to:

- Change directory to your documentation root (e.g: `src/ods-documentation/`)
- Run the script `updateicons.py` with your platform root as a parameter (e.g: `python script/updateicons.py ~/src/platform`)

This script will:

- Copy all icons from the codebase to the documentation
- Zip all these icons for download
- Generate the cheatsheet .rst file
- You still have to generate the documentation using a `make html`
