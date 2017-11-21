import json
import argparse
import os
import shutil
import sys
import zipfile

parser = argparse.ArgumentParser(description="The path of your src/")
parser.add_argument('path')

args = parser.parse_args()

picto_folder = args.path + "/platform/ods/core/static/pictos/img/set-v3/pictos/"
reference_file = args.path + "/platform/ods/localepictos/reference.json"
rst_file = os.path.join(os.getcwd(),"icons_cheatsheet/icons_cheatsheet.rst")

# Debug
#print(picto_folder)
print(reference_file)
print(rst_file)
#print(os.path.isdir(picto_folder))
#print(os.path.isfile(reference_file))

myzip = zipfile.ZipFile(os.path.join(os.getcwd(),"ODS-icons.zip"), 'w')
src_files = os.listdir(picto_folder)
for i,file_name in enumerate(src_files):
    full_file_name = os.path.join(picto_folder, file_name)
    if (os.path.isfile(full_file_name)):
        sys.stdout.write("#")
        shutil.copy(full_file_name,os.path.join(os.getcwd(),"icons_cheatsheet/icons/"))
        myzip.write(full_file_name,os.path.basename(full_file_name))

myzip.close()
sys.stdout.write('-')
sys.stdout.write(str(len(src_files)))
sys.stdout.write(' icons copied\n')
sys.stdout.write('Zip created\n')


# Parse reference JSON 
jsonfile = open(reference_file)
input_json = json.load(jsonfile)
jsonfile.close()
results = []
out_file = open(rst_file,"w") 

# Write page title
out_file.write('Icons cheatsheet\n================\n\n')

out_file.write('These icons are distributed under the `Creative Commons Licence CC0 <https://creativecommons.org/publicdomain/zero/1.0/>`_ \n\n')
out_file.write('You can also :download:`download all the icons in zip </ODS-icons.zip>` (SVG, minified) 1.1Mb\n\n')
out_file.write('These icons can be selected as a marker or caption in maps or pasted directly in widget code\n\n')


for category in input_json.get('categories', []):
    col_num = 0
    res = {}

    out_file.write("{}\n".format(category.get('title')))

    # For each title write title
    out_file.write('-' * len(category.get('title')))
    out_file.write("\n\n")
    # Write category keywords
    #out_file.write("Keywords: {}\n\n".format(' '.join(category.get('keywords_cat', []))))

    # Add an icon-block class for CSS layout
    out_file.write("  .. container:: ods-icon-block\n\n")

    for icon in category.get('icons', []):

        # Add an icon-plus-captions class for CSS layout
        out_file.write("    .. container:: ods-icon-plus-caption tooltip\n\n")

        # Try to inline SVG but triggers too many errors - saving
        #out_file.write("      .. raw:: html\n\n")
        #out_file.write("         <object data=\"../_images/{}.svg\" type=\"image/svg+xml\"></object>\n\n".format(icon.get('filename')))

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

        # Tooltip to display keywords if someone asks 
        #out_file.write("      .. container:: tooltiptext\n\n")
        #out_file.write("        .. container:: ods-tooltip-filename\n\n")
        #out_file.write("            ods-{}\n\n".format(icon.get('filename')))
        #out_file.write("        .. container:: ods-tooltip-keywords\n\n")
        #out_file.write("            Keywords: {}\n\n".format(' '.join(icon.get('keywords', []))))


        out_file.write("\n")

sys.stdout.write('Page created\n')