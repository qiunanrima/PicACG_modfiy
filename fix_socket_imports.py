import os

files_to_fix = [
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\services\ChatroomService.java",
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\ChatroomGameFragment.java",
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\ChatroomFragment.java",
    r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\AnonymousChatFragment.java"
]

for file_path in files_to_fix:
    if not os.path.exists(file_path): continue
    with open(file_path, "r", encoding="utf-8") as file:
        content = file.read()
    
    # Imports
    content = content.replace("import io.socket.b.a;\n", "")
    content = content.replace("import io.socket.client.b;\n", "")
    
    # Usages of io.socket.b.a
    content = content.replace(" a.InterfaceC0017a ", " io.socket.b.a.InterfaceC0017a ")
    content = content.replace("private a.InterfaceC0017a ", "private io.socket.b.a.InterfaceC0017a ")
    content = content.replace("new a.InterfaceC0017a()", "new io.socket.b.a.InterfaceC0017a()")
    content = content.replace("= new a.InterfaceC0017a()", "= new io.socket.b.a.InterfaceC0017a()")
    content = content.replace("(a.InterfaceC0017a)", "(io.socket.b.a.InterfaceC0017a)")
    
    # Usages of b.a
    content = content.replace(" b.a ", " io.socket.client.b.a ")
    content = content.replace("new b.a(", "new io.socket.client.b.a(")
    
    with open(file_path, "w", encoding="utf-8") as file:
        file.write(content)
    print("Fixed " + file_path)

