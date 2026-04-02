.class interface abstract Lcom/picacomic/fregata/DemoLoginActivity$a;
.super Ljava/lang/Object;
.source "DemoLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/DemoLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "a"
.end annotation


# static fields
.field public static final hh:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 281
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "is_primary"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/picacomic/fregata/DemoLoginActivity$a;->hh:[Ljava/lang/String;

    return-void
.end method
