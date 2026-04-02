.class final enum Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bQ:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

.field public static final enum bR:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

.field public static final enum bS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

.field public static final enum bT:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

.field public static final enum bU:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

.field public static final enum bV:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

.field private static final synthetic bW:[Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2040
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const-string v1, "OUT_OF_BOUNDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bQ:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bR:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const-string v1, "LEFT_TOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const-string v1, "RIGHT_TOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bT:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const-string v1, "LEFT_BOTTOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bU:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bV:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const/4 v0, 0x6

    .line 2039
    new-array v0, v0, [Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bQ:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bR:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    aput-object v1, v0, v3

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    aput-object v1, v0, v4

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bT:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bU:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    aput-object v1, v0, v6

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bV:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    aput-object v1, v0, v7

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bW:[Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2039
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;
    .locals 1

    .line 2039
    const-class v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    return-object p0
.end method

.method public static values()[Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;
    .locals 1

    .line 2039
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bW:[Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v0}, [Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    return-object v0
.end method
