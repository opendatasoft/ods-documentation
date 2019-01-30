from docutils import nodes

def add_em_class(name, rawtext, text, lineno, inliner, options={}, content=[]):
    """
    Returns 2 part tuple containing list of nodes to insert into the
    document and a list of system messages.  Both are allowed to be
    empty.

    :param name: The role name used in the document.
    :param rawtext: The entire markup snippet, with role.
    :param text: The text marked with the role.
    :param lineno: The line number where rawtext appears in the input.
    :param inliner: The inliner instance that called us.
    :param options: Directive options for customization.
    :param content: The directive content for customization.
    """
    node = nodes.emphasis(text=text, classes=[name])
    return [node], []

def setup(app):
    app.add_role('ods-keycap', add_em_class)
    app.add_role('ods-help-text', add_em_class)
    app.add_role('ods-page-title', add_em_class)
    app.add_role('ods-tab', add_em_class)
