.class public Lawq;
.super Landroid/widget/BaseAdapter;
.source "PersonalizedRingtoneAdapter.java"

# interfaces
.implements Lawr$a;
.implements Lawt$a;
.implements Lawy$a;


# static fields
.field private static final h:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lawy;

.field private c:Lawt;

.field private d:Lawr;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

.field private g:J

.field private i:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

.field private j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(I)V

    sput-object v0, Lawq;->h:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lawq;->e:Ljava/util/List;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lawq;->g:J

    .line 305
    new-instance v0, Lawq$1;

    invoke-direct {v0, p0}, Lawq$1;-><init>(Lawq;)V

    iput-object v0, p0, Lawq;->i:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    .line 529
    new-instance v0, Lawq$2;

    invoke-direct {v0, p0}, Lawq$2;-><init>(Lawq;)V

    iput-object v0, p0, Lawq;->j:Landroid/os/Handler;

    .line 64
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    const-string/jumbo v1, "Constructor() "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lawq;->a:Landroid/app/Activity;

    .line 66
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    .line 67
    invoke-static {v0}, Lawy;->a(Landroid/content/Context;)Lawy;

    move-result-object v0

    iput-object v0, p0, Lawq;->b:Lawy;

    .line 68
    iget-object v0, p0, Lawq;->b:Lawy;

    invoke-virtual {v0, p0}, Lawy;->a(Lawy$a;)V

    .line 69
    invoke-static {}, Lawt;->a()Lawt;

    move-result-object v0

    iput-object v0, p0, Lawq;->c:Lawt;

    .line 70
    iget-object v0, p0, Lawq;->c:Lawt;

    invoke-virtual {v0, p0}, Lawt;->a(Lawt$a;)V

    .line 72
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    .line 73
    invoke-static {v0}, Lawr;->a(Landroid/content/Context;)Lawr;

    move-result-object v0

    iput-object v0, p0, Lawq;->d:Lawr;

    .line 74
    iget-object v0, p0, Lawq;->d:Lawr;

    invoke-virtual {v0, p0}, Lawr;->a(Lawr$a;)V

    .line 75
    invoke-virtual {p0, p2}, Lawq;->a(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lawq;)Lawr;
    .locals 1
    .param p0, "x0"    # Lawq;

    .prologue
    .line 37
    iget-object v0, p0, Lawq;->d:Lawr;

    return-object v0
.end method

