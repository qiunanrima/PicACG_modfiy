.class interface abstract Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/TypefaceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TypefaceCompatImpl"
.end annotation


# virtual methods
.method public abstract createFromResourcesFamilyXml(Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
.end method

.method public abstract createFromResourcesFontFile(Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
.end method

.method public abstract createTypeface(Ljava/util/List;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/graphics/fonts/FontResult;",
            ">;)",
            "Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;"
        }
    .end annotation
.end method

.method public abstract createTypeface([Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
    .param p1    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/provider/FontsContractCompat$FontInfo;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;"
        }
    .end annotation
.end method

.method public abstract findFromCache(Landroid/content/res/Resources;II)Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
.end method
