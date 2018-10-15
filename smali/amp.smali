.class public Lamp;
.super Ljava/lang/Object;
.source "BookBizManager.java"

# interfaces
.implements Laim;
.implements Laqy;


# static fields
.field private static e:Lamp;


# instance fields
.field private a:Lams;

.field private b:Lamx;

.field private c:Lanb;

.field private d:Lami;

.field private f:Landroid/content/Context;

.field private g:Lamk;

.field private h:Larc;

.field private i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lamh;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lamq;

.field private n:Landroid/os/Handler;

.field private o:Lic;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lamp;->j:I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamp;->k:Z

    .line 984
    new-instance v0, Lamp$1;

    invoke-direct {v0, p0}, Lamp$1;-><init>(Lamp;)V

    iput-object v0, p0, Lamp;->m:Lamq;

    .line 1275
    new-instance v0, Lamp$2;

    invoke-direct {v0, p0}, Lamp$2;-><init>(Lamp;)V

    iput-object v0, p0, Lamp;->n:Landroid/os/Handler;

    .line 1919
    new-instance v0, Lamp$3;

    invoke-direct {v0, p0}, Lamp$3;-><init>(Lamp;)V

    iput-object v0, p0, Lamp;->o:Lic;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lamp;->f:Landroid/content/Context;

    .line 118
    invoke-static {}, Lami;->a()Lami;

    move-result-object v0

    iput-object v0, p0, Lamp;->d:Lami;

    .line 119
    new-instance v0, Lams;

    iget-object v1, p0, Lamp;->f:Landroid/content/Context;

    iget-object v2, p0, Lamp;->m:Lamq;

    invoke-direct {v0, v1, v2}, Lams;-><init>(Landroid/content/Context;Lamy;)V

    iput-object v0, p0, Lamp;->a:Lams;

    .line 120
    new-instance v0, Lamx;

    iget-object v1, p0, Lamp;->f:Landroid/content/Context;

    iget-object v2, p0, Lamp;->m:Lamq;

    invoke-direct {v0, v1, v2}, Lamx;-><init>(Landroid/content/Context;Lamq;)V

    iput-object v0, p0, Lamp;->b:Lamx;

    .line 121
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v0

    iput-object v0, p0, Lamp;->g:Lamk;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    invoke-static {}, Larc;->a()Larc;

    move-result-object v0

    iput-object v0, p0, Lamp;->h:Larc;

    .line 125
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    iget-object v1, p0, Lamp;->o:Lic;

    invoke-virtual {v0, v1}, Lie;->a(Lic;)V

    .line 127
    return-void
.end method

