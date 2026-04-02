.class public Lcom/picacomic/fregata/DemoLoginActivity$b;
.super Landroid/os/AsyncTask;
.source "DemoLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/DemoLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hf:Lcom/picacomic/fregata/DemoLoginActivity;

.field private final hi:Ljava/lang/String;

.field private final hj:Ljava/lang/String;


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/picacomic/fregata/DemoLoginActivity;->a(Lcom/picacomic/fregata/DemoLoginActivity;Lcom/picacomic/fregata/DemoLoginActivity$b;)Lcom/picacomic/fregata/DemoLoginActivity$b;

    .line 340
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/picacomic/fregata/DemoLoginActivity;->a(Lcom/picacomic/fregata/DemoLoginActivity;Z)V

    .line 342
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/DemoLoginActivity;->finish()V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    invoke-static {p1}, Lcom/picacomic/fregata/DemoLoginActivity;->d(Lcom/picacomic/fregata/DemoLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    const v1, 0x7f0f013d

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/DemoLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 346
    iget-object p1, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    invoke-static {p1}, Lcom/picacomic/fregata/DemoLoginActivity;->d(Lcom/picacomic/fregata/DemoLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void
.end method

.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const-wide/16 v0, 0x7d0

    const/4 p1, 0x0

    .line 320
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    invoke-static {}, Lcom/picacomic/fregata/DemoLoginActivity;->bv()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    const-string v5, ":"

    .line 326
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 327
    aget-object v5, v4, p1

    iget-object v6, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    aget-object p1, v4, v3

    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 322
    :catch_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 304
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity$b;->b([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/picacomic/fregata/DemoLoginActivity;->a(Lcom/picacomic/fregata/DemoLoginActivity;Lcom/picacomic/fregata/DemoLoginActivity$b;)Lcom/picacomic/fregata/DemoLoginActivity$b;

    .line 353
    iget-object v0, p0, Lcom/picacomic/fregata/DemoLoginActivity$b;->hf:Lcom/picacomic/fregata/DemoLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/picacomic/fregata/DemoLoginActivity;->a(Lcom/picacomic/fregata/DemoLoginActivity;Z)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 304
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/DemoLoginActivity$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
