.class public Lagj;
.super Ljava/lang/Object;
.source "DownloadNotification.java"

# interfaces
.implements Lnr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagj$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Loh;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lagj$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lagj;->a:Landroid/content/Context;

    .line 101
    invoke-static {p1}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v0

    iput-object v0, p0, Lagj;->b:Loh;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lagj;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lagj;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)Lagj$a;
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "download"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 412
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 462
    :goto_0
    return-object v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    .line 417
    .local v0, "item":Lagj$a;
    const/4 v8, 0x0

    .line 418
    .local v8, "description":Ljava/lang/String;
    const/4 v10, 0x0

    .line 419
    .local v10, "running":Z
    const/4 v6, 0x0

    .line 420
    .local v6, "clickIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 421
    .local v7, "deleteIntent":Landroid/content/Intent;
    const v9, 0x7f0203c0

    .line 422
    .local v9, "iconRes":I
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v11

    .line 423
    .local v11, "status":I
    const/4 v1, 0x0

    .line 424
    .local v1, "notificationTitle":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 425
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 430
    :goto_1
    invoke-direct {p0, p2}, Lagj;->d(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    const v9, 0x1080081

    .line 432
    const/4 v2, 0x2

    if-ne v11, v2, :cond_2

    .line 433
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    const v3, 0x7f0c00a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 439
    :goto_2
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lagj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 440
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_ENTRY"

    const-string/jumbo v3, "ENTRY_NOTIFICATION"

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_CLICK_INFO"

    invoke-virtual {v6, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 442
    const/4 v10, 0x1

    .line 453
    :goto_3
    new-instance v0, Lagj$a;

    .end local v0    # "item":Lagj$a;
    invoke-direct {v0}, Lagj$a;-><init>()V

    .line 454
    .restart local v0    # "item":Lagj$a;
    const-wide/16 v2, 0x3f4    # 5.0E-321

    iput-wide v2, v0, Lagj$a;->a:J

    .line 455
    iput v9, v0, Lagj$a;->b:I

    .line 456
    iput-object v8, v0, Lagj$a;->f:Ljava/lang/String;

    .line 457
    iput-object v6, v0, Lagj$a;->i:Landroid/content/Intent;

    .line 458
    iput-object v7, v0, Lagj$a;->j:Landroid/content/Intent;

    .line 459
    iput-boolean v10, v0, Lagj$a;->k:Z

    .line 461
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lagj$a;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 427
    :cond_1
    move-object v1, p1

    goto :goto_1

    .line 434
    :cond_2
    const/4 v2, 0x1

    if-ne v11, v2, :cond_3

    .line 435
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    const v3, 0x7f0c00a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 437
    :cond_3
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    const v3, 0x7f0c00a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 443
    :cond_4
    const/4 v3, 0x4

    if-ne v11, v3, :cond_5

    .line 444
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lagj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 445
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_ENTRY"

    const-string/jumbo v3, "ENTRY_NOTIFICATION"

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    .line 447
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lnv;->a(I)I

    move-result v3

    .line 446
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_5
    move-object v0, v2

    .line 450
    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 708
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 709
    .local v0, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_OPEN_DOWNLOADLIST_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string/jumbo v1, "from_where"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 714
    return-object v0
.end method

.method private a(Lagj$a;)V
    .locals 13
    .param p1, "item"    # Lagj$a;

    .prologue
    const/4 v2, 0x1

    .line 524
    if-eqz p1, :cond_0

    iget-object v0, p1, Lagj$a;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lagj$a;->g:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p1, Lagj$a;->g:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 530
    .local v11, "titleNotify":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .local v12, "titleSb":Ljava/lang/StringBuilder;
    iget v0, p1, Lagj$a;->e:I

    if-le v0, v2, :cond_2

    .line 536
    const-string/jumbo v0, ", "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v0, p1, Lagj$a;->g:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v0, p1, Lagj$a;->e:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 539
    const-string/jumbo v0, "..."

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_2
    iget-boolean v0, p1, Lagj$a;->k:Z

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lagj$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 544
    iget-object v0, p0, Lagj;->a:Landroid/content/Context;

    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lagj$a;->f:Ljava/lang/String;

    .line 547
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v0, "DownloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotificationItem title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , description : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lagj$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lagj$a;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", running : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lagj$a;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-boolean v0, p1, Lagj$a;->k:Z

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lagj;->a:Landroid/content/Context;

    iget v1, p1, Lagj$a;->b:I

    iget-object v2, p1, Lagj$a;->i:Landroid/content/Intent;

    iget-object v3, p1, Lagj$a;->j:Landroid/content/Intent;

    iget-object v5, p1, Lagj$a;->f:Ljava/lang/String;

    iget-wide v6, p1, Lagj$a;->c:J

    iget-wide v8, p1, Lagj$a;->d:J

    invoke-static/range {v0 .. v9}, Loj;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/app/Notification;

    move-result-object v10

    .line 561
    .local v10, "notification":Landroid/app/Notification;
    :goto_1
    iget-object v0, p0, Lagj;->b:Loh;

    const-string/jumbo v1, "DownloadNotification"

    iget-wide v2, p1, Lagj$a;->a:J

    invoke-virtual {v0, v1, v2, v3, v10}, Loh;->a(Ljava/lang/String;JLandroid/app/Notification;)V

    goto/16 :goto_0

    .line 557
    .end local v10    # "notification":Landroid/app/Notification;
    :cond_4
    iget-object v0, p0, Lagj;->a:Landroid/content/Context;

    iget v1, p1, Lagj$a;->b:I

    iget-object v2, p1, Lagj$a;->i:Landroid/content/Intent;

    iget-object v3, p1, Lagj$a;->j:Landroid/content/Intent;

    iget-object v5, p1, Lagj$a;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Loj;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .restart local v10    # "notification":Landroid/app/Notification;
    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    :cond_0
    return-void

    .line 277
    :cond_1
    iget-object v4, p0, Lagj;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 278
    const/4 v3, 0x0

    .line 281
    .local v3, "newItem":Lagj$a;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 282
    invoke-direct {p0, p1}, Lagj;->d(Ljava/util/List;)Lagj$a;

    move-result-object v3

    .line 290
    :goto_0
    iget-object v4, p0, Lagj;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v6, 0x3f4    # 5.0E-321

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v4, p0, Lagj;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lagj$a;

    .line 292
    .local v1, "item":Lagj$a;
    const-string/jumbo v5, "DownloadNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update download item id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lagj$a;->a:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0, v1}, Lagj;->a(Lagj$a;)V

    goto :goto_1

    .line 284
    .end local v1    # "item":Lagj$a;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 285
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 286
    .local v0, "download":Lcom/iflytek/common/download/entities/DownloadInfo;
    const-string/jumbo v4, "DownloadNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DownloadInfo type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , visibility : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 287
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lagj;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)Lagj$a;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)Lagj$a;
    .locals 13
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "downloadInfo"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 472
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    const/4 v0, 0x0

    .line 520
    :goto_0
    return-object v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    .line 477
    .local v0, "item":Lagj$a;
    const/4 v8, 0x0

    .line 478
    .local v8, "description":Ljava/lang/String;
    const/4 v11, 0x0

    .line 479
    .local v11, "running":Z
    const/4 v6, 0x0

    .line 480
    .local v6, "clickIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 481
    .local v7, "deleteIntent":Landroid/content/Intent;
    const v10, 0x7f0203c0

    .line 482
    .local v10, "iconRes":I
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v12

    .line 483
    .local v12, "status":I
    const/4 v1, 0x0

    .line 484
    .local v1, "notificationTitle":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 485
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 490
    :goto_1
    new-instance v0, Lagj$a;

    .end local v0    # "item":Lagj$a;
    invoke-direct {v0}, Lagj$a;-><init>()V

    .line 491
    .restart local v0    # "item":Lagj$a;
    const/16 v2, 0x65

    if-ne v12, v2, :cond_4

    .line 492
    const-wide/16 v2, 0x3f3

    invoke-virtual {p0, v2, v3}, Lagj;->a(J)V

    .line 493
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getErrorCode()I

    move-result v9

    .line 494
    .local v9, "errorCode":I
    if-eqz v9, :cond_3

    .line 495
    const-string/jumbo v2, "DownloadNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createInstallNotificationItem errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    iput-wide v2, v0, Lagj$a;->a:J

    .line 497
    const-string/jumbo v8, "\u5b89\u88c5\u5931\u8d25"

    .line 498
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lagj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 499
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_CLICK_INFO"

    invoke-virtual {v6, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 500
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_ENTRY"

    const-string/jumbo v3, "ENTRY_NOTIFICATION"

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const/4 v11, 0x0

    .line 513
    .end local v9    # "errorCode":I
    :cond_1
    :goto_2
    iput v10, v0, Lagj$a;->b:I

    .line 514
    iput-object v8, v0, Lagj$a;->f:Ljava/lang/String;

    .line 515
    iput-object v6, v0, Lagj$a;->i:Landroid/content/Intent;

    .line 516
    iput-object v7, v0, Lagj$a;->j:Landroid/content/Intent;

    .line 517
    iput-boolean v11, v0, Lagj$a;->k:Z

    .line 519
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lagj$a;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 487
    :cond_2
    move-object v1, p1

    goto :goto_1

    .line 503
    .restart local v9    # "errorCode":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 505
    .end local v9    # "errorCode":I
    :cond_4
    const/16 v2, 0x64

    if-ne v12, v2, :cond_1

    .line 506
    const-wide/16 v2, 0x3f3

    iput-wide v2, v0, Lagj$a;->a:J

    .line 507
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lagj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 508
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_ENTRY"

    const-string/jumbo v3, "ENTRY_NOTIFICATION"

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const/4 v11, 0x0

    .line 510
    const-string/jumbo v1, "\u6b63\u5728\u5b89\u88c5"

    .line 511
    const-string/jumbo v8, ""

    goto :goto_2
.end method

.method private b()V
    .locals 5

    .prologue
    .line 565
    iget-object v2, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    :goto_0
    return-void

    .line 568
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    iget-object v2, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 570
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-direct {p0, v0}, Lagj;->d(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 575
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    const-string/jumbo v2, "DownloadNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "active download size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0, v1}, Lagj;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lagj;->c(Ljava/util/List;)Lagj$a;

    move-result-object v0

    .line 307
    .local v0, "newItem":Lagj$a;
    invoke-direct {p0, v0}, Lagj;->a(Lagj$a;)V

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Lagj$a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)",
            "Lagj$a;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "downloadInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 317
    :cond_0
    const-string/jumbo v4, "DownloadNotification"

    const-string/jumbo v5, "createMutiActiveNotification | download info is null or size less 1"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v2, 0x0

    .line 378
    :goto_0
    return-object v2

    .line 320
    :cond_1
    const/4 v12, 0x0

    .line 321
    .local v12, "downloadFinishCount":I
    const/4 v11, 0x0

    .line 322
    .local v11, "downloadErrorCount":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v13, v4, [J

    .line 323
    .local v13, "downloadIds":[J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_4

    .line 324
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    aput-wide v4, v13, v14

    .line 325
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 326
    add-int/lit8 v11, v11, 0x1

    .line 323
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 327
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 328
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 334
    :cond_4
    const-string/jumbo v3, "\u7075\u7280"

    .line 338
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 340
    .local v10, "description":Ljava/lang/String;
    if-lez v12, :cond_6

    if-lez v11, :cond_6

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u4e0b\u8f7d\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u9879"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , \u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u9879"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 358
    :cond_5
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , \u70b9\u51fb\u67e5\u770b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 362
    const/16 v16, 0x0

    .line 363
    .local v16, "running":Z
    const/4 v8, 0x0

    .line 364
    .local v8, "clickIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 365
    .local v9, "deleteIntent":Landroid/content/Intent;
    const v15, 0x7f0203c0

    .line 366
    .local v15, "iconRes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lagj;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lagj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 367
    const-string/jumbo v4, "com.iflytek.cmcc.EXTRA_CLICK_FINISH_ERROR_ID"

    invoke-virtual {v8, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 368
    const-string/jumbo v4, "com.iflytek.cmcc.EXTRA_ENTRY"

    const-string/jumbo v5, "ENTRY_NOTIFICATION"

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    new-instance v2, Lagj$a;

    invoke-direct {v2}, Lagj$a;-><init>()V

    .line 370
    .local v2, "item":Lagj$a;
    const-wide/16 v4, 0x3f2

    iput-wide v4, v2, Lagj$a;->a:J

    .line 371
    iput v15, v2, Lagj$a;->b:I

    .line 372
    iput-object v10, v2, Lagj$a;->f:Ljava/lang/String;

    .line 373
    iput-object v8, v2, Lagj$a;->i:Landroid/content/Intent;

    .line 374
    iput-object v9, v2, Lagj$a;->j:Landroid/content/Intent;

    .line 375
    move/from16 v0, v16

    iput-boolean v0, v2, Lagj$a;->k:Z

    .line 377
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lagj$a;->a(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 343
    .end local v2    # "item":Lagj$a;
    .end local v8    # "clickIntent":Landroid/content/Intent;
    .end local v9    # "deleteIntent":Landroid/content/Intent;
    .end local v15    # "iconRes":I
    .end local v16    # "running":Z
    :cond_6
    if-lez v12, :cond_8

    if-nez v11, :cond_8

    .line 344
    const/4 v4, 0x1

    if-ne v12, v4, :cond_7

    .line 345
    const-string/jumbo v10, "\u4e0b\u8f7d\u6210\u529f"

    goto :goto_3

    .line 347
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u4e0b\u8f7d\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u9879"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 349
    :cond_8
    if-nez v12, :cond_5

    if-lez v11, :cond_5

    .line 350
    const/4 v4, 0x1

    if-ne v11, v4, :cond_9

    .line 351
    const-string/jumbo v10, "\u4e0b\u8f7d\u5931\u8d25"

    goto/16 :goto_3

    .line 353
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u9879"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3
.end method

.method private c()V
    .locals 5

    .prologue
    .line 580
    iget-object v2, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 581
    const-string/jumbo v2, "DownloadNotification"

    const-string/jumbo v3, "active download task is 0, remove active notification"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-wide/16 v2, 0x3f4    # 5.0E-321

    invoke-virtual {p0, v2, v3}, Lagj;->a(J)V

    .line 585
    :cond_0
    iget-object v2, p0, Lagj;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 596
    :goto_0
    return-void

    .line 588
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    iget-object v2, p0, Lagj;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 590
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-direct {p0, v0}, Lagj;->e(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 591
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 594
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_3
    const-string/jumbo v2, "DownloadNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finish or error download size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0, v1}, Lagj;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method private d(Ljava/util/List;)Lagj$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)",
            "Lagj$a;"
        }
    .end annotation

    .prologue
    .local p1, "downloadInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 387
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_2

    .line 388
    :cond_0
    const-string/jumbo v3, "DownloadNotification"

    const-string/jumbo v4, "createMutiActiveNotification | download info is null or size less 1"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    :goto_0
    return-object v2

    .line 391
    :cond_2
    invoke-direct {p0, p1}, Lagj;->e(Ljava/util/List;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 392
    .local v0, "lastestInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_1

    .line 394
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "title":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1, v0}, Lagj;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)Lagj$a;

    move-result-object v2

    goto :goto_0

    .line 397
    .end local v1    # "title":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u9879\u4e0b\u8f7d\u4efb\u52a1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", \u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_1
.end method

.method private d()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 599
    new-instance v0, Lagj$a;

    invoke-direct {v0}, Lagj$a;-><init>()V

    .line 600
    .local v0, "item":Lagj$a;
    const/4 v8, 0x0

    .line 601
    .local v8, "description":Ljava/lang/String;
    const/4 v10, 0x0

    .line 603
    .local v10, "running":Z
    iget-object v4, p0, Lagj;->a:Landroid/content/Context;

    invoke-direct {p0, v4}, Lagj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 604
    .local v6, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.EXTRA_ENTRY"

    const-string/jumbo v5, "ENTRY_NOTIFICATION"

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const/4 v7, 0x0

    .line 606
    .local v7, "deleteIntent":Landroid/content/Intent;
    const v9, 0x7f0203c0

    .line 607
    .local v9, "iconRes":I
    const-string/jumbo v1, "\u5185\u5bb9\u63d0\u793a\uff1a"

    .line 608
    .local v1, "notificationTitle":Ljava/lang/String;
    const-string/jumbo v8, "\u60a8\u6709\u672a\u5b8c\u6210\u4e0b\u8f7d\u4efb\u52a1"

    .line 610
    iput v9, v0, Lagj$a;->b:I

    .line 611
    iput-object v8, v0, Lagj$a;->f:Ljava/lang/String;

    .line 612
    iput-object v6, v0, Lagj$a;->i:Landroid/content/Intent;

    .line 613
    iput-object v7, v0, Lagj$a;->j:Landroid/content/Intent;

    .line 614
    iput-boolean v10, v0, Lagj$a;->k:Z

    .line 615
    const-wide/16 v4, 0x3f5

    iput-wide v4, v0, Lagj$a;->a:J

    move-wide v4, v2

    .line 617
    invoke-virtual/range {v0 .. v5}, Lagj$a;->a(Ljava/lang/String;JJ)V

    .line 618
    invoke-direct {p0, v0}, Lagj;->a(Lagj$a;)V

    .line 619
    return-void
.end method

.method private d(Lcom/iflytek/common/download/entities/DownloadInfo;)Z
    .locals 5
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 627
    const-string/jumbo v3, "DownloadNotification"

    const-string/jumbo v4, "isActiveAndVisible"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v3

    if-nez v3, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v1

    .line 631
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v0

    .line 632
    .local v0, "status":I
    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private e(Ljava/util/List;)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)",
            "Lcom/iflytek/common/download/entities/DownloadInfo;"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 676
    :cond_0
    const/4 v3, 0x0

    .line 686
    :cond_1
    return-object v3

    .line 678
    :cond_2
    const-wide/16 v0, 0x0

    .line 679
    .local v0, "id":J
    const/4 v3, 0x0

    .line 680
    .local v3, "lastestInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 681
    .local v2, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v6

    cmp-long v5, v6, v0

    if-lez v5, :cond_3

    .line 682
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v0

    .line 683
    move-object v3, v2

    goto :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 693
    iget-object v2, p0, Lagj;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 694
    iget-object v2, p0, Lagj;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 696
    :cond_0
    iget-object v2, p0, Lagj;->a:Landroid/content/Context;

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    invoke-virtual {v2}, Lno;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 697
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 698
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 699
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-direct {p0, v0}, Lagj;->e(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 700
    iget-object v3, p0, Lagj;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 704
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    return-void
.end method

.method private e(Lcom/iflytek/common/download/entities/DownloadInfo;)Z
    .locals 6
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 643
    const-string/jumbo v3, "DownloadNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFinishOrErrorAndVisible info get view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isView()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v3

    if-nez v3, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v2

    .line 647
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v1

    .line 648
    .local v1, "status":I
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isView()Z

    move-result v0

    .line 649
    .local v0, "isView":Z
    if-nez v0, :cond_0

    .line 650
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 139
    const-string/jumbo v0, "DownloadNotification"

    const-string/jumbo v1, "cancelAllNotification"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lagj;->b:Loh;

    invoke-virtual {v0}, Loh;->c()V

    .line 141
    iget-object v0, p0, Lagj;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 142
    return-void
.end method

.method public a(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 117
    const-string/jumbo v1, "DownloadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelNotification id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-wide/16 v2, 0x3f4    # 5.0E-321

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x3f2

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x3f3

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lagj;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnp;->a(Landroid/content/Context;)Lnp;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnp;->e(J)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 122
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    iget-object v1, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, v0}, Lagj;->e(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lagj;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    invoke-direct {p0}, Lagj;->b()V

    .line 129
    invoke-direct {p0}, Lagj;->c()V

    .line 133
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lagj;->b:Loh;

    const-string/jumbo v2, "DownloadNotification"

    invoke-virtual {v1, v2, p1, p2}, Loh;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "DownloadNotification"

    const-string/jumbo v2, "updateStartInstallNotification"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 208
    invoke-direct {p0}, Lagj;->b()V

    .line 209
    invoke-direct {p0}, Lagj;->c()V

    .line 210
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lagj;->b(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)Lagj$a;

    move-result-object v0

    .line 211
    .local v0, "item":Lagj$a;
    invoke-direct {p0, v0}, Lagj;->a(Lagj$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 205
    .end local v0    # "item":Lagj$a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Lcom/iflytek/common/download/entities/DownloadInfo;I)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "installResult"    # I

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "DownloadNotification"

    const-string/jumbo v2, "updateFinishInstallNotification"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 224
    invoke-direct {p0}, Lagj;->b()V

    .line 225
    invoke-direct {p0}, Lagj;->c()V

    .line 226
    invoke-virtual {p1, p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 227
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lagj;->b(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)Lagj$a;

    move-result-object v0

    .line 228
    .local v0, "item":Lagj$a;
    invoke-direct {p0, v0}, Lagj;->a(Lagj$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 221
    .end local v0    # "item":Lagj$a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Ljava/util/Collection;)V
    .locals 8
    .param p1, "infos"    # Ljava/util/Collection;

    .prologue
    .line 240
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    :cond_0
    monitor-exit p0

    return-void

    .line 244
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "downloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 247
    .local v1, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-direct {p0, v1}, Lagj;->d(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    iget-object v4, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "downloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .end local v1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 250
    .restart local v0    # "downloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .restart local v1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lagj;->a(J)V

    goto :goto_0

    .line 259
    .end local v1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_4
    invoke-direct {p0}, Lagj;->b()V

    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 263
    .restart local v1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Lagj;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)Lagj$a;

    move-result-object v2

    .line 264
    .local v2, "item":Lagj$a;
    invoke-direct {p0, v2}, Lagj;->a(Lagj$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 150
    monitor-enter p0

    if-nez p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x3f5

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 155
    const-string/jumbo v1, "DownloadNotification"

    const-string/jumbo v2, "updateNotification | updateUnFinishNotification"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lagj;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 163
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lagj;->d(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    const-string/jumbo v1, "DownloadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotification | isActiveAndVisible infoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " info visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-direct {p0}, Lagj;->b()V

    goto :goto_0

    .line 169
    :cond_3
    invoke-direct {p0, p1}, Lagj;->e(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    const-string/jumbo v1, "DownloadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotification | isFinishOrErrorAndVisible infoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lagj;->e()V

    .line 172
    iget-object v1, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-direct {p0}, Lagj;->b()V

    .line 174
    invoke-direct {p0}, Lagj;->c()V

    goto/16 :goto_0

    .line 176
    :cond_4
    invoke-virtual {p0, p1}, Lagj;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 177
    const-string/jumbo v1, "DownloadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotification | isStoppedAndVisible infoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lagj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 180
    const-wide/16 v2, 0x3f4    # 5.0E-321

    invoke-virtual {p0, v2, v3}, Lagj;->a(J)V

    goto/16 :goto_0

    .line 182
    :cond_5
    invoke-direct {p0}, Lagj;->b()V

    .line 183
    invoke-direct {p0}, Lagj;->c()V

    goto/16 :goto_0

    .line 186
    :cond_6
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v1

    if-nez v1, :cond_7

    .line 187
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lagj;->a(J)V

    goto/16 :goto_0

    .line 190
    :cond_7
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-direct {p0}, Lagj;->b()V

    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lagj;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)Lagj$a;

    move-result-object v0

    .line 195
    .local v0, "item":Lagj$a;
    invoke-direct {p0, v0}, Lagj;->a(Lagj$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public c(Lcom/iflytek/common/download/entities/DownloadInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    if-nez v2, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v1

    .line 665
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v0

    .line 666
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
