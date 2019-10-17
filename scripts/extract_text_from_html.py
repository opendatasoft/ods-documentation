from bs4 import BeautifulSoup

if __name__ == '__main__':
    to_translate = set()
    soup = BeautifulSoup(open("../source/publishing_data/05_processing_data/processors/widgets/filename--en.html"), "html.parser")
    date = soup.find_all()
    for element in date:
        for original_text in element.text.splitlines():
            if original_text:
                to_translate.add(original_text)
    writing_file = open("to_translate.txt", "w")
    writing_file.writelines("%s\n" % t for t in to_translate)
    writing_file.close()