.method private declared-synchronized R()V
    .locals 28

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "BookBizPresenter"

    const-string/jumbo v4, "reportListenTime"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lamp;->g:Lamk;

    invoke-virtual {v3}, Lamk;->k()Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, "contentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lamp;->d:Lami;

    invoke-virtual {v3}, Lami;->c()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v2

    .line 474
    .local v2, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v3, :cond_1

    .line 475
    move-object v0, v2

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-object/from16 v23, v0

    .line 476
    .local v23, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-virtual/range {v23 .. v23}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->c()Ljava/lang/String;

    move-result-object v13

    .line 477
    .local v13, "rate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lamp;->g:Lamk;

    invoke-virtual {v3}, Lamk;->o()J

    move-result-wide v26

    .line 478
    .local v26, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 481
    .local v24, "endTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v26, v4

    if-lez v3, :cond_2

    invoke-static/range {v26 .. v27}, Lbaa;->e(J)Ljava/lang/String;

    move-result-object v11

    .line 482
    .local v11, "stString":Ljava/lang/String;
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v24, v4

    if-lez v3, :cond_3

    invoke-static/range {v24 .. v25}, Lbaa;->e(J)Ljava/lang/String;

    move-result-object v12

    .line 484
    .local v12, "etString":Ljava/lang/String;
    :goto_1
    sub-long v4, v24, v26

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v8, v4

    .line 485
    .local v8, "duration":I
    const-string/jumbo v3, "BookBizPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportListenTime saveHistory startTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " endTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual/range {p0 .. p0}, Lamp;->E()I

    move-result v22

    .line 489
    .local v22, "audioDuration":I
    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_4

    move/from16 v9, v22

    .line 490
    .local v9, "totalTime":I
    :goto_2
    div-int/lit16 v3, v9, 0x3e8

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v9, v4

    .line 492
    cmp-long v3, v26, v24

    if-gez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v26, v4

    if-gtz v3, :cond_5

    .line 493
    :cond_0
    const-string/jumbo v3, "BookBizPresenter"

    const-string/jumbo v4, "reportListenTime startTime >= endTime or startTime <= 0, return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lamp;->g:Lamk;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lamk;->a(J)V

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v23 .. v23}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "failure"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lamp;->a(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    .end local v8    # "duration":I
    .end local v9    # "totalTime":I
    .end local v11    # "stString":Ljava/lang/String;
    .end local v12    # "etString":Ljava/lang/String;
    .end local v13    # "rate":Ljava/lang/String;
    .end local v22    # "audioDuration":I
    .end local v23    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v24    # "endTime":J
    .end local v26    # "startTime":J
    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    .line 481
    .restart local v13    # "rate":Ljava/lang/String;
    .restart local v23    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .restart local v24    # "endTime":J
    .restart local v26    # "startTime":J
    :cond_2
    :try_start_1
    const-string/jumbo v11, "-1"

    goto/16 :goto_0

    .line 482
    .restart local v11    # "stString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "-1"

    goto/16 :goto_1

    .line 489
    .restart local v8    # "duration":I
    .restart local v12    # "etString":Ljava/lang/String;
    .restart local v22    # "audioDuration":I
    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Lamp;->j:I

    goto :goto_2

    .line 501
    .restart local v9    # "totalTime":I
    :cond_5
    const-string/jumbo v3, "BookBizPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportListenTime totalTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-lez v8, :cond_6

    if-lez v9, :cond_6

    if-le v8, v9, :cond_7

    .line 503
    :cond_6
    const-string/jumbo v3, "BookBizPresenter"

    const-string/jumbo v4, "reportListenTime duration <= 0 or totalTime <= 0 or duration > totalTime, return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lamp;->g:Lamk;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lamk;->a(J)V

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v23 .. v23}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "failure"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lamp;->a(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 471
    .end local v2    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    .end local v6    # "contentId":Ljava/lang/String;
    .end local v8    # "duration":I
    .end local v9    # "totalTime":I
    .end local v11    # "stString":Ljava/lang/String;
    .end local v12    # "etString":Ljava/lang/String;
    .end local v13    # "rate":Ljava/lang/String;
    .end local v22    # "audioDuration":I
    .end local v23    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v24    # "endTime":J
    .end local v26    # "startTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 510
    .restart local v2    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    .restart local v6    # "contentId":Ljava/lang/String;
    .restart local v8    # "duration":I
    .restart local v9    # "totalTime":I
    .restart local v11    # "stString":Ljava/lang/String;
    .restart local v12    # "etString":Ljava/lang/String;
    .restart local v13    # "rate":Ljava/lang/String;
    .restart local v22    # "audioDuration":I
    .restart local v23    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .restart local v24    # "endTime":J
    .restart local v26    # "startTime":J
    :cond_7
    :try_start_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v23 .. v23}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 511
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 512
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lamp;->g:Lamk;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lamk;->a(J)V

    .line 514
    const-string/jumbo v3, "reportBookTimeRequest"

    const-string/jumbo v4, "contentId or chapterId or rate is null, return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v23 .. v23}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "failure"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lamp;->a(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 519
    :cond_9
    const/16 v21, 0x1

    .line 521
    .local v21, "isOnline":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lamp;->a:Lams;

    invoke-virtual/range {v23 .. v23}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v16

    move-object v15, v6

    move/from16 v17, v8

    move-object/from16 v18, v13

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-virtual/range {v14 .. v21}, Lams;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v23 .. v23}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "success"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lamp;->a(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lamp;->g:Lamk;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lamk;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method private S()Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v4, p0, Lamp;->g:Lamk;

    invoke-virtual {v4}, Lamk;->g()Lamm;

    move-result-object v1

    .line 565
    .local v1, "bookInfo":Lamm;
    if-nez v1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-object v2

    .line 568
    :cond_1
    iget-object v4, p0, Lamp;->d:Lami;

    invoke-virtual {v4}, Lami;->c()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 569
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    iget-object v4, p0, Lamp;->h:Larc;

    invoke-virtual {v4}, Larc;->c()I

    move-result v3

    .line 570
    .local v3, "position":I
    if-eqz v0, :cond_0

    .line 573
    new-instance v2, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-direct {v2}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;-><init>()V

    .line 574
    .local v2, "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-virtual {v1}, Lamm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1}, Lamm;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v1}, Lamm;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v1}, Lamm;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(I)V

    .line 581
    invoke-virtual {v1}, Lamm;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g(Ljava/lang/String;)V

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private T()V
    .locals 5

    .prologue
    .line 1469
    const-string/jumbo v2, "BookBizPresenter"

    const-string/jumbo v3, "setChapterState"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v2, p0, Lamp;->d:Lami;

    invoke-virtual {v2}, Lami;->k()Ljava/lang/String;

    move-result-object v1

    .line 1472
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1473
    iget-object v2, p0, Lamp;->g:Lamk;

    invoke-virtual {v2, v1}, Lamk;->a(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v0

    .line 1474
    .local v0, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    if-eqz v0, :cond_0

    .line 1475
    const-string/jumbo v2, "BookBizPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPlayStateUpdated set chapter has listen, id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c(I)V

    .line 1477
    iget-object v2, p0, Lamp;->g:Lamk;

    invoke-virtual {v2, v0}, Lamk;->a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)I

    .line 1480
    .end local v0    # "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    :cond_0
    return-void
.end method

.method private U()V
    .locals 3

    .prologue
    .line 1521
    const-string/jumbo v1, "BookBizPresenter"

    const-string/jumbo v2, "handlePlayClick "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {p0}, Lamp;->N()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1524
    iget-object v1, p0, Lamp;->g:Lamk;

    invoke-virtual {v1}, Lamk;->k()Ljava/lang/String;

    move-result-object v0

    .line 1526
    .local v0, "bookInfoId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    invoke-virtual {p0}, Lamp;->v()V

    .line 1530
    :cond_0
    iget-object v1, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1531
    iget-object v1, p0, Lamp;->n:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1537
    .end local v0    # "bookInfoId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1536
    :cond_2
    invoke-virtual {p0}, Lamp;->h()V

    goto :goto_0
.end method

.method static synthetic a(Lamp;)Lamk;
    .locals 1
    .param p0, "x0"    # Lamp;

    .prologue
    .line 70
    iget-object v0, p0, Lamp;->g:Lamk;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lamp;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    sget-object v0, Lamp;->e:Lamp;

    if-nez v0, :cond_1

    .line 131
    const-class v1, Lamp;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lamp;->e:Lamp;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lamp;

    invoke-direct {v0, p0}, Lamp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lamp;->e:Lamp;

    .line 135
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_1
    sget-object v0, Lamp;->e:Lamp;

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .locals 2
    .param p1, "chapter"    # Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .prologue
    .line 912
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;-><init>()V

    .line 913
    .local v0, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->l(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->m(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(I)V

    .line 916
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(I)V

    .line 917
    return-object v0
.end method

.method static synthetic a(Lamp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lamp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lamp;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "starTime"    # J
    .param p3, "contentId"    # Ljava/lang/String;
    .param p4, "chapterId"    # Ljava/lang/String;
    .param p5, "duration"    # I
    .param p6, "totalTime"    # I
    .param p7, "result"    # Ljava/lang/String;
    .param p8, "startTime"    # Ljava/lang/String;
    .param p9, "endTime"    # Ljava/lang/String;
    .param p10, "rate"    # Ljava/lang/String;

    .prologue
    .line 1880
    const-string/jumbo v2, "BookBizPresenter"

    const-string/jumbo v3, "recordInfoLog()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1882
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_contentId"

    invoke-interface {v7, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    const-string/jumbo v2, "d_chapterId"

    invoke-interface {v7, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    const-string/jumbo v2, "d_duration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    const-string/jumbo v2, "d_totalTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    const-string/jumbo v2, "d_startTime"

    move-object/from16 v0, p8

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    const-string/jumbo v2, "d_endTime"

    move-object/from16 v0, p9

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    const-string/jumbo v2, "d_rate"

    move-object/from16 v0, p10

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v2

    const-string/jumbo v3, "IC00028"

    move-wide v4, p1

    move-object/from16 v6, p7

    invoke-virtual/range {v2 .. v7}, Lvr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 1892
    return-void
.end method

.method static synthetic a(Lamp;I)V
    .locals 0
    .param p0, "x0"    # Lamp;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lamp;->f(I)V

    return-void
.end method

.method static synthetic a(Lamp;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 0
    .param p0, "x0"    # Lamp;
    .param p1, "x1"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lamp;->c(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    return-void
.end method

.method static synthetic a(Lamp;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lamp;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lamp;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/listenbook/base/PlayList;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;Z)V
    .locals 1
    .param p1, "playList"    # Lcom/iflytek/viafly/listenbook/base/PlayList;
    .param p2, "audio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .param p3, "isNeedUpdate"    # Z

    .prologue
    .line 921
    if-nez p2, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-virtual {p2}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    if-eqz p3, :cond_0

    .line 928
    invoke-virtual {p1, p2}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b(Lcom/iflytek/viafly/player/entity/Audio;)V

    goto :goto_0

    .line 931
    :cond_2
    invoke-virtual {p1, p2}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(Lcom/iflytek/viafly/player/entity/Audio;)V

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/listenbook/base/PlayList;Ljava/util/List;)V
    .locals 6
    .param p1, "playList"    # Lcom/iflytek/viafly/listenbook/base/PlayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/listenbook/base/PlayList;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p2, "chapterAudios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;>;"
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c()Ljava/util/List;

    move-result-object v1

    .line 796
    .local v1, "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/player/entity/Audio;

    .line 797
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    instance-of v5, v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v5, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v5}, Lamp;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 799
    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .end local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    invoke-direct {p0, p2, v0}, Lamp;->a(Ljava/util/List;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    goto :goto_0

    .line 801
    .restart local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_1
    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .end local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 807
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 809
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v3, "newAudios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 811
    .local v2, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 813
    .end local v2    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    :cond_3
    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(Ljava/util/List;)V

    .line 814
    return-void
.end method

.method private a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
    .locals 4
    .param p1, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .prologue
    .line 1939
    iget-object v2, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "viewActivity"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1940
    iget-object v2, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "viewActivity"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1941
    .local v0, "viewActivity":Lamh;
    invoke-interface {v0, p1}, Lamh;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    .line 1944
    iget-object v2, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "viewNotification"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1945
    iget-object v2, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "viewNotification"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamh;

    .line 1946
    .local v1, "viewNotification":Lamh;
    const/16 v2, 0x3fc

    invoke-interface {v1, v2}, Lamh;->a(I)V

    .line 1952
    .end local v0    # "viewActivity":Lamh;
    .end local v1    # "viewNotification":Lamh;
    :cond_0
    :goto_0
    return-void

    .line 1948
    :cond_1
    iget-object v2, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "viewNotification"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1949
    iget-object v2, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "viewNotification"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamh;

    .line 1950
    .restart local v1    # "viewNotification":Lamh;
    invoke-interface {v1, p1}, Lamh;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 6
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 1325
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v4, :cond_0

    .line 1327
    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->s()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1329
    iget-object v4, p0, Lamp;->g:Lamk;

    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lamk;->e(Ljava/lang/String;)V

    .line 1330
    iget-object v4, p0, Lamp;->n:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1345
    :cond_0
    return-void

    :cond_1
    move-object v1, p1

    .line 1332
    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 1333
    .local v1, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-virtual {p0, v1}, Lamp;->a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)Z

    .line 1335
    iget-object v4, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1336
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1337
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1338
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1339
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_2

    .line 1340
    invoke-interface {v0, v1}, Lamh;->a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->b()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v4

    .line 743
    .local v4, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 744
    invoke-virtual {v4}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lamp;->g:Lamk;

    invoke-virtual {v6}, Lamk;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 745
    :cond_0
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "updatePlayList reset playlist"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v4, Lcom/iflytek/viafly/listenbook/base/PlayList;

    .end local v4    # "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    invoke-direct {v4}, Lcom/iflytek/viafly/listenbook/base/PlayList;-><init>()V

    .line 747
    .restart local v4    # "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    iget-object v5, p0, Lamp;->g:Lamk;

    invoke-virtual {v5}, Lamk;->i()Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v3, "default"

    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(Ljava/lang/String;)V

    .line 749
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5, v4}, Lami;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;)V

    .line 752
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v2, "chapterAudios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 756
    .local v0, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    invoke-direct {p0, v0}, Lamp;->a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v1

    .line 757
    .local v1, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 741
    .end local v0    # "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .end local v1    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v2    # "chapterAudios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;>;"
    .end local v4    # "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 762
    .restart local v2    # "chapterAudios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;>;"
    .restart local v4    # "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    :cond_3
    :try_start_1
    invoke-direct {p0, v4, v2}, Lamp;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    monitor-exit p0

    return-void
.end method

.method private a(Ljava/util/List;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 5
    .param p2, "audio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;",
            ">;",
            "Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    .local p1, "chapterAudios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;>;"
    if-eqz p2, :cond_1

    .line 833
    const/4 v2, -0x1

    .line 834
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 835
    invoke-virtual {p2}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 836
    move v2, v1

    .line 841
    :cond_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 843
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 844
    .local v0, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(I)V

    .line 845
    invoke-interface {p1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 848
    .end local v0    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_1
    return-void

    .line 834
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "chapterAudios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;>;"
    const/4 v2, 0x0

    .line 817
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    const-string/jumbo v1, "BookBizPresenter"

    const-string/jumbo v3, "isContainAudio id is null"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 828
    :goto_0
    return v1

    .line 822
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 823
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    const/4 v1, 0x1

    goto :goto_0

    .line 822
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 828
    goto :goto_0
.end method

.method static synthetic b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lamp;

    .prologue
    .line 70
    iget-object v0, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private b(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 8
    .param p1, "chapterAudio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    const/4 v7, 0x0

    .line 858
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v5

    if-nez v5, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->b()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v3

    .line 864
    .local v3, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 865
    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lamp;->g:Lamk;

    invoke-virtual {v6}, Lamk;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 866
    :cond_2
    new-instance v3, Lcom/iflytek/viafly/listenbook/base/PlayList;

    .end local v3    # "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    invoke-direct {v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;-><init>()V

    .line 867
    .restart local v3    # "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    iget-object v5, p0, Lamp;->g:Lamk;

    invoke-virtual {v5}, Lamk;->i()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v0, "default"

    .end local v0    # "id":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(Ljava/lang/String;)V

    .line 869
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5, v3}, Lami;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;)V

    .line 872
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a()I

    move-result v2

    .line 874
    .local v2, "orderNum":I
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->e()Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 875
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->e()Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v5

    invoke-direct {p0, v5}, Lamp;->a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v4

    .line 877
    .local v4, "preAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    if-lez v2, :cond_5

    .line 878
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(I)V

    .line 880
    :cond_5
    invoke-direct {p0, v3, v4, v7}, Lamp;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;Z)V

    .line 884
    .end local v4    # "preAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    :cond_6
    const/4 v5, 0x1

    invoke-direct {p0, v3, p1, v5}, Lamp;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;Z)V

    .line 886
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d()Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 887
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d()Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v5

    invoke-direct {p0, v5}, Lamp;->a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v1

    .line 888
    .local v1, "nextAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(I)V

    .line 889
    invoke-direct {p0, v3, v1, v7}, Lamp;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;Z)V

    .line 893
    .end local v1    # "nextAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    :cond_7
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d()Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 894
    iget-object v5, p0, Lamp;->g:Lamk;

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d()Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lamk;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 895
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3, v5}, Lamp;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;Ljava/util/List;)V

    goto/16 :goto_0

    .line 898
    :cond_8
    iget-object v5, p0, Lamp;->g:Lamk;

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lamk;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 899
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3, v5}, Lamp;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 978
    .local p1, "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    invoke-direct {p0, p1}, Lamp;->a(Ljava/util/List;)V

    .line 980
    iget-object v1, p0, Lamp;->d:Lami;

    invoke-virtual {p0}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v2

    invoke-virtual {v1, v2}, Lami;->a(Lcom/iflytek/viafly/player/entity/Audio;)I

    move-result v0

    .line 981
    .local v0, "index":I
    iget-object v1, p0, Lamp;->d:Lami;

    invoke-virtual {v1, v0}, Lami;->b(I)V

    .line 982
    return-void
