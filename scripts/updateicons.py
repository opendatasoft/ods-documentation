import argparse
import json
import os
import shutil
import zipfile

src_path = "source/pictograms_reference"
zip_path = os.path.join(src_path, "ODS-icons.zip")

parser = argparse.ArgumentParser(description="Your platform/ full path")
parser.add_argument('path')

args = parser.parse_args()

platform_pictos_path = os.path.join(args.path, "ods/core/static/pictos/img/set-v3/pictos/")
platform_reference_path = os.path.join(args.path, "ods/localepictos/reference.json")
rst_path = os.path.join(os.getcwd(), src_path, "pictograms_reference.rst")

# Build zip file with all pictos and retrieve them in src_path

icons_zip = zipfile.ZipFile(zip_path, 'w')

platform_pictos_files = os.listdir(platform_pictos_path)
counter = 0

for filename in platform_pictos_files:
    file_uri = os.path.join(platform_pictos_path, filename)
    if os.path.isfile(file_uri):
        counter += 1
        shutil.copy(file_uri, os.path.join(os.getcwd(), src_path, "icons"))
        icons_zip.write(file_uri, os.path.basename(file_uri))

icons_zip.close()

# Write Feedback
print("{} icons copied and zip created".format(counter))

# Parse reference JSON
with open(platform_reference_path) as f:
    input_json = json.load(f)

results = []
out_file = open(rst_path, "w")

# Write page title
out_file.write("""Pictograms reference
====================

OpenDataSoft's geographical pictograms are minified scalable vector icons that can be used freely anywhere.

These pictograms can be selected as a marker or as a map caption inside OpenDataSoft's icon picker or used directly in widget code.
To use the pictograms in a widget code simply paste the name starting with ods (e.g. ``ods-hotel``).

These icons are distributed under the `Creative Commons Licence CC0 <https://creativecommons.org/publicdomain/zero/1.0/>`_ .

You can also :download:`download all the icons in zip <ODS-icons.zip>` (SVG, minified, 1.1Mb).
You will need to use a vector image editing software or an svg inliner to change their color.

""")

for category in input_json.get('categories', []):
    col_num = 0
    res = {}

    out_file.write("{}\n".format(category.get('title')))

    # For each title write title
    out_file.write('-' * len(category.get('title')))
    out_file.write("\n\n")

    # Add an icon-block class for CSS layout
    out_file.write("  .. container:: ods-icon-block\n\n")

    for icon in category.get('icons', []):
        # Add an icon-plus-captions class for CSS layout
        out_file.write("    .. container:: ods-icon-plus-caption\n\n")

        # For each icon write the icon
        out_file.write("      .. image:: icons/{}.svg\n".format(icon.get('filename')))
        out_file.write("         :width: 30pt\n")
        out_file.write("         :height: 30pt\n")
        out_file.write("         :class: ods-icon\n")
        out_file.write("         :alt: {}\n\n".format(icon.get('name')))

        # Add an icon-caption class for CSS layout
        out_file.write("      .. container:: ods-icon-caption\n\n")

        # Add an two classes for CSS layout
        out_file.write("        .. container:: ods-icon-caption-name\n\n")
        out_file.write("           {}\n".format(icon.get('name')))
        out_file.write("        .. container:: ods-icon-caption-filename\n\n")
        out_file.write("           ods-{}\n\n".format(icon.get('filename')))

        out_file.write("\n")

out_file.close()

# Write Feedback
print("Page created")
