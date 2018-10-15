.class public Lamz;
.super Ljava/lang/Object;
.source "BookNotificationManager.java"

# interfaces
.implements Lcom/iflytek/yd/base/ProcessListener;


# static fields
.field private static b:Lamz;


# instance fields
.field private a:Landroid/widget/RemoteViews;

.field private c:Lamp;

.field private d:Landroid/content/Context;

.field private e:Landroid/app/NotificationManager;

.field private f:Landroid/app/Notification;

.field private g:I

.field private h:Z

.field private i:Lame;

.field private j:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamz;->h:Z

    .line 165
    new-instance v0, Lamz$1;

    invoke-direct {v0, p0}, Lamz$1;-><init>(Lamz;)V

    iput-object v0, p0, Lamz;->i:Lame;

    .line 531
    new-instance v0, Lamz$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lamz$4;-><init>(Lamz;Landroid/os/Looper;)V

    iput-object v0, p0, Lamz;->j:Landroid/os/Handler;

    .line 77
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lamz;->d:Landroid/content/Context;

    .line 79
    invoke-static {p0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 80
    const-string/jumbo v0, "bookNotification"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lamz;->g:I

    .line 81
    return-void
.end method

.method static synthetic a(Lamz;Lamp;)Lamp;
    .locals 0
    .param p0, "x0"    # Lamz;
    .param p1, "x1"    # Lamp;

    .prologue
    .line 51
    iput-object p1, p0, Lamz;->c:Lamp;

    return-object p1
.end method

.method public static a()Lamz;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lamz;->b:Lamz;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lamz;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lamz;->b:Lamz;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lamz;

    invoke-direct {v0}, Lamz;-><init>()V

    sput-object v0, Lamz;->b:Lamz;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    sget-object v0, Lamz;->b:Lamz;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)Landroid/app/Notification;
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 367
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lamz;->d:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.action.ACTION_BOOK_PLAYER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lamz;->d:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 373
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lamz;->f:Landroid/app/Notification;

    if-nez v2, :cond_0

    .line 374
    new-instance v2, Lm$d;

    iget-object v3, p0, Lamz;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lm$d;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02023e

    .line 375
    invoke-virtual {v2, v3}, Lm$d;->a(I)Lm$d;

    move-result-object v2

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lm$d;->a(J)Lm$d;

    move-result-object v2

    .line 377
    invoke-virtual {v2, v0}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v2

    const/4 v3, 0x2

    .line 379
    invoke-virtual {v2, v3}, Lm$d;->c(I)Lm$d;

    move-result-object v2

    const/4 v3, 0x1

    .line 380
    invoke-virtual {v2, v3}, Lm$d;->a(Z)Lm$d;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lamz;->f:Landroid/app/Notification;

    .line 382
    iget-object v2, p0, Lamz;->f:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 386
    :cond_0
    iget-object v2, p0, Lamz;->f:Landroid/app/Notification;

    invoke-direct {p0, p1}, Lamz;->b(I)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 387
    iget-object v2, p0, Lamz;->f:Landroid/app/Notification;

    return-object v2
.end method