.end method

.method static synthetic c(Lamp;)Larc;
    .locals 1
    .param p0, "x0"    # Lamp;

    .prologue
    .line 70
    iget-object v0, p0, Lamp;->h:Larc;

    return-object v0
.end method

.method private c(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 6
    .param p1, "chapterAudio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lamp;->b(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    .line 955
    iget-object v2, p0, Lamp;->d:Lami;

    invoke-virtual {v2, p1}, Lami;->a(Lcom/iflytek/viafly/player/entity/Audio;)I

    move-result v1

    .line 956
    .local v1, "index":I
    iget-object v2, p0, Lamp;->d:Lami;

    invoke-virtual {v2, v1}, Lami;->b(I)V

    .line 959
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v2

    if-nez v2, :cond_1

    .line 960
    const-string/jumbo v2, "\u64ad\u653e\u5931\u8d25"

    invoke-direct {p0, v2}, Lamp;->d(Ljava/lang/String;)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    invoke-virtual {p0, p1}, Lamp;->a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)Z

    .line 966
    iget-object v2, p0, Lamp;->g:Lamk;

    invoke-virtual {v2}, Lamk;->g()Lamm;

    move-result-object v0

    .line 967
    .local v0, "bookInfo":Lamm;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 969
    invoke-static {}, Laio;->b()Laio;

    move-result-object v2

    invoke-virtual {v0}, Lamm;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lamm;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Laio;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 533
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "saveBookHistory"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v5, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v5}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 535
    iget-object v5, p0, Lamp;->g:Lamk;

    invoke-virtual {v5}, Lamk;->k()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "contentId":Ljava/lang/String;
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->c()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 537
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-nez v0, :cond_1

    .line 538
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "saveBookHistory FAIL, audio is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    .end local v3    # "contentId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 541
    .restart local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    .restart local v3    # "contentId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "chapterId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->q()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "chapterName":Ljava/lang/String;
    iget-object v5, p0, Lamp;->h:Larc;

    invoke-virtual {v5}, Larc;->c()I

    move-result v4

    .line 544
    .local v4, "position":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-gez v4, :cond_3

    .line 546
    :cond_2
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "saveBookHistory FAIL, id or name or position is illegal"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :cond_3
    const-string/jumbo v5, "2"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 551
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "saveCollect"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v5, p0, Lamp;->b:Lamx;

    invoke-virtual {v5, v3, v1, v2, v4}, Lamx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    goto :goto_0

    .line 554
    :cond_4
    const-string/jumbo v5, "1"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "saveHistory"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Lamp;->I()V

    goto :goto_0

    .line 559
    .end local v0    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    .end local v1    # "chapterId":Ljava/lang/String;
    .end local v2    # "chapterName":Ljava/lang/String;
    .end local v3    # "contentId":Ljava/lang/String;
    .end local v4    # "position":I
    :cond_5
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "saveBookHistory no network"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Lamp;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lamp;

    .prologue
    .line 70
    iget-object v0, p0, Lamp;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 1726
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1727
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1728
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1729
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1730
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1731
    invoke-interface {v0, p1}, Lamh;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1734
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    return-void
.end method