.method static synthetic a(Lawq;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 0
    .param p0, "x0"    # Lawq;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lawq;->d(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    return-void
.end method

.method static synthetic a(Lawq;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 0
    .param p0, "x0"    # Lawq;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    .param p2, "x2"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lawq;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 12
    .param p1, "view"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    .param p2, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    const/4 v2, 0x0

    .line 392
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-nez v0, :cond_1

    .line 393
    :cond_0
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    const-string/jumbo v1, "synthesisOrPlay() data is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-direct {p0}, Lawq;->d()Z

    move-result v10

    .line 397
    .local v10, "isInterrupted":Z
    if-eqz v10, :cond_2

    .line 398
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    const-string/jumbo v1, "action is interrupted"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    iget-object v1, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->h(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lawq;->g:J

    .line 405
    iget-object v0, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    const-string/jumbo v1, "\u8bf7\u8f93\u5165\u5185\u5bb9"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 409
    :cond_3
    const/4 v7, 0x0

    .line 410
    .local v7, "hasAudio":Z
    iget-object v0, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getAudioPath()Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "cachePath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 413
    invoke-static {v6}, Lawp;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    const/4 v7, 0x1

    .line 420
    .end local v6    # "cachePath":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lawp;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 422
    .local v11, "isNeedSynthesis":Z
    if-nez v7, :cond_8

    if-eqz v11, :cond_8

    .line 423
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 424
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 415
    .end local v11    # "isNeedSynthesis":Z
    .restart local v6    # "cachePath":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "Asset://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    const/4 v7, 0x1

    goto :goto_1

    .line 428
    .end local v6    # "cachePath":Ljava/lang/String;
    .restart local v11    # "isNeedSynthesis":Z
    :cond_6
    invoke-static {}, Lhl;->o()Z

    move-result v0

    if-nez v0, :cond_7

    .line 429
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    const-string/jumbo v1, "\u6570\u636e\u65e0\u6cd5\u5b58\u50a8\uff0c\u8bf7\u63d2\u5165SD\u5361"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 432
    :cond_7
    iget-object v0, p0, Lawq;->b:Lawy;

    invoke-virtual {v0, p2}, Lawy;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 433
    iget-object v0, p0, Lawq;->c:Lawt;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->getProgressView()Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawt;->a(Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;)V

    .line 434
    iget-object v0, p0, Lawq;->c:Lawt;

    invoke-virtual {v0, p2, v2}, Lawt;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V

    goto/16 :goto_0

    .line 438
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 439
    .local v8, "currTime":J
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    iget-object v1, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 440
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lawq;->g:J

    sub-long v2, v8, v2

    iget-object v4, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "local"

    .line 439
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JILjava/lang/String;)V

    .line 443
    invoke-direct {p0, p2}, Lawq;->d(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 444
    if-eqz v7, :cond_a

    .line 451
    :cond_9
    :goto_2
    invoke-direct {p0}, Lawq;->e()V

    .line 453
    iget-object v0, p0, Lawq;->d:Lawr;

    invoke-virtual {v0, p2}, Lawr;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    goto/16 :goto_0

    .line 446
    :cond_a
    if-nez v11, :cond_9

    .line 447
    iget-object v0, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    iget-object v1, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->setWording(Ljava/lang/String;)V

    .line 448
    iget-object v0, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    iget-object v1, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lawp;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->setAudioPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 3
    .param p1, "selectedRingData"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .param p2, "inditorPageData"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    const/4 v2, 0x1

    .line 490
    if-nez p1, :cond_0

    .line 491
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 492
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    sget-object v2, Lawq;->h:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {p0}, Lawq;->notifyDataSetChanged()V

    .line 515
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 499
    .local v0, "firstData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    if-eqz v0, :cond_2

    .line 500
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {p1, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    iput-object p1, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 502
    iput-boolean v2, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b:Z

    .line 510
    :goto_1
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 511
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    sget-object v2, Lawq;->h:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {p0}, Lawq;->notifyDataSetChanged()V

    goto :goto_0

    .line 504
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .end local v0    # "firstData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ZLjava/lang/String;)V

    .restart local v0    # "firstData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    goto :goto_1

    .line 507
    :cond_2
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .end local v0    # "firstData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ZLjava/lang/String;)V

    .restart local v0    # "firstData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    goto :goto_1
.end method

.method static synthetic b(Lawq;)V
    .locals 0
    .param p0, "x0"    # Lawq;

    .prologue
    .line 37
    invoke-direct {p0}, Lawq;->c()V

    return-void
.end method

.method static synthetic b(Lawq;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 0
    .param p0, "x0"    # Lawq;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lawq;->c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    return-void
.end method

.method static synthetic c(Lawq;)Lawt;
    .locals 1
    .param p0, "x0"    # Lawq;

    .prologue
    .line 37
    iget-object v0, p0, Lawq;->c:Lawt;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 358
    iget-object v1, p0, Lawq;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lawq;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string/jumbo v1, "PersonalizedRingtoneAdapter"

    const-string/jumbo v2, "can not clear focus"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 459
    const-string/jumbo v1, "PersonalizedRingtoneAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataEditable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    const-string/jumbo v1, "PersonalizedRingtoneAdapter"

    const-string/jumbo v2, "setDataEditable param is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 465
    .local v0, "viewData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->f:Z

    goto :goto_1

    .line 467
    .end local v0    # "viewData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->f:Z

    goto :goto_0
.end method

.method private d(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 478
    const-string/jumbo v1, "PersonalizedRingtoneAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSelected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    if-eqz v1, :cond_1

    .line 480
    :cond_0
    const-string/jumbo v1, "PersonalizedRingtoneAdapter"

    const-string/jumbo v2, "setDataSelected param is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 484
    .local v0, "viewData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b:Z

    goto :goto_1

    .line 486
    .end local v0    # "viewData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b:Z

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 368
    iget-object v2, p0, Lawq;->d:Lawr;

    invoke-virtual {v2}, Lawr;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    const-string/jumbo v1, "PersonalizedRingtoneAdapter"

    const-string/jumbo v2, "interruptActions() stop audio playing"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lawq;->d:Lawr;

    invoke-virtual {v1}, Lawr;->a()V

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    iget-object v2, p0, Lawq;->b:Lawy;

    invoke-virtual {v2}, Lawy;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    const-string/jumbo v1, "PersonalizedRingtoneAdapter"

    const-string/jumbo v2, "interruptActions() stop audio synthesising"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lawq;->b:Lawy;

    invoke-virtual {v1}, Lawy;->a()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v2, p0, Lawq;->c:Lawt;

    invoke-virtual {v2}, Lawt;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    const-string/jumbo v2, "PersonalizedRingtoneAdapter"

    const-string/jumbo v3, "interruptActions() stop animation running"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v2, p0, Lawq;->j:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lawq;->j:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 382
    iget-object v2, p0, Lawq;->j:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 473
    .local v0, "viewData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->f:Z

    goto :goto_0

    .line 475
    .end local v0    # "viewData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 125
    .local v0, "data":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b:Z

    if-eqz v2, :cond_0

    .line 129
    .end local v0    # "data":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 218
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioStart() data= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .param p2, "errorCode"    # I

    .prologue
    .line 169
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSynthesisFail() data= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 171
    const/4 p2, 0x2

    .line 175
    :goto_0
    iget-object v0, p0, Lawq;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lawq;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;IIF)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .param p2, "errorCode"    # I
    .param p3, "dividerPos"    # I
    .param p4, "dividerPercent"    # F

    .prologue
    .line 191
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReachVituralDivider() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dividerPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dividerPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;Ljava/lang/String;)V
    .locals 12
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .param p2, "audioPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 136
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSynthesisSuccess() data= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " audioPath= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p0, p1, v11}, Lawq;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V

    .line 164
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 143
    .local v6, "currTime":J
    const/4 v4, 0x0

    .line 144
    .local v4, "textSize":I
    iget-object v0, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 147
    :cond_2
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 148
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lawq;->g:J

    sub-long v2, v6, v2

    const-string/jumbo v5, "net"

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JILjava/lang/String;)V

    .line 150
    iget-object v0, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 151
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lawp;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "newAudioPath":Ljava/lang/String;
    invoke-static {p2, v9}, Lawp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 153
    .local v10, "result":Z
    const/4 v8, 0x0

    .line 154
    .local v8, "errorCode":I
    if-nez v10, :cond_4

    .line 155
    const/4 v8, -0x1

    .line 160
    :goto_1
    iget-object v0, p0, Lawq;->j:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lawq;->j:Landroid/os/Handler;

    invoke-virtual {v0, v11, v8, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    :cond_3
    invoke-direct {p0}, Lawq;->e()V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    iget-object v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->setWording(Ljava/lang/String;)V

    .line 158
    iget-object v0, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->setAudioPath(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)V
    .locals 2
    .param p1, "selectedRingData"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .prologue
    .line 518
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lawq;->a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 520
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ILcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;)V
    .locals 2
    .param p1, "selectedRingData"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .param p2, "errorCode"    # I
    .param p3, "reqeustSendListener"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    .prologue
    .line 524
    iput-object p3, p0, Lawq;->f:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    .line 525
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lawq;->a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 527
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    const/4 v9, 0x0

    .line 79
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;>;"
    sget-object v5, Lawq;->h:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v5, p0, Lawq;->e:Ljava/util/List;

    invoke-static {v5}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    new-instance v7, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    const/4 v8, 0x1

    .line 86
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v5, v8, v6}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ZLjava/lang/String;)V

    .line 85
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 88
    new-instance v7, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v5, v9, v6}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ZLjava/lang/String;)V

    .line 88
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 94
    .local v0, "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v0, :cond_1

    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "isHandled":Z
    iget-object v6, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 99
    .local v4, "viewData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    if-eqz v4, :cond_2

    .line 100
    iget-object v7, v4, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    new-instance v6, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    iget-boolean v7, v4, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b:Z

    iget-object v8, v4, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-direct {v6, v0, v7, v8}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ZLjava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const/4 v2, 0x1

    .line 109
    .end local v4    # "viewData":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    :cond_3
    if-nez v2, :cond_1

    .line 110
    new-instance v6, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 111
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v9, v7}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ZLjava/lang/String;)V

    .line 110
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    .end local v0    # "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .end local v2    # "isHandled":Z
    :cond_4
    iget-object v5, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 116
    iget-object v5, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    .end local v3    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;>;"
    :goto_2
    invoke-virtual {p0}, Lawq;->notifyDataSetChanged()V

    .line 121
    return-void

    .line 118
    :cond_5
    iget-object v5, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_2
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 543
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    const-string/jumbo v1, "onDestory() "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lawq;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lawq;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 546
    iput-object v2, p0, Lawq;->j:Landroid/os/Handler;

    .line 548
    :cond_0
    iput-object v2, p0, Lawq;->a:Landroid/app/Activity;

    .line 549
    iget-object v0, p0, Lawq;->b:Lawy;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lawq;->b:Lawy;

    invoke-virtual {v0, v2}, Lawy;->a(Lawy$a;)V

    .line 551
    iget-object v0, p0, Lawq;->b:Lawy;

    invoke-virtual {v0}, Lawy;->a()V

    .line 552
    iput-object v2, p0, Lawq;->b:Lawy;

    .line 554
    :cond_1
    iget-object v0, p0, Lawq;->c:Lawt;

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lawq;->c:Lawt;

    invoke-virtual {v0, v2}, Lawt;->a(Lawt$a;)V

    .line 556
    iget-object v0, p0, Lawq;->c:Lawt;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lawt;->b(I)V

    .line 557
    iget-object v0, p0, Lawq;->c:Lawt;

    invoke-virtual {v0, v2}, Lawt;->a(Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;)V

    .line 558
    iget-object v0, p0, Lawq;->c:Lawt;

    invoke-virtual {v0}, Lawt;->c()V

    .line 559
    iput-object v2, p0, Lawq;->c:Lawt;

    .line 561
    :cond_2
    iget-object v0, p0, Lawq;->d:Lawr;

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lawq;->d:Lawr;

    invoke-virtual {v0, v2}, Lawr;->a(Lawr$a;)V

    .line 563
    iget-object v0, p0, Lawq;->d:Lawr;

    invoke-virtual {v0}, Lawr;->a()V

    .line 564
    iput-object v2, p0, Lawq;->d:Lawr;

    .line 566
    :cond_3
    iget-object v0, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 568
    return-void
