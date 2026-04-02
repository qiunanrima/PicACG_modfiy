import os
def replace_in_dir(d):
    for root, _, files in os.walk(d):
        for f in files:
            if not f.endswith('.java'): continue
            path = os.path.join(root, f)
            with open(path, 'r', encoding='utf-8') as file:
                content = file.read()
            new_content = content.replace('com.picacomic.fregata.a.', 'com.picacomic.fregata.a_pkg.')
            new_content = new_content.replace('import com.picacomic.fregata.a;', 'import com.picacomic.fregata.a_pkg.a;')
            if new_content != content:
                with open(path, 'w', encoding='utf-8') as file:
                    file.write(new_content)
                print('Updated ' + path)
replace_in_dir('D:/projects/picacg_orginal/ProjectSrc/java')