.method static synthetic e(Lamp;)Lams;
    .locals 1
    .param p0, "x0"    # Lamp;

    .prologue
    .line 70
    iget-object v0, p0, Lamp;->a:Lams;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 8
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1898
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "recordInfoLog()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v0, p0, Lamp;->g:Lamk;

    invoke-virtual {v0}, Lamk;->k()Ljava/lang/String;

    move-result-object v7

    .line 1902
    .local v7, "contentId":Ljava/lang/String;
    iget-object v0, p0, Lamp;->d:Lami;

    invoke-virtual {v0}, Lami;->c()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v6

    .line 1903
    .local v6, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v6, :cond_0

    instance-of v0, v6, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v0, :cond_0

    .line 1905
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1906
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1907
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_complete_state"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    const-string/jumbo v0, "d_contentId"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    const-string/jumbo v0, "d_chapterId"

    invoke-virtual {v6}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    const-string/jumbo v1, "IC00028"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    invoke-virtual/range {v0 .. v5}, Lvr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 1916
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 1738
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1739
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1740
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1741
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1742
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1743
    invoke-interface {v0, p1}, Lamh;->a(I)V

    goto :goto_0

    .line 1746
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    return-void
.end method

.method static synthetic f(Lamp;)V
    .locals 0
    .param p0, "x0"    # Lamp;

    .prologue
    .line 70
    invoke-direct {p0}, Lamp;->T()V

    return-void
.end method

.method static synthetic g(Lamp;)Lami;
    .locals 1
    .param p0, "x0"    # Lamp;

    .prologue
    .line 70
    iget-object v0, p0, Lamp;->d:Lami;

    return-object v0
.end method

.method static synthetic h(Lamp;)V
    .locals 0
    .param p0, "x0"    # Lamp;

    .prologue
    .line 70
    invoke-direct {p0}, Lamp;->U()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 6

    .prologue
    .line 670
    iget-object v4, p0, Lamp;->g:Lamk;

    invoke-virtual {v4}, Lamk;->k()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "contentId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    const/4 v2, 0x0

    .line 685
    :cond_0
    return v2

    .line 676
    :cond_1
    const/4 v2, 0x0

    .line 677
    .local v2, "isExist":Z
    iget-object v4, p0, Lamp;->g:Lamk;

    invoke-virtual {v4}, Lamk;->e()Ljava/util/List;

    move-result-object v3

    .line 678
    .local v3, "markInfos":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 679
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamo;

    .line 680
    .local v0, "bookMarkInfo":Lamo;
    invoke-virtual {v0}, Lamo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 681
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public B()V
    .locals 4

    .prologue
    .line 940
    invoke-virtual {p0}, Lamp;->F()I

    move-result v0

    .line 941
    .local v0, "playbackMode":I
    const-string/jumbo v1, "BookBizPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChangeModeViewClick playbackMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {v0}, Lamj;->a(I)I

    move-result v0

    .line 943
    iget-object v1, p0, Lamp;->d:Lami;

    invoke-virtual {v1, v0}, Lami;->a(I)V

    .line 944
    return-void
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 1565
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0}, Larc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 1570
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    const/4 v0, -0x1

    .line 1573
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0}, Larc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public E()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1578
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1589
    :cond_0
    :goto_0
    return v0

    .line 1582
    :cond_1
    iget-object v2, p0, Lamp;->h:Larc;

    invoke-virtual {v2}, Larc;->d()I

    move-result v0

    .line 1583
    .local v0, "duration":I
    if-eq v0, v1, :cond_0

    .line 1585
    iput v0, p0, Lamp;->j:I

    goto :goto_0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lamp;->d:Lami;

    invoke-virtual {v0}, Lami;->e()I

    move-result v0

    return v0
.end method

.method public G()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1

    .prologue
    .line 1604
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0}, Larc;->e()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Lamm;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lamp;->g:Lamk;

    invoke-virtual {v0}, Lamk;->g()Lamm;

    move-result-object v0

    return-object v0
.end method

