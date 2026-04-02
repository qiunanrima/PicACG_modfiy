.class public Lcom/picacomic/fregata/b/d;
.super Ljava/lang/Object;
.source "RestClient.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "d"

.field public static tu:Ljava/lang/String;

.field public static tv:Ljava/lang/String;

.field public static version:Ljava/lang/String;


# instance fields
.field rA:[Ljava/lang/String;

.field public tw:Ljava/lang/String;

.field public tx:I

.field private ty:Lcom/picacomic/fregata/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->au(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/picacomic/fregata/b/d;->tu:Ljava/lang/String;

    const v0, 0x7f0f0099

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/picacomic/fregata/b/d;->version:Ljava/lang/String;

    const v0, 0x7f0f0097

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/picacomic/fregata/b/d;->tv:Ljava/lang/String;

    .line 87
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 89
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 90
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 93
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->ap(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/picacomic/fregata/b/b;

    invoke-direct {v1}, Lcom/picacomic/fregata/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->aq(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/picacomic/fregata/b/d;->tx:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/b/d;->rA:[Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/picacomic/fregata/b/d;->rA:[Ljava/lang/String;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->R(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/picacomic/fregata/b/d;->tw:Ljava/lang/String;

    .line 102
    new-instance v1, Lcom/picacomic/fregata/b/d$1;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/b/d$1;-><init>(Lcom/picacomic/fregata/b/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 191
    new-instance p1, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {p1}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    .line 200
    invoke-virtual {p1}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    .line 207
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/f;

    invoke-direct {p1}, Lcom/picacomic/fregata/b/f;-><init>()V

    .line 208
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/f;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    sget-object v1, Lcom/picacomic/fregata/b/d;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create Socket connection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 218
    :goto_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 221
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://picaapi.picacomic.com/"

    .line 222
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 223
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 227
    const-class v0, Lcom/picacomic/fregata/b/a;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/b/a;

    iput-object p1, p0, Lcom/picacomic/fregata/b/d;->ty:Lcom/picacomic/fregata/b/a;

    return-void
.end method


# virtual methods
.method public dO()Lcom/picacomic/fregata/b/a;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/picacomic/fregata/b/d;->ty:Lcom/picacomic/fregata/b/a;

    return-object v0
.end method
