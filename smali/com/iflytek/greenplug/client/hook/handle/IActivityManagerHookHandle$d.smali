.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 411
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 517
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 518
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 519
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 526
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    .line 521
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 523
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 524
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 523
    invoke-virtual {p1, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 525
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 521
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "broadcastIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    const-string/jumbo v10, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 448
    const-string/jumbo v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 449
    .local v9, "shortcutIntent":Landroid/content/Intent;
    if-eqz v9, :cond_2

    .line 450
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 453
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v10

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 456
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v7, "proxyShortcutIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;->mHostContext:Landroid/content/Context;

    const-class v11, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 458
    const-string/jumbo v10, "com.iflytek.greenplug.shortcut.OldIntent"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    const-string/jumbo v10, "com.iflytek.greenplug.shortcut.OldIntent.Uri"

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string/jumbo v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 466
    const-string/jumbo v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent$ShortcutIconResource;

    .line 467
    .local v4, "icon":Landroid/content/Intent$ShortcutIconResource;
    if-eqz v4, :cond_2

    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;->mHostContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 469
    :try_start_0
    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->getPluginContext(Ljava/lang/String;)Landroid/app/Application;

    move-result-object v1

    .line 470
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string/jumbo v12, "drawable"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 471
    .local v8, "resId":I
    if-lez v8, :cond_1

    .line 472
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 473
    .local v6, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v6}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 474
    .local v5, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 475
    const-string/jumbo v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 476
    const-string/jumbo v10, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 477
    const/4 v10, 0x1

    .line 513
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "icon":Landroid/content/Intent$ShortcutIconResource;
    .end local v5    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "proxyShortcutIntent":Landroid/content/Intent;
    .end local v8    # "resId":I
    .end local v9    # "shortcutIntent":Landroid/content/Intent;
    :goto_0
    return v10

    .line 479
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v4    # "icon":Landroid/content/Intent$ShortcutIconResource;
    .restart local v5    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "proxyShortcutIntent":Landroid/content/Intent;
    .restart local v8    # "resId":I
    .restart local v9    # "shortcutIntent":Landroid/content/Intent;
    :cond_0
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    const-string/jumbo v11, "Can not found the icon resource in plugin package:%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 484
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "resId":I
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    throw v2

    .line 482
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v8    # "resId":I
    :cond_1
    :try_start_1
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    const-string/jumbo v11, "Can not found the icon resource in plugin package:%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 486
    .end local v1    # "context":Landroid/content/Context;
    .end local v8    # "resId":I
    :catch_1
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    const-string/jumbo v10, "Can not found the icon resource in plugin package:%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 489
    throw v3

    .line 494
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "icon":Landroid/content/Intent$ShortcutIconResource;
    .end local v7    # "proxyShortcutIntent":Landroid/content/Intent;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 495
    .end local v9    # "shortcutIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v10, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 497
    const-string/jumbo v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 498
    .restart local v9    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v9, :cond_5

    .line 499
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 500
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v10

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 502
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v7    # "proxyShortcutIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;->mHostContext:Landroid/content/Context;

    const-class v11, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 504
    const-string/jumbo v10, "com.iflytek.greenplug.shortcut.OldIntent"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    const-string/jumbo v10, "com.iflytek.greenplug.shortcut.OldIntent.Uri"

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string/jumbo v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 508
    const-string/jumbo v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 510
    .end local v7    # "proxyShortcutIntent":Landroid/content/Intent;
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 513
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "shortcutIntent":Landroid/content/Intent;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 431
    const/4 v1, 0x1

    .line 432
    .local v1, "index":I
    if-eqz p3, :cond_0

    array-length v2, p3

    if-le v2, v3, :cond_0

    aget-object v2, p3, v3

    instance-of v2, v2, Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 433
    aget-object v0, p3, v3

    check-cast v0, Landroid/content/Intent;

    .line 434
    .local v0, "broadcastIntent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;->a(Landroid/content/Intent;)Z

    .line 436
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
