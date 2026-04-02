.class public Lcom/picacomic/fregata/activities/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private hm:J

.field private hn:Landroid/os/CountDownTimer;

.field ho:Lcom/picacomic/fregata/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hm:J

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->ai(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ProgressDialogFragment;

    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->TAG:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ImagePopupFragment;

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->ae(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ImagePopupFragment;

    move-result-object p1

    .line 261
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ImagePopupFragment;->TAG:Ljava/lang/String;

    .line 263
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->ah(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    move-result-object p1

    .line 282
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->TAG:Ljava/lang/String;

    .line 284
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/picacomic/fregata/a/i;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/picacomic/fregata/activities/BaseActivity;->ho:Lcom/picacomic/fregata/a/i;

    return-void
.end method

.method public a(Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->c(Lcom/picacomic/fregata/objects/UserProfileObject;)Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    move-result-object p1

    .line 303
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->TAG:Ljava/lang/String;

    .line 305
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public bA()V
    .locals 3

    .line 138
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->TAG:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public bB()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->dH()Lcom/picacomic/fregata/fragments/ProgressDialogFragment;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->TAG:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public bC()V
    .locals 6

    .line 191
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dismiss null manager"

    .line 193
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_0
    iget-wide v1, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hm:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x32

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hm:J

    .line 202
    sget-object v0, Lcom/picacomic/fregata/activities/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call delay - last = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hm:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/picacomic/fregata/activities/BaseActivity;->c(J)V

    return-void

    .line 206
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hm:J

    .line 207
    sget-object v1, Lcom/picacomic/fregata/activities/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No delay -   last = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hm:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_0
    sget-object v1, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/fragments/ProgressDialogFragment;

    if-eqz v1, :cond_2

    const-string v2, "dismiss progress dialog"

    .line 216
    invoke-static {v2}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 220
    :cond_2
    sget-object v1, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ProgressLoadingFragment;

    if-eqz v0, :cond_3

    const-string v1, "dismiss progress loading"

    .line 222
    invoke-static {v1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bD()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/LockDialogFragment;

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    :try_start_0
    new-instance v0, Lcom/picacomic/fregata/fragments/LockDialogFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/LockDialogFragment;-><init>()V

    .line 343
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/fragments/LockDialogFragment;->TAG:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public bE()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 357
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x3ed

    .line 360
    invoke-virtual {p0, v0, v1}, Lcom/picacomic/fregata/activities/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c(J)V
    .locals 7

    .line 237
    new-instance v6, Lcom/picacomic/fregata/activities/BaseActivity$2;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/picacomic/fregata/activities/BaseActivity$2;-><init>(Lcom/picacomic/fregata/activities/BaseActivity;JJ)V

    iput-object v6, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hn:Landroid/os/CountDownTimer;

    .line 248
    iget-object p1, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hn:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    invoke-static {p1, p2}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    move-result-object p1

    .line 324
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 325
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    sget-object v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->TAG:Ljava/lang/String;

    .line 326
    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;

    .line 93
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    .line 94
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    iget-object v1, p0, Lcom/picacomic/fregata/activities/BaseActivity;->ho:Lcom/picacomic/fregata/a/i;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/picacomic/fregata/a/i;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/picacomic/fregata/activities/BaseActivity;->ho:Lcom/picacomic/fregata/a/i;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/a/i;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/picacomic/fregata/activities/BaseActivity;->ho:Lcom/picacomic/fregata/a/i;

    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/a/i;->b(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 112
    :cond_3
    instance-of v0, p0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_4

    .line 113
    new-instance v0, Lcom/picacomic/fregata/activities/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/activities/BaseActivity$1;-><init>(Lcom/picacomic/fregata/activities/BaseActivity;)V

    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->leavePica(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->bC()V

    return-void
.end method

.method public onBackPressed(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/picacomic/fregata/activities/BaseActivity;->ho:Lcom/picacomic/fregata/a/i;

    invoke-interface {v0, p1}, Lcom/picacomic/fregata/a/i;->b(Landroid/view/View;)V

    goto :goto_0

    .line 80
    :cond_0
    instance-of p1, p0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz p1, :cond_1

    .line 81
    invoke-static {p0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->ageNotEnough(Landroid/content/Context;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->bC()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lcom/picacomic/fregata/utils/g;->aw(Landroid/content/Context;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 543
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 544
    iget-object v0, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hn:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->bC()V

    .line 546
    iget-object v0, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hn:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/picacomic/fregata/activities/BaseActivity;->hn:Landroid/os/CountDownTimer;

    .line 549
    :cond_0
    instance-of v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/picacomic/fregata/activities/PopupActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 553
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 554
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->bD()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 514
    :pswitch_0
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 518
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 521
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->finish()V

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->finish()V

    :goto_0
    return-void

    .line 478
    :pswitch_1
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, p2

    :cond_1
    return-void

    .line 496
    :pswitch_2
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, p2

    :cond_2
    return-void

    .line 460
    :pswitch_3
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, p2

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .line 568
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 572
    invoke-static {p0}, Lcom/picacomic/fregata/utils/g;->ar(Landroid/content/Context;)Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 563
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public requestPermission()V
    .locals 5

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 382
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 386
    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v0, v2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 412
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v0, v2

    const/16 v4, 0x3eb

    invoke-static {p0, v0, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    const-string v0, "android.permission.CAMERA"

    .line 421
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v0, v2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