.method public I()V
    .locals 4

    .prologue
    .line 1632
    const-string/jumbo v1, "BookBizPresenter"

    const-string/jumbo v2, "save history item"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    invoke-direct {p0}, Lamp;->S()Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    move-result-object v0

    .line 1634
    .local v0, "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    if-eqz v0, :cond_0

    .line 1636
    const-string/jumbo v1, "BookBizPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save history item real "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v1, p0, Lamp;->g:Lamk;

    invoke-virtual {v1, v0}, Lamk;->a(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)V

    .line 1639
    :cond_0
    return-void
.end method

.method public J()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1667
    iget-object v1, p0, Lamp;->d:Lami;

    if-nez v1, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lamp;->d:Lami;

    invoke-virtual {v1}, Lami;->e()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lamp;->d:Lami;

    invoke-virtual {v1}, Lami;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public K()V
    .locals 2

    .prologue
    .line 1750
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1754
    :cond_1
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, " onPlayBtnClick "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-virtual {p0}, Lamp;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {p0}, Lamp;->x()V

    .line 1758
    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0, p0}, Larc;->c(Laqy;)Z

    goto :goto_0
.end method

.method public L()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1765
    invoke-virtual {p0}, Lamp;->x()V

    .line 1767
    iget-object v5, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-le v5, v4, :cond_1

    .line 1769
    invoke-virtual {p0}, Lamp;->s()Z

    .line 1771
    iget-object v4, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1772
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1773
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1774
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1775
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1776
    invoke-interface {v0, v3}, Lamh;->a(Z)V

    goto :goto_0

    .line 1784
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_1
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1785
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1786
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1787
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1788
    .restart local v0    # "bookView":Lamh;
    if-eqz v0, :cond_2

    .line 1789
    invoke-interface {v0}, Lamh;->o()V

    goto :goto_1

    .line 1794
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_3
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1796
    iget-object v3, p0, Lamp;->h:Larc;

    invoke-virtual {v3, p0}, Larc;->d(Laqy;)V

    move v3, v4

    .line 1797
    :cond_4
    return v3
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 1807
    iget-boolean v0, p0, Lamp;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0}, Larc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 1817
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1818
    const/4 v0, 0x0

    .line 1821
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0, p0}, Larc;->e(Laqy;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized O()I
    .locals 1

    .prologue
    .line 1825
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0}, Larc;->g()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public P()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1829
    invoke-virtual {p0}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 1830
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Q()V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->d()V

    .line 1957
    iget-object v0, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lie;->a(Lic;)V

    .line 1958
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lamo$a;
    .locals 7
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 712
    const-string/jumbo v4, "BookBizPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCollect contentId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 733
    :cond_0
    :goto_0
    return-object v1

    .line 718
    :cond_1
    iget-object v4, p0, Lamp;->g:Lamk;

    invoke-virtual {v4, p1}, Lamk;->d(Ljava/lang/String;)Lamo;

    move-result-object v0

    .line 719
    .local v0, "BookMarkInfo":Lamo;
    const-string/jumbo v4, "BookBizPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCollect BookMarkInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    if-nez v0, :cond_2

    move-object v1, v3

    .line 721
    goto :goto_0

    .line 724
    :cond_2
    invoke-virtual {v0}, Lamo;->f()Ljava/util/List;

    move-result-object v2

    .line 725
    .local v2, "markInfos":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 726
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamo$a;

    .line 727
    .local v1, "bookMark":Lamo$a;
    invoke-virtual {v1}, Lamo$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 730
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "getCollect BookMarkInfo id not same"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "bookMark":Lamo$a;
    :cond_3
    move-object v1, v3

    .line 733
    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 1835
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lamp;->f:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1836
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.ACTION_BOOK_PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1837
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1838
    iget-object v1, p0, Lamp;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1839
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 388
    const-string/jumbo v1, "BookBizPresenter"

    const-string/jumbo v2, "getChapterList"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 393
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 394
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 395
    iget-object v1, p0, Lamp;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 397
    :cond_0
    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-direct {p0, v1}, Lamp;->d(Ljava/lang/String;)V

    .line 398
    const/16 v1, 0x3f1

    invoke-direct {p0, v1}, Lamp;->f(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "chapterId"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string/jumbo v1, "BookBizPresenter"

    const-string/jumbo v2, "loadChapter"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 373
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lamp;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 378
    :cond_0
    const/16 v1, 0x3fb

    invoke-direct {p0, v1}, Lamp;->f(I)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lamh;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lamh;

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "registerListener "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-nez p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_1
    iget-object v0, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    iget-object v0, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lamo$a;)V
    .locals 6
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "bookMark"    # Lamo$a;

    .prologue
    .line 1617
    :try_start_0
    iget-object v4, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1618
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1619
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1620
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1621
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1622
    invoke-interface {v0}, Lamh;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1625
    .end local v0    # "bookView":Lamh;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :catch_0
    move-exception v1

    .line 1626
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BookBizPresenter"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1628
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "chargeMode"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "contentId"    # Ljava/lang/String;
    .param p4, "chapterId"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "buy book"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lamp;->a:Lams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-direct {p0, v0}, Lamp;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)Z
    .locals 1
    .param p1, "chapterAudio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 311
    invoke-virtual {p0}, Lamp;->s()Z

    .line 313
    iget-object v0, p0, Lamp;->d:Lami;

    invoke-virtual {v0, p1}, Lami;->b(Lcom/iflytek/viafly/player/entity/Audio;)V

    .line 315
    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0, p1, p0}, Larc;->a(Lcom/iflytek/viafly/player/entity/Audio;Laqy;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1843
    invoke-direct {p0}, Lamp;->U()V

    .line 1844
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 434
    const-string/jumbo v1, "BookBizPresenter"

    const-string/jumbo v2, "reportShareResult"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lamp;->c:Lanb;

    if-nez v1, :cond_0

    .line 437
    new-instance v1, Lanb;

    iget-object v2, p0, Lamp;->f:Landroid/content/Context;

    iget-object v3, p0, Lamp;->m:Lamq;

    invoke-direct {v1, v2, v3}, Lanb;-><init>(Landroid/content/Context;Lamq;)V

    iput-object v1, p0, Lamp;->c:Lanb;

    .line 439
    :cond_0
    iget-object v1, p0, Lamp;->g:Lamk;

    invoke-virtual {v1}, Lamk;->k()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "contentId":Ljava/lang/String;
    iget-object v1, p0, Lamp;->c:Lanb;

    invoke-virtual {v1, v0, p1}, Lanb;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 444
    .end local v0    # "contentId":Ljava/lang/String;
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-direct {p0, v1}, Lamp;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;Lamh;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lamh;

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "removeListener "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1599
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0, p1}, Larc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1848
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v0

    invoke-virtual {v0}, Lamf;->c()V

    .line 1849
    invoke-virtual {p0}, Lamp;->L()Z

    .line 1850
    return-void
.end method

