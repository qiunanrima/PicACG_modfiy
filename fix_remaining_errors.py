import os
import re

def fix_file(file_path, replacements):
    if not os.path.exists(file_path): 
        print("Missing:", file_path)
        return
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()
    
    original = content
    for old, new in replacements.items():
        content = content.replace(old, new)
        
    if content != original:
        with open(file_path, "w", encoding="utf-8") as f:
            f.write(content)
        print("Fixed:", file_path)

# DownloadService and ComicViewerActivity
repls = {
    "e = e2;": "Exception e = e2;",
    "e = e3;": "Exception e = e3;",
    "e = e5;": "Exception e = e5;",
    "e = e6;": "Exception e = e6;"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\services\DownloadService.java", repls)

repls = {
    "e = e2;": "Exception e = e2;",
    "io.socket.client.b.a(new DbComicViewRecordObject(": "com.picacomic.fregata.utils.b.a(new DbComicViewRecordObject("
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\activities\ComicViewerActivity.java", repls)

# ChatroomFragment and ChatroomService
repls = {
    "th = th2;": "Throwable th = th2;",
    "public void run() throws Throwable": "public void run()",
    "public void onClick(View view) throws Throwable": "public void onClick(View view)"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\ChatroomFragment.java", repls)
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\services\ChatroomService.java", repls)

repls = {
    "public void run() throws Throwable": "public void run()"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\utils\ChatroomGame\b.java", repls)

# Canvas save
repls = {
    "canvas.save(1);": "canvas.save();"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\utils\views\ZoomableListView.java", repls)
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\utils\views\ZoomableRecyclerView.java", repls)

# CropImageFragment
repls = {
    "CropImageView.CropMode.SQUARE": "CropImageView.CropMode.aM",
    "CropImageView.CropMode.FREE": "CropImageView.CropMode.aP",
    "CropImageView.RotateDegrees.ROTATE_M90D": "CropImageView.RotateDegrees.aY",
    "CropImageView.RotateDegrees.ROTATE_90D": "CropImageView.RotateDegrees.aV"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\CropImageFragment.java", repls)

# LockDialogFragment
repls = {
    "R.style.Theme.Black.NoTitleBar.Fullscreen": "android.R.style.Theme_Black_NoTitleBar_Fullscreen"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\LockDialogFragment.java", repls)

# PicaAppFragment
repls = {
    "DefaultWebClient.OpenOtherPageWays.ASK": "DefaultWebClient.OpenOtherPageWays.eq"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\PicaAppFragment.java", repls)

# ExpCircleView
repls = {
    "a.C0006a.ExpCircleView": "com.picacomic.fregata.R.styleable.ExpCircleView"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\utils\views\ExpCircleView.java", repls)

# RegisterFragment
repls = {
    "for (final int i = 0; i < this.buttons_gender.length; i++) {": "for (int i = 0; i < this.buttons_gender.length; i++) {\n            final int finalI = i;",
    "RegisterFragment.this.aa(i);": "RegisterFragment.this.aa(finalI);"
}
fix_file(r"D:\projects\picacg_orginal\ProjectSrc\java\com\picacomic\fregata\fragments\RegisterFragment.java", repls)

