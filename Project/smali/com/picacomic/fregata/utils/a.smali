.class public Lcom/picacomic/fregata/utils/a;
.super Ljava/lang/Object;
.source "AdsLink.java"


# direct methods
.method public static dS()Ljava/lang/String;
    .locals 2

    .line 12
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->am(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android/font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http://pica-juicy.picacomic.com/android/font"

    return-object v0
.end method

.method public static dT()Ljava/lang/String;
    .locals 2

    .line 33
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->am(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android/chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http://pica-juicy.picacomic.com/android/chat"

    return-object v0
.end method

.method public static dU()Ljava/lang/String;
    .locals 2

    .line 40
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->am(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android/cat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http://pica-juicy.picacomic.com/android/cat"

    return-object v0
.end method

.method public static getDetail()Ljava/lang/String;
    .locals 2

    .line 26
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->am(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android/comic_detail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http://pica-juicy.picacomic.com/android/comic_detail"

    return-object v0
.end method