.method static synthetic a(Lamz;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lamz;

    .prologue
    .line 51
    iget-object v0, p0, Lamz;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lamz;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lamz;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lamz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/widget/RemoteViews;)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "remoteView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 430
    const/4 v9, 0x4

    if-ne v9, p1, :cond_2

    .line 431
    const-string/jumbo v9, "BookNotificationManager"

    const-string/jumbo v10, "updateRemoteViews  state is playing"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const v10, 0x7f0b0541

    invoke-direct {p0}, Lamz;->h()Z

    move-result v9

    if-eqz v9, :cond_1

    const v9, 0x7f020238

    :goto_0
    invoke-virtual {p2, v10, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 438
    :goto_1
    iget-object v9, p0, Lamz;->c:Lamp;

    invoke-virtual {v9}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 439
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->q()Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, "name":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 442
    const v9, 0x7f0b053d

    invoke-virtual {p2, v9, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 446
    :goto_2
    iget-object v9, p0, Lamz;->c:Lamp;

    invoke-virtual {v9}, Lamp;->H()Lamm;

    move-result-object v3

    .line 448
    .local v3, "bookInfo":Lamm;
    if-eqz v3, :cond_0

    .line 449
    invoke-virtual {v3}, Lamm;->d()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "author":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 451
    const v9, 0x7f0b053e

    invoke-virtual {p2, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 456
    :goto_3
    invoke-virtual {v3}, Lamm;->g()Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, "smallLogo":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 458
    invoke-direct {p0, v8}, Lamz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 460
    .local v7, "path":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 462
    invoke-static {v7}, Lbab;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 463
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 464
    const v9, 0x7f0b053c

    invoke-virtual {p2, v9, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1    # "author":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bookInfo":Lamm;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "smallLogo":Ljava/lang/String;
    :cond_0
    :goto_4
    return-void

    .line 432
    .end local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_1
    const v9, 0x7f020237

    goto :goto_0

    .line 434
    :cond_2
    const-string/jumbo v9, "BookNotificationManager"

    const-string/jumbo v10, "updateRemoteViews  state is not playing"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const v10, 0x7f0b0541

    invoke-direct {p0}, Lamz;->h()Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f02023a

    :goto_5
    invoke-virtual {p2, v10, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    :cond_3
    const v9, 0x7f020239

    goto :goto_5

    .line 444
    .restart local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_4
    const v9, 0x7f0b053d

    const-string/jumbo v10, ""

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 453
    .restart local v1    # "author":Ljava/lang/String;
    .restart local v3    # "bookInfo":Lamm;
    :cond_5
    const v9, 0x7f0b053e

    const-string/jumbo v10, ""

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 468
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "smallLogo":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string/jumbo v9, "BookNotificationManager"

    const-string/jumbo v10, "image is not exist"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const v9, 0x7f0b053c

    const v10, 0x7f0200f1

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 471
    .end local v5    # "file":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 472
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "BookNotificationManager"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x7f0b0543

    const v4, 0x7f0b0542

    const v3, 0x7f0b0541

    const v2, 0x7f0b0540

    .line 400
    invoke-direct {p0}, Lamz;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "the notification bar is dark."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const v0, 0x7f0b053d

    const-string/jumbo v1, "#d6d6d6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 403
    const v0, 0x7f0b053e

    const-string/jumbo v1, "#d6d6d6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 404
    const v0, 0x7f020232

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 405
    const v0, 0x7f020236

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 406
    const v0, 0x7f020234

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 407
    const v0, 0x7f02023a

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 418
    :goto_0
    const-string/jumbo v0, "com.iflytek.viafly.listenbook.stopservice"

    invoke-direct {p0, v0}, Lamz;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 419
    const-string/jumbo v0, "com.iflytek.viafly.listenbook.playlast"

    invoke-direct {p0, v0}, Lamz;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 420
    const-string/jumbo v0, "com.iflytek.viafly.listenbook.playnext"

    invoke-direct {p0, v0}, Lamz;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 421
    const-string/jumbo v0, "com.iflytek.viafly.listenbook.playstart"

    invoke-direct {p0, v0}, Lamz;->d(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 422
    return-void

    .line 415
    :cond_0
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "the notification bar is white."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lamz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lamz;

    .prologue
    .line 51
    iget-object v0, p0, Lamz;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 391
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lamz;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300d9

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lamz;->a:Landroid/widget/RemoteViews;

    .line 392
    iget-object v0, p0, Lamz;->a:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lamz;->a(Landroid/widget/RemoteViews;)V

    .line 393
    iget-object v0, p0, Lamz;->a:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, v0}, Lamz;->a(ILandroid/widget/RemoteViews;)V

    .line 394
    iget-object v0, p0, Lamz;->a:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic b(Lamz;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lamz;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lamz;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "logoUrl"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "updateNotificationImg start request img"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    new-instance v1, Lamz$3;

    invoke-direct {v1, p0}, Lamz$3;-><init>(Lamz;)V

    invoke-virtual {v0, p1, v1}, Lazl;->a(Ljava/lang/String;Lbdd;)V

    .line 358
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/ViaFly/book/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lamz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lamz;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lamz;->d:Landroid/content/Context;

    invoke-static {v0}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v0

    invoke-virtual {v0}, Loh;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 106
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "handleIntent "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz p1, :cond_0

    .line 109
    iget-object v1, p0, Lamz;->c:Lamp;

    if-nez v1, :cond_1

    .line 110
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "handleIntent mManager == null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "BookNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIntent action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v1, "com.iflytek.viafly.listenbook.playstart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p0}, Lamz;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "handleIntent click is requesting, return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lamz;->c:Lamp;

    invoke-virtual {v1}, Lamp;->r()V

    goto :goto_0

    .line 127
    :cond_3
    const-string/jumbo v1, "com.iflytek.viafly.listenbook.playstop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string/jumbo v1, "com.iflytek.viafly.listenbook.playpause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const-string/jumbo v1, "com.iflytek.viafly.listenbook.playnext"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    invoke-virtual {p0}, Lamz;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "handleIntent click is requesting, return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {p0, v4}, Lamz;->a(Z)V

    .line 138
    iget-object v1, p0, Lamz;->c:Lamp;

    invoke-virtual {v1}, Lamp;->j()V

    goto :goto_0

    .line 139
    :cond_5
    const-string/jumbo v1, "com.iflytek.viafly.listenbook.playlast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 140
    invoke-virtual {p0}, Lamz;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "handleIntent click is requesting, return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    :cond_6
    invoke-virtual {p0, v4}, Lamz;->a(Z)V

    .line 145
    iget-object v1, p0, Lamz;->c:Lamp;

    invoke-virtual {v1}, Lamp;->i()V

    goto/16 :goto_0

    .line 146
    :cond_7
    const-string/jumbo v1, "com.iflytek.viafly.listenbook.stopservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lamz;->f()V

    .line 150
    iget-object v1, p0, Lamz;->c:Lamp;

    invoke-virtual {v1}, Lamp;->L()Z

    move-result v1

    if-nez v1, :cond_8

    .line 151
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "BOOK_PLAYBACK_STOP_SERVICE getCallbackNum > 1, not release"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lamz;->a(Z)V

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Z)V
    .locals 1
    .param p1, "requesting"    # Z

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lamz;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 96
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "init "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lamz;->c:Lamp;

    if-nez v0, :cond_0

    .line 98
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "mManager == null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lamz;->c:Lamp;

    .line 100
    iget-object v0, p0, Lamz;->c:Lamp;

    const-string/jumbo v1, "viewNotification"

    iget-object v2, p0, Lamz;->i:Lame;

    invoke-virtual {v0, v1, v2}, Lamp;->a(Ljava/lang/String;Lamh;)V

    .line 102
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 262
    iget-object v1, p0, Lamz;->c:Lamp;

    if-nez v1, :cond_1

    .line 263
    invoke-virtual {p0}, Lamz;->f()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lamz;->c:Lamp;

    invoke-virtual {v1}, Lamp;->O()I

    move-result v1

    invoke-direct {p0, v1}, Lamz;->a(I)Landroid/app/Notification;

    move-result-object v0

    .line 267
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lamz;->e:Landroid/app/NotificationManager;

    if-nez v1, :cond_2

    .line 268
    iget-object v1, p0, Lamz;->d:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lamz;->e:Landroid/app/NotificationManager;

    .line 270
    :cond_2
    iget-object v1, p0, Lamz;->e:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 271
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "onPlayStateUpdated notify "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lamz;->e:Landroid/app/NotificationManager;

    iget v2, p0, Lamz;->g:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 277
    const-string/jumbo v2, "BookNotificationManager"

    const-string/jumbo v3, "updateNotificationImg "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v2

    invoke-virtual {v2}, Lamk;->g()Lamm;

    move-result-object v0

    .line 280
    .local v0, "bookInfo":Lamm;
    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {v0}, Lamm;->g()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "logoUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 292
    const-string/jumbo v2, "BookNotificationManager"

    const-string/jumbo v3, "updateNotificationImg no sdcard"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lamz$2;

    invoke-direct {v3, p0, v1}, Lamz$2;-><init>(Lamz;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lamz;->c:Lamp;

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lamz;->f()V

    .line 519
    :goto_0
    return-void

    .line 516
    :cond_0
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "stop "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lamz;->c:Lamp;

    invoke-virtual {v0}, Lamp;->s()Z

    .line 518
    invoke-virtual {p0}, Lamz;->f()V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lamz;->e:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lamz;->d:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lamz;->e:Landroid/app/NotificationManager;

    .line 525
    :cond_0
    iget-object v0, p0, Lamz;->e:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 526
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "cancelNotification notify "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lamz;->e:Landroid/app/NotificationManager;

    iget v1, p0, Lamz;->g:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 529
    :cond_1
    return-void
.end method

.method public declared-synchronized g()Z
    .locals 1

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lamz;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProcessRestart()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lamz;->c:Lamp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamz;->c:Lamp;

    invoke-virtual {v0}, Lamp;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lamz;->c:Lamp;

    invoke-virtual {v0}, Lamp;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    .line 492
    :cond_0
    invoke-virtual {p0}, Lamz;->f()V

    .line 497
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
