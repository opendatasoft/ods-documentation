import os
from docutils.parsers.rst.directives.images import Image, Figure


def _localized_file_path(file_path, language):
    index = file_path.rfind('.')
    return file_path[:index] + '--' + language + file_path[index:]


def _localized_file_exists(env, file_path):
    path = env.relfn2path(file_path, env.docname)[1]
    return os.path.exists(path)


def _handle_localized_file(self):
    # generate correct file path
    base_file_path = self.arguments[0]
    env = self.state.document.settings.env

    # try in specified language
    file_path = _localized_file_path(base_file_path, env.config.language)

    # fallback to english
    if not _localized_file_exists(env, file_path):
        file_path = _localized_file_path(base_file_path, 'en')

    self.arguments[0] = file_path


class LocalizedImage(Image):
    def run(self):
        _handle_localized_file(self)
        return super(LocalizedImage, self).run()


class LocalizedFigure(Figure):
    def run(self):
        _handle_localized_file(self)
        return super(LocalizedFigure, self).run()


def setup(app):
    app.add_directive('localizedimage', LocalizedImage)
    app.add_directive('localizedfigure', LocalizedFigure)
