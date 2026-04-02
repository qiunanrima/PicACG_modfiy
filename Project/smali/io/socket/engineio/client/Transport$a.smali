.class public Lio/socket/engineio/client/Transport$a;
.super Ljava/lang/Object;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/engineio/client/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public hostname:Ljava/lang/String;

.field public hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public path:Ljava/lang/String;

.field public port:I

.field public proxy:Ljava/net/Proxy;

.field public secure:Z

.field public yc:Z

.field public yf:I

.field public yh:Ljava/lang/String;

.field public yk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Ljavax/net/ssl/SSLContext;

.field public yq:Ljava/lang/String;

.field public yr:Ljava/lang/String;

.field protected zb:Lio/socket/engineio/client/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lio/socket/engineio/client/Transport$a;->port:I

    .line 157
    iput v0, p0, Lio/socket/engineio/client/Transport$a;->yf:I

    return-void
.end method