.end method

.method public b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 224
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioEnd() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lawq;->notifyDataSetChanged()V

    .line 226
    return-void
.end method

.method public b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .param p2, "errorCode"    # I

    .prologue
    .line 184
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationBegin() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .param p2, "errorCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 199
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationEnd() data= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-nez p2, :cond_1

    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lawq;->d(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 203
    iget-object v0, p0, Lawq;->d:Lawr;

    invoke-virtual {v0, p1}, Lawr;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 212
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lawq;->notifyDataSetChanged()V

    .line 213
    return-void

    .line 205
    :cond_1
    const/4 v0, -0x1

    if-ne v0, p2, :cond_2

    .line 206
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    const-string/jumbo v1, "\u6570\u636e\u65e0\u6cd5\u5b58\u50a8\uff0c\u8bf7\u63d2\u5165SD\u5361"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x2

    if-eq v0, p2, :cond_0

    .line 210
    iget-object v0, p0, Lawq;->a:Landroid/app/Activity;

    const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lawq;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lawq;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 251
    int-to-long v2, p1

    .line 253
    .local v2, "id":J
    :try_start_0
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    .line 257
    :goto_0
    return-wide v2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "PersonalizedRingtoneAdapter"

    const-string/jumbo v4, "getItemId id not legal"

    invoke-static {v1, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 236
    .local v0, "data":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    iget v1, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 262
    iget-object v3, p0, Lawq;->e:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v0, v4

    .line 263
    .local v0, "data":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    :goto_0
    if-nez v0, :cond_1

    move-object v3, v4

    .line 302
    :goto_1
    return-object v3

    .line 262
    .end local v0    # "data":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    :cond_0
    iget-object v3, p0, Lawq;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-object v0, v3

    goto :goto_0

    .line 266
    .restart local v0    # "data":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    :cond_1
    iget v3, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    move-object v3, p2

    .line 302
    goto :goto_1

    .line 268
    :pswitch_0
    if-eqz p2, :cond_3

    instance-of v3, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    if-eqz v3, :cond_3

    move-object v2, p2

    .line 270
    check-cast v2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    .line 271
    .local v2, "view":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->setData(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    goto :goto_2

    .line 273
    .end local v2    # "view":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    :cond_3
    new-instance p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lawq;->a:Landroid/app/Activity;

    iget-object v4, p0, Lawq;->i:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    invoke-direct {p2, v3, v0, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;)V

    .line 276
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_2

    .line 278
    :pswitch_1
    if-nez p2, :cond_2

    .line 279
    new-instance p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneWaitingView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lawq;->a:Landroid/app/Activity;

    invoke-direct {p2, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneWaitingView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_2

    .line 283
    :pswitch_2
    if-eqz p2, :cond_4

    instance-of v3, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;

    if-eqz v3, :cond_4

    move-object v2, p2

    .line 285
    check-cast v2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;

    .line 286
    .local v2, "view":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;
    iget v3, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->e:I

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->setErrorCode(I)V

    goto :goto_2

    .line 288
    .end local v2    # "view":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;
    :cond_4
    new-instance v1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;

    iget-object v3, p0, Lawq;->a:Landroid/app/Activity;

    iget-object v4, p0, Lawq;->f:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    invoke-direct {v1, v3, v4}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;)V

    .line 289
    .local v1, "errorView":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;
    iget v3, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->e:I

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->setErrorCode(I)V

    .line 290
    move-object p2, v1

    .line 292
    goto :goto_2

    .line 294
    .end local v1    # "errorView":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;
    :pswitch_3
    if-nez p2, :cond_2

    .line 295
    new-instance p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneTipView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lawq;->a:Landroid/app/Activity;

    invoke-direct {p2, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneTipView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_2

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x4

    return v0
.end method
