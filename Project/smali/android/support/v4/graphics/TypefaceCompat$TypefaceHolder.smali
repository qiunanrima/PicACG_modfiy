.class public Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/TypefaceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypefaceHolder"
.end annotation


# instance fields
.field private final mItalic:Z

.field private final mTypeface:Landroid/graphics/Typeface;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;IZ)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->mTypeface:Landroid/graphics/Typeface;

    .line 66
    iput p2, p0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->mWeight:I

    .line 67
    iput-boolean p3, p0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->mItalic:Z

    return-void
.end method


# virtual methods
.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 75
    iget v0, p0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Landroid/support/v4/graphics/TypefaceCompat$TypefaceHolder;->mItalic:Z

    return v0
.end method