.method public c(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 1448
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1449
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1450
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1451
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1452
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1453
    invoke-interface {v0, p1}, Lamh;->c(I)V

    goto :goto_0

    .line 1457
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    const/4 v3, 0x4

    if-ne v3, p1, :cond_2

    .line 1459
    iget-object v3, p0, Lamp;->g:Lamk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lamk;->a(J)V

    .line 1461
    invoke-direct {p0}, Lamp;->T()V

    .line 1463
    iget-object v3, p0, Lamp;->n:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1465
    :cond_2
    invoke-static {}, Laio;->b()Laio;

    move-result-object v3

    invoke-virtual {v3, p1}, Laio;->a(I)V

    .line 1466
    return-void
.end method

.method public d(I)V
    .locals 4
    .param p1, "percent"    # I

    .prologue
    .line 1484
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1485
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1486
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1487
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1488
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1489
    invoke-interface {v0, p1}, Lamh;->d(I)V

    goto :goto_0

    .line 1492
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1854
    iget-object v1, p0, Lamp;->d:Lami;

    if-nez v1, :cond_1

    .line 1860
    :cond_0
    :goto_0
    return v0

    .line 1857
    :cond_1
    iget-object v1, p0, Lamp;->d:Lami;

    invoke-virtual {v1}, Lami;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamp;->d:Lami;

    invoke-virtual {v1}, Lami;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1860
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 6

    .prologue
    .line 1865
    iget-object v2, p0, Lamp;->g:Lamk;

    invoke-virtual {v2}, Lamk;->g()Lamm;

    move-result-object v0

    .line 1866
    .local v0, "bookInfo":Lamm;
    iget-object v2, p0, Lamp;->g:Lamk;

    invoke-virtual {v2}, Lamk;->j()Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v1

    .line 1867
    .local v1, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1869
    invoke-static {}, Laio;->b()Laio;

    move-result-object v2

    invoke-virtual {v0}, Lamm;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lamm;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Laio;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    invoke-static {}, Laio;->b()Laio;

    move-result-object v2

    invoke-virtual {p0}, Lamp;->O()I

    move-result v3

    invoke-virtual {v2, v3}, Laio;->a(I)V

    .line 1872
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 1509
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1510
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1511
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1512
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1513
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1514
    invoke-interface {v0, p1}, Lamh;->e(I)V

    goto :goto_0

    .line 1517
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    return-void
.end method

.method public f()I
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lamp;->h:Larc;

    sget-object v2, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_BOOK:Lcom/iflytek/viafly/player/base/PlayerBizType;

    invoke-virtual {v1, v2, p0}, Larc;->a(Lcom/iflytek/viafly/player/base/PlayerBizType;Laqy;)I

    move-result v0

    .line 143
    .local v0, "resultCode":I
    const-string/jumbo v1, "BookBizPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Laio;->b()Laio;

    move-result-object v0

    invoke-virtual {v0, p0}, Laio;->a(Laim;)V

    .line 150
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, "\u64ad\u653e\u5931\u8d25"

    invoke-direct {p0, v0}, Lamp;->d(Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, " onPlayBtnClick "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lamp;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lamp;->x()V

    .line 186
    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0, p0}, Larc;->c(Laqy;)Z

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0, p0}, Larc;->a(Laqy;)Z

    goto :goto_0
.end method

