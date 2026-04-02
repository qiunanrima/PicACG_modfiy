import os
import re

file_path = r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\ChatroomFragment.java"
with open(file_path, "r", encoding="utf-8") as f:
    text = f.read()

# 1. Remove throws Throwable
text = text.replace(") throws Throwable {", ") {")

# 2. Fix the synchronized block in a()
text = re.sub(
    r'synchronized\s*\([^)]+\)\s*\{\s*Throwable\s*th;\s*try\s*\{\s*(.*?)\s*\}\s*catch\s*\(Throwable\s*th2\)\s*\{\s*th\s*=\s*th2;\s*\}\s*\}\s*throw\s*th;',
    r'synchronized(this.arrayList) {\n\1\n}',
    text,
    flags=re.DOTALL
)

# Wait! The replace using regex might be fragile if there are multiple or nested. Let's do it safer.
text = text.replace("Throwable th;", "Throwable th = null;")
text = text.replace("throw th;", "if (th != null) th.printStackTrace();")
text = text.replace("th = th2;", "th = th2;") # keep it

with open(file_path, "w", encoding="utf-8") as f:
    f.write(text)
print("done")
