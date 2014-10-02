This repository contains documentation resources for OpenDataSoft platform, APIs and tools.

### Content structure
The `content` folder contains the following levels:
```
- content (root)
	- collection
		- category
			- article
```

Each collection, category and article folder can contain a `metadata.yaml` file containing a title for the element and optionally an `order` property to handle the ordering of this element among its siblings.
For example the "knowledge-base" collection folder could contain the following `metadata.yaml` file:
```yaml
title: Knowledge base
order: 1
```

Each article folder contains an `article.md` file containing the article content itself as Markdown.
The article folder may also contain an `images` folder with images used by the article; for example `![My Image](my-image.png)` will refer to the file `my-image.png` inside the `images` folder.

### Building the documentation
#### HelpScout
First, set up your Python installation (a virtualenv is recommended).
```python
pip install -r requirements.txt
```

Then build the documentation on HelpScout using your HelpScout API key:
```python
python scripts/helpscout.py <HelpScout API key>
```
