.class public Lcom/picacomic/fregata/c/b;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static uP:Ljava/lang/String;


# direct methods
.method public static aD(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    const-string v0, "cantonese"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance p0, Ljava/util/Locale;

    const-string v0, "yue"

    const-string v1, "HK"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "japanese"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object p0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    return-object p0

    :cond_1
    const-string v0, "english"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 23
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object p0

    .line 26
    :cond_2
    sget-object p0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    return-object p0
.end method
