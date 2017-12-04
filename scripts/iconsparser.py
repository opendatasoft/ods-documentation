import json
import argparse


parser = argparse.ArgumentParser()
parser.add_argument('file', type=argparse.FileType('r'))
parser.add_argument('out_file', type=argparse.FileType('w'))

args = parser.parse_args()

# Parse reference JSON 
input_json = json.load(args.file)
results = []
with args.out_file as out_file:

    # Write page title
    out_file.write('Icons cheatsheet\n================\n\n')


    for category in input_json.get('categories', []):
        col_num = 0
        res = {}

        out_file.write("{}\n".format(
            category.get('title')))

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
            out_file.write("      .. image:: ./pictos/{}.svg\n".format(icon.get('filename')))
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

            # Tooltip to display keywords if someone asks - saving
            #out_file.write("      .. container:: tooltiptext\n\n")
            #out_file.write("        .. container:: ods-tooltip-filename\n\n")
            #out_file.write("            ods-{}\n\n".format(icon.get('filename')))
            #out_file.write("        .. container:: ods-tooltip-keywords\n\n")
            #out_file.write("            Keywords: {}\n\n".format(' '.join(icon.get('keywords', []))))
      

        out_file.write("\n")