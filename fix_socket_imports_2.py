import os

files_to_fix = [
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\services\ChatroomService.java",
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\ChatroomGameFragment.java",
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\ChatroomFragment.java",
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\AnonymousChatFragment.java",
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\activities\ComicViewerActivity.java"
]

for file_path in files_to_fix:
    if not os.path.exists(file_path): continue
    with open(file_path, "r", encoding="utf-8") as file:
        content = file.read()
    
    # InterfaceC0017a to a
    content = content.replace("io.socket.b.a.InterfaceC0017a", "io.socket.b.a.a")
    
    # Usages of b.a and b.aE
    content = content.replace(" b.a(", " io.socket.client.b.a(")
    content = content.replace("= b.a(", "= io.socket.client.b.a(")
    content = content.replace(" b.aE(", " io.socket.client.b.aE(")
    content = content.replace("= b.aE(", "= io.socket.client.b.aE(")

    # Fix com.a.a.a not compiling, actually we skip com.a.a.a for now.

    with open(file_path, "w", encoding="utf-8") as file:
        file.write(content)
    print("Fixed " + file_path)