.method public i()V
    .locals 8

    .prologue
    const/16 v7, 0x3f0

    .line 196
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, " playLast "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v5

    if-nez v5, :cond_0

    .line 200
    const-string/jumbo v5, "\u64ad\u653e\u5931\u8d25"

    invoke-direct {p0, v5}, Lamp;->d(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lamp;->F()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    const-string/jumbo v5, "\u8fd9\u662f\u7b2c\u4e00\u7ae0"

    invoke-direct {p0, v5}, Lamp;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v5, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 209
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 211
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 212
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_2

    .line 213
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lamh;->a(Z)V

    goto :goto_1

    .line 218
    .end local v0    # "bookView":Lamh;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_3
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v5

    invoke-virtual {v5}, Lamf;->b()I

    move-result v5

    if-nez v5, :cond_4

    .line 219
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v5

    invoke-virtual {v5}, Lamf;->c()V

    .line 224
    :cond_4
    invoke-virtual {p0}, Lamp;->C()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 225
    iget-object v5, p0, Lamp;->h:Larc;

    invoke-virtual {v5, p0}, Larc;->c(Laqy;)Z

    .line 229
    :cond_5
    invoke-virtual {p0}, Lamp;->x()V

    .line 231
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->f()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 232
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->h()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v4

    .line 233
    .local v4, "lastAudio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v4, :cond_6

    instance-of v5, v4, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-nez v5, :cond_7

    .line 234
    :cond_6
    const v5, 0xc357d

    invoke-virtual {p0, v5}, Lamp;->e(I)V

    .line 235
    invoke-direct {p0, v7}, Lamp;->f(I)V

    goto :goto_0

    :cond_7
    move-object v1, v4

    .line 239
    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 240
    .local v1, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-direct {p0, v1}, Lamp;->a(Lcom/iflytek/viafly/player/entity/Audio;)V

    goto :goto_0

    .line 242
    .end local v1    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v4    # "lastAudio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_8
    invoke-direct {p0, v7}, Lamp;->f(I)V

    goto :goto_0
.end method

.method public j()V
    .locals 8

    .prologue
    const/16 v7, 0x3f0

    .line 250
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, " playNext "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lamp;->M()Z

    move-result v5

    if-nez v5, :cond_0

    .line 254
    const-string/jumbo v5, "\u64ad\u653e\u5931\u8d25"

    invoke-direct {p0, v5}, Lamp;->d(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->e()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    const-string/jumbo v5, "\u5df2\u662f\u6700\u540e\u4e00\u7ae0"

    invoke-direct {p0, v5}, Lamp;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v5, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 264
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 266
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 267
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_2

    .line 268
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lamh;->a(Z)V

    goto :goto_1

    .line 274
    .end local v0    # "bookView":Lamh;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_3
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v5

    invoke-virtual {v5}, Lamf;->b()I

    move-result v5

    if-nez v5, :cond_4

    .line 275
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v5

    invoke-virtual {v5}, Lamf;->c()V

    .line 280
    :cond_4
    invoke-virtual {p0}, Lamp;->C()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 281
    iget-object v5, p0, Lamp;->h:Larc;

    invoke-virtual {v5, p0}, Larc;->c(Laqy;)Z

    .line 285
    :cond_5
    invoke-virtual {p0}, Lamp;->x()V

    .line 287
    iget-object v5, p0, Lamp;->d:Lami;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lami;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 288
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, " playNext has next, play"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->g()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v4

    .line 290
    .local v4, "nextAudio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v4, :cond_6

    instance-of v5, v4, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-nez v5, :cond_7

    .line 291
    :cond_6
    const v5, 0xc357d

    invoke-virtual {p0, v5}, Lamp;->e(I)V

    .line 292
    invoke-direct {p0, v7}, Lamp;->f(I)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v4

    .line 296
    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 297
    .local v1, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-direct {p0, v1}, Lamp;->a(Lcom/iflytek/viafly/player/entity/Audio;)V

    goto/16 :goto_0

    .line 299
    .end local v1    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v4    # "nextAudio":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_8
    invoke-direct {p0, v7}, Lamp;->f(I)V

    goto/16 :goto_0
.end method

.method public k()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v13, -0x1

    .line 1351
    const/4 v5, 0x1

    .line 1353
    .local v5, "isSeekBarComplete":Z
    iget-object v11, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1354
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1355
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1356
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamh;

    .line 1357
    .local v2, "bookView":Lamh;
    if-eqz v2, :cond_0

    .line 1358
    if-eqz v5, :cond_1

    invoke-interface {v2}, Lamh;->d()Z

    move-result v11

    if-eqz v11, :cond_1

    move v5, v10

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1363
    .end local v2    # "bookView":Lamh;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_2
    if-nez v5, :cond_6

    .line 1364
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "onPlayComplete isSeekBarComplete false"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v10, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1366
    .local v7, "iteratorSecond":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1367
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1368
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamh;

    .line 1369
    .restart local v2    # "bookView":Lamh;
    if-eqz v2, :cond_3

    .line 1370
    invoke-interface {v2}, Lamh;->e()V

    goto :goto_2

    .line 1375
    .end local v2    # "bookView":Lamh;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_4
    iput v13, p0, Lamp;->j:I

    .line 1376
    iget-object v10, p0, Lamp;->g:Lamk;

    const-wide/16 v12, -0x1

    invoke-virtual {v10, v12, v13}, Lamk;->a(J)V

    .line 1377
    const-string/jumbo v10, "complete_no_net"

    invoke-direct {p0, v10}, Lamp;->e(Ljava/lang/String;)V

    .line 1443
    .end local v7    # "iteratorSecond":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_5
    :goto_3
    return-void

    .line 1381
    :cond_6
    iget-object v11, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1382
    .local v8, "iteratorThird":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1383
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1384
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamh;

    .line 1385
    .restart local v2    # "bookView":Lamh;
    if-eqz v2, :cond_7

    .line 1386
    invoke-interface {v2}, Lamh;->k()V

    goto :goto_4

    .line 1390
    .end local v2    # "bookView":Lamh;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_8
    invoke-direct {p0}, Lamp;->R()V

    .line 1391
    const-string/jumbo v11, "BookBizPresenter"

    const-string/jumbo v12, "MediaPlayer | onCompletion"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iput v13, p0, Lamp;->j:I

    .line 1395
    const-string/jumbo v11, "complete_ok"

    invoke-direct {p0, v11}, Lamp;->e(Ljava/lang/String;)V

    .line 1398
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v11

    invoke-virtual {v11}, Lamf;->b()I

    move-result v11

    if-nez v11, :cond_9

    .line 1399
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "user set stop , stop"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v10

    invoke-virtual {v10}, Lamf;->c()V

    .line 1401
    invoke-virtual {p0}, Lamp;->s()Z

    .line 1402
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v10

    invoke-virtual {v10}, Lamz;->f()V

    goto :goto_3

    .line 1404
    :cond_9
    iget-object v11, p0, Lamp;->d:Lami;

    invoke-virtual {v11}, Lami;->c()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 1406
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v0, :cond_c

    instance-of v11, v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    if-eqz v11, :cond_c

    move-object v3, v0

    .line 1407
    check-cast v3, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 1409
    .local v3, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->g()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 1410
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "isTryListen"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v10, p0, Lamp;->l:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1412
    iget-object v10, p0, Lamp;->g:Lamk;

    invoke-virtual {v10}, Lamk;->g()Lamm;

    move-result-object v1

    .line 1413
    .local v1, "bookInfo":Lamm;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lamm;->l()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1414
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "tipUrl is not null,but user is autobuy,not play"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    .end local v1    # "bookInfo":Lamm;
    :goto_5
    invoke-virtual {p0}, Lamp;->I()V

    .line 1425
    invoke-virtual {v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v10

    invoke-direct {p0, v10}, Lamp;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    goto/16 :goto_3

    .line 1416
    .restart local v1    # "bookInfo":Lamm;
    :cond_a
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "tipUrl is not null,play"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string/jumbo v10, "BookBizPresenter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tipUrl is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lamp;->l:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v10, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v10}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v10

    iget-object v11, p0, Lamp;->o:Lic;

    invoke-virtual {v10, v11}, Lie;->a(Lic;)V

    .line 1419
    iget-object v10, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v10}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v10

    iget-object v11, p0, Lamp;->l:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lie;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 1422
    .end local v1    # "bookInfo":Lamm;
    :cond_b
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "tipUrl is null"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1431
    .end local v3    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    :cond_c
    iget-object v11, p0, Lamp;->d:Lami;

    invoke-virtual {v11}, Lami;->e()I

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p0, Lamp;->d:Lami;

    invoke-virtual {v11}, Lami;->i()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1432
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "MediaPlayer | onCompletion, mode is LIST and index is last, stop play"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v10

    invoke-virtual {v10}, Lamz;->f()V

    goto/16 :goto_3

    .line 1435
    :cond_d
    iget-object v11, p0, Lamp;->d:Lami;

    invoke-virtual {v11, v10}, Lami;->a(Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1436
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "MediaPlayer | onCompletion, has next, start play next"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v10, p0, Lamp;->d:Lami;

    invoke-virtual {v10}, Lami;->g()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v9

    .line 1438
    .local v9, "next":Lcom/iflytek/viafly/player/entity/Audio;
    invoke-direct {p0, v9}, Lamp;->a(Lcom/iflytek/viafly/player/entity/Audio;)V

    goto/16 :goto_3
.end method

.method public l()V
    .locals 4

    .prologue
    .line 1496
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1497
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1498
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1499
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1500
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1501
    invoke-interface {v0}, Lamh;->l()V

    goto :goto_0

    .line 1504
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    return-void
.end method

.method public m()Z
    .locals 5

    .prologue
    .line 1677
    const/4 v1, 0x1

    .line 1679
    .local v1, "canStop":Z
    iget-object v4, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1680
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1681
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1682
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1683
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1684
    if-eqz v1, :cond_1

    invoke-interface {v0}, Lamh;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1687
    .end local v0    # "bookView":Lamh;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_2
    return v1
.end method

.method public n()V
    .locals 5

    .prologue
    .line 1692
    const-string/jumbo v3, "BookBizPresenter"

    const-string/jumbo v4, "registered"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v3, 0x1

    iput-boolean v3, p0, Lamp;->k:Z

    .line 1695
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1696
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1697
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1698
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1699
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1700
    invoke-interface {v0}, Lamh;->n()V

    goto :goto_0

    .line 1703
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    invoke-static {}, Laio;->b()Laio;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_BOOK:Lcom/iflytek/viafly/player/base/PlayerBizType;

    invoke-virtual {v3, v4}, Laio;->a(Lcom/iflytek/viafly/player/base/PlayerBizType;)V

    .line 1704
    return-void
.end method

.method public o()V
    .locals 5

    .prologue
    .line 1708
    const-string/jumbo v3, "BookBizPresenter"

    const-string/jumbo v4, "unregistered, notify ui "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const/4 v3, 0x0

    iput-boolean v3, p0, Lamp;->k:Z

    .line 1711
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1712
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1713
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1714
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1715
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1716
    invoke-interface {v0}, Lamh;->o()V

    goto :goto_0

    .line 1719
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    iget-object v3, p0, Lamp;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1720
    iget-object v3, p0, Lamp;->d:Lami;

    invoke-virtual {v3}, Lami;->m()V

    .line 1721
    invoke-static {}, Laio;->b()Laio;

    move-result-object v3

    invoke-virtual {v3}, Laio;->a()V

    .line 1722
    return-void
.end method

.method public onEvent(Lti;)V
    .locals 2
    .param p1, "event"    # Lti;

    .prologue
    .line 1644
    if-nez p1, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1647
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    const-string/jumbo v1, "UserLogoutEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1654
    iget-object v1, p0, Lamp;->g:Lamk;

    invoke-virtual {v1}, Lamk;->l()V

    .line 1656
    iget-object v1, p0, Lamp;->d:Lami;

    invoke-virtual {v1}, Lami;->l()V

    goto :goto_0
.end method

.method public p()V
    .locals 2

    .prologue
    .line 1551
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "onPlayNext "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v0, p0, Lamp;->n:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1554
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 1559
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "onPlayLast "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v0, p0, Lamp;->n:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1561
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 1542
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "onPlayClick "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lamp;->n:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1545
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lamp;->h:Larc;

    invoke-virtual {v0, p0}, Larc;->b(Laqy;)Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 2

    .prologue
    .line 327
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "loadData"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lamp;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    iget-object v0, p0, Lamp;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    const/16 v0, 0x3fb

    invoke-direct {p0, v0}, Lamp;->f(I)V

    goto :goto_0
.end method

.method public u()V
    .locals 2

    .prologue
    .line 346
    iget-object v1, p0, Lamp;->g:Lamk;

    invoke-virtual {v1}, Lamk;->b()Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 349
    invoke-direct {p0, v0}, Lamp;->a(Ljava/util/List;)V

    .line 351
    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 354
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "loadBookInfo"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lamp;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-direct {p0, v0}, Lamp;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public w()V
    .locals 5

    .prologue
    .line 416
    const-string/jumbo v2, "BookBizPresenter"

    const-string/jumbo v3, "getShareLinks"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v2, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    iget-object v2, p0, Lamp;->c:Lanb;

    if-nez v2, :cond_0

    .line 419
    new-instance v2, Lanb;

    iget-object v3, p0, Lamp;->f:Landroid/content/Context;

    iget-object v4, p0, Lamp;->m:Lamq;

    invoke-direct {v2, v3, v4}, Lanb;-><init>(Landroid/content/Context;Lamq;)V

    iput-object v2, p0, Lamp;->c:Lanb;

    .line 421
    :cond_0
    iget-object v2, p0, Lamp;->g:Lamk;

    invoke-virtual {v2}, Lamk;->k()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "contentId":Ljava/lang/String;
    iget-object v2, p0, Lamp;->d:Lami;

    invoke-virtual {v2}, Lami;->k()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "chapterId":Ljava/lang/String;
    iget-object v2, p0, Lamp;->c:Lanb;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v1, v0, v3}, Lanb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 428
    .end local v0    # "chapterId":Ljava/lang/String;
    .end local v1    # "contentId":Ljava/lang/String;
    :goto_0
    return-void

    .line 426
    :cond_1
    const/16 v2, 0x3f8

    invoke-direct {p0, v2}, Lamp;->f(I)V

    goto :goto_0
.end method

.method public x()V
    .locals 2

    .prologue
    .line 451
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "saveHistory no network"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "saveHistory"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {p0}, Lamp;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const-string/jumbo v0, "2"

    invoke-direct {p0, v0}, Lamp;->c(Ljava/lang/String;)V

    .line 462
    :cond_1
    invoke-direct {p0}, Lamp;->R()V

    .line 464
    :cond_2
    const-string/jumbo v0, "1"

    invoke-direct {p0, v0}, Lamp;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public y()V
    .locals 7

    .prologue
    .line 613
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, "addCollect"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :try_start_0
    iget-object v5, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v5}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 616
    iget-object v5, p0, Lamp;->g:Lamk;

    invoke-virtual {v5}, Lamk;->k()Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "contentId":Ljava/lang/String;
    iget-object v5, p0, Lamp;->d:Lami;

    invoke-virtual {v5}, Lami;->k()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "chapterId":Ljava/lang/String;
    iget-object v5, p0, Lamp;->g:Lamk;

    invoke-virtual {v5}, Lamk;->j()Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->q()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "chapterName":Ljava/lang/String;
    iget-object v5, p0, Lamp;->h:Larc;

    invoke-virtual {v5}, Larc;->c()I

    move-result v4

    .line 620
    .local v4, "position":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-ltz v4, :cond_1

    .line 621
    iget-object v5, p0, Lamp;->b:Lamx;

    invoke-virtual {v5, v2, v0, v1, v4}, Lamx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 634
    .end local v0    # "chapterId":Ljava/lang/String;
    .end local v1    # "chapterName":Ljava/lang/String;
    .end local v2    # "contentId":Ljava/lang/String;
    .end local v4    # "position":I
    :goto_0
    return-void

    .line 626
    :cond_0
    const/16 v5, 0x3f9

    invoke-direct {p0, v5}, Lamp;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v3

    .line 630
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BookBizPresenter"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v5, 0x3ed

    invoke-direct {p0, v5}, Lamp;->f(I)V

    goto :goto_0
.end method

.method public z()V
    .locals 6

    .prologue
    .line 640
    const-string/jumbo v4, "BookBizPresenter"

    const-string/jumbo v5, "removeCollect"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v4, p0, Lamp;->f:Landroid/content/Context;

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 642
    iget-object v4, p0, Lamp;->g:Lamk;

    invoke-virtual {v4}, Lamk;->g()Lamm;

    move-result-object v0

    .line 643
    .local v0, "bookInfo":Lamm;
    if-eqz v0, :cond_0

    .line 644
    iget-object v4, p0, Lamp;->g:Lamk;

    invoke-virtual {v0}, Lamm;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lamk;->d(Ljava/lang/String;)Lamo;

    move-result-object v1

    .line 645
    .local v1, "bookMarkInfo":Lamo;
    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v1}, Lamo;->c()Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "cid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 648
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    const-string/jumbo v4, "BookBizPresenter"

    const-string/jumbo v5, "removeCollect request"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v4, p0, Lamp;->b:Lamx;

    invoke-virtual {v4, v3}, Lamx;->a(Ljava/util/List;)J

    .line 661
    .end local v0    # "bookInfo":Lamm;
    .end local v1    # "bookMarkInfo":Lamo;
    .end local v2    # "cid":Ljava/lang/String;
    .end local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 653
    .restart local v0    # "bookInfo":Lamm;
    .restart local v1    # "bookMarkInfo":Lamo;
    .restart local v2    # "cid":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lamp;->f(I)V

    goto :goto_0

    .line 659
    .end local v0    # "bookInfo":Lamm;
    .end local v1    # "bookMarkInfo":Lamo;
    .end local v2    # "cid":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x3fa

    invoke-direct {p0, v4}, Lamp;->f(I)V

    goto :goto_0
.end method
