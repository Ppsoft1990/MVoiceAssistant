.class public Ladl;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "SpecificBroadcastSettingFragment.java"

# interfaces
.implements Ladj;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lno$b;
.implements Lno$c;


# instance fields
.field private A:Ljava/lang/Object;

.field a:Ladm;

.field b:Larn;

.field private final c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private final e:I

.field private f:Lno;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private s:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ladn;

.field private u:Landroid/widget/Toast;

.field private v:Lcom/iflytek/base/skin/customView/XGridView;

.field private w:I

.field private x:I

.field private y:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    .line 93
    const-string/jumbo v0, "SpecificBroadcastSettingFragment"

    iput-object v0, p0, Ladl;->c:Ljava/lang/String;

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Ladl;->e:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Ladl;->g:I

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Ladl;->h:I

    .line 106
    const/4 v0, 0x4

    iput v0, p0, Ladl;->i:I

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Ladl;->j:I

    .line 110
    const/4 v0, 0x6

    iput v0, p0, Ladl;->k:I

    .line 112
    const/4 v0, 0x7

    iput v0, p0, Ladl;->l:I

    .line 114
    const/16 v0, 0x8

    iput v0, p0, Ladl;->m:I

    .line 116
    const/16 v0, 0x9

    iput v0, p0, Ladl;->n:I

    .line 118
    const/16 v0, 0xa

    iput v0, p0, Ladl;->o:I

    .line 120
    const/16 v0, 0x4c4

    iput v0, p0, Ladl;->p:I

    .line 122
    const/16 v0, 0x7d1

    iput v0, p0, Ladl;->q:I

    .line 123
    const/16 v0, 0x7d2

    iput v0, p0, Ladl;->r:I

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Ladl;->w:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Ladl;->x:I

    .line 1260
    new-instance v0, Ladl$6;

    invoke-direct {v0, p0}, Ladl$6;-><init>(Ladl;)V

    iput-object v0, p0, Ladl;->b:Larn;

    return-void
.end method

.method static synthetic a(Ladl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ladl;

    .prologue
    .line 89
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ladl;I)V
    .locals 0
    .param p0, "x0"    # Ladl;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ladl;->n(I)V

    return-void
.end method

.method static synthetic a(Ladl;II)V
    .locals 0
    .param p0, "x0"    # Ladl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ladl;->b(II)V

    return-void
.end method

.method static synthetic b(Ladl;I)I
    .locals 0
    .param p0, "x0"    # Ladl;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Ladl;->w:I

    return p1
.end method

.method static synthetic b(Ladl;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Ladl;

    .prologue
    .line 89
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private b(II)V
    .locals 3
    .param p1, "dstMsg"    # I
    .param p2, "arg"    # I

    .prologue
    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p0}, Ladl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ladl$2;

    invoke-direct {v2, p0, p1, p2}, Ladl$2;-><init>(Ladl;II)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 312
    return-void
.end method

.method static synthetic c(Ladl;)Ladn;
    .locals 1
    .param p0, "x0"    # Ladl;

    .prologue
    .line 89
    iget-object v0, p0, Ladl;->t:Ladn;

    return-object v0
.end method

.method static synthetic d(Ladl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ladl;

    .prologue
    .line 89
    iget-object v0, p0, Ladl;->A:Ljava/lang/Object;

    return-object v0
.end method

.method private n(I)V
    .locals 5
    .param p1, "pIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 798
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, p1, v1}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 801
    iget-object v2, p0, Ladl;->d:Landroid/content/Context;

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 802
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v3

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 803
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->l()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-static {v2, v3, v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0, p1, v4}, Ladl;->a(IZ)V

    .line 818
    .end local v0    # "filePath":Ljava/lang/String;
    :goto_0
    return-void

    .line 808
    .restart local v0    # "filePath":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Ladl;->y:Ljava/util/Queue;

    monitor-enter v2

    .line 809
    :try_start_0
    iget-object v1, p0, Ladl;->y:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 810
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    const/4 v1, 0x7

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v4, v3}, Ladl;->a(IIILjava/lang/Object;)V

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 816
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    const-string/jumbo v2, "startDownload: index is not available"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iget-object v0, p0, Ladl;->a:Ladm;

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ladm;->a(Ljava/util/List;)V

    .line 429
    iget-object v0, p0, Ladl;->a:Ladm;

    invoke-virtual {v0}, Ladm;->notifyDataSetChanged()V

    .line 430
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 571
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0, v2, v1, v1, v3}, Ladl;->a(IIILjava/lang/Object;)V

    .line 588
    :goto_0
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 590
    invoke-static {v0}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v1

    const-string/jumbo v2, "FD01024"

    const-string/jumbo v3, "spcl_broadcast_roles_download"

    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 596
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v0

    .line 593
    invoke-virtual {v1, v2, v3, v0}, Labu;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    :cond_0
    return-void

    .line 573
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Ladl;->a(IIILjava/lang/Object;)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 578
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    invoke-static {v0}, Lhl;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    invoke-virtual {p0, p1}, Ladl;->h(I)V

    goto :goto_0

    .line 581
    :cond_3
    invoke-virtual {p0, p1}, Ladl;->i(I)V

    goto :goto_0

    .line 584
    :cond_4
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    const v1, 0x7f0c02fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ladl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(II)V
    .locals 2
    .param p1, "pIndex"    # I
    .param p2, "pPercent"    # I

    .prologue
    .line 953
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(I)V

    .line 955
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 957
    :cond_0
    return-void
.end method

.method protected a(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1158
    iget-object v1, p0, Ladl;->z:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1159
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1160
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1161
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1162
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1163
    iget-object v1, p0, Ladl;->z:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1164
    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "type"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 896
    if-eqz p3, :cond_4

    .line 897
    const/16 v5, 0x29

    if-ne p2, v5, :cond_2

    instance-of v5, p3, Lyf;

    if-eqz v5, :cond_2

    move-object v1, p3

    .line 899
    check-cast v1, Lyf;

    .line 901
    .local v1, "specificVoiceInfo":Lyf;
    invoke-virtual {v1}, Lyf;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 902
    iget-object v6, p0, Ladl;->y:Ljava/util/Queue;

    monitor-enter v6

    .line 903
    :try_start_0
    iget-object v5, p0, Ladl;->y:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 904
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Ladl;->k(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 905
    iget-object v5, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v4

    .line 906
    .local v4, "voiceRoleName":Ljava/lang/String;
    iget-object v5, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1, v4}, Lyf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 909
    .end local v0    # "index":Ljava/lang/Integer;
    .end local v4    # "voiceRoleName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    iget-object v5, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 925
    .end local v1    # "specificVoiceInfo":Lyf;
    :cond_2
    :goto_1
    iget-object v6, p0, Ladl;->y:Ljava/util/Queue;

    monitor-enter v6

    .line 926
    :cond_3
    :goto_2
    :try_start_2
    iget-object v5, p0, Ladl;->y:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 927
    iget-object v5, p0, Ladl;->y:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 928
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ladl;->k(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 929
    iget-object v5, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f()Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 931
    sget-object v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, v0, v5}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    goto :goto_2

    .line 937
    .end local v0    # "index":I
    .end local v3    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 915
    :cond_4
    iget-object v5, p0, Ladl;->f:Lno;

    invoke-virtual {v5, p2}, Lno;->a(I)I

    move-result v2

    .line 916
    .local v2, "state":I
    const/16 v5, 0x384

    if-eq v2, v5, :cond_5

    const v5, 0xc3c09

    if-ne v2, v5, :cond_6

    .line 918
    :cond_5
    const/16 v5, 0x4c4

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v2, v8, v6}, Ladl;->a(IIILjava/lang/Object;)V

    goto :goto_1

    .line 920
    :cond_6
    const/4 v5, 0x4

    iget-object v6, p0, Ladl;->d:Landroid/content/Context;

    const v7, 0x7f0c02f7

    .line 921
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 920
    invoke-virtual {p0, v5, v8, v8, v6}, Ladl;->a(IIILjava/lang/Object;)V

    goto :goto_1

    .line 933
    .end local v2    # "state":I
    .restart local v0    # "index":I
    .restart local v3    # "url":Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-virtual {p0, v0, v3}, Ladl;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 937
    .end local v0    # "index":I
    .end local v3    # "url":Ljava/lang/String;
    :cond_8
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 938
    return-void
.end method

.method protected a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V
    .locals 2
    .param p1, "pIndex"    # I
    .param p2, "pStatus"    # Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .prologue
    .line 946
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 948
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 950
    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 9
    .param p1, "pIndex"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1044
    :cond_0
    invoke-static {p2}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    sget-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, p1, v0}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    goto :goto_0

    .line 1048
    :cond_1
    invoke-virtual {p0, p1}, Ladl;->j(I)I

    move-result v7

    .line 1049
    .local v7, "state":I
    if-eqz v7, :cond_2

    .line 1050
    const/16 v0, 0x4c4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v7, v3, v4}, Ladl;->a(IIILjava/lang/Object;)V

    .line 1051
    sget-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, p1, v0}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    goto :goto_0

    .line 1054
    :cond_2
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v8

    .line 1056
    .local v8, "type":I
    const-string/jumbo v2, "dial_specific_res"

    .line 1057
    .local v2, "entryType":Ljava/lang/String;
    const/16 v1, 0x11

    .line 1058
    .local v1, "downloadFileType":I
    const/4 v0, 0x5

    if-ne v0, v8, :cond_3

    .line 1059
    const/4 v1, 0x3

    .line 1060
    const-string/jumbo v2, "yueyu_resource"

    .line 1062
    :cond_3
    iget-object v0, p0, Ladl;->f:Lno;

    const/4 v3, 0x1

    iget-object v4, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1066
    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v4}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Ladl;->d:Landroid/content/Context;

    iget-object v5, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1069
    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->l()Ljava/lang/String;

    move-result-object v5

    .line 1068
    invoke-static {v6, v8, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, p2

    .line 1062
    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(IZ)V
    .locals 2
    .param p1, "pIndex"    # I
    .param p2, "toSelect"    # Z

    .prologue
    .line 1104
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1107
    :cond_0
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ladl$5;

    invoke-direct {v1, p0, p1, p2}, Ladl$5;-><init>(Ladl;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/yd/business/OperationInfo;II)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p2, "requestType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 884
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3, p2, p1}, Ladl;->a(IIILjava/lang/Object;)V

    .line 885
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {p1}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Ladl;->u:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Ladl;->u:Landroid/widget/Toast;

    .line 561
    :goto_1
    iget-object v0, p0, Ladl;->u:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Ladl;->u:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected b(Ljava/lang/String;)I
    .locals 3
    .param p1, "pUrl"    # Ljava/lang/String;

    .prologue
    .line 1190
    if-eqz p1, :cond_1

    iget-object v2, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    .line 1191
    iget-object v2, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 1192
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1193
    iget-object v2, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1198
    .end local v0    # "i":I
    .end local v1    # "size":I
    :goto_1
    return v0

    .line 1192
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1198
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected b()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x64

    const-wide/16 v10, 0x0

    .line 437
    iget-object v4, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v4, :cond_1

    .line 493
    :cond_0
    return-void

    .line 440
    :cond_1
    iget-object v4, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 441
    .local v3, "voice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    invoke-virtual {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 443
    .local v1, "progress":I
    invoke-static {v2}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 446
    iget-object v5, p0, Ladl;->f:Lno;

    .line 447
    invoke-virtual {v5, v2}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 448
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_2

    .line 451
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    sget-object v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_PAUSED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 473
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v6

    mul-long/2addr v6, v12

    .line 475
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 476
    invoke-virtual {p0, v1}, Ladl;->m(I)I

    move-result v1

    .line 477
    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(I)V

    goto :goto_0

    .line 453
    :pswitch_1
    sget-object v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    goto :goto_0

    .line 456
    :pswitch_2
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 457
    sget-object v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 458
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(I)V

    .line 459
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :pswitch_3
    sget-object v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 464
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 465
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v6

    mul-long/2addr v6, v12

    .line 466
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 467
    invoke-virtual {p0, v1}, Ladl;->m(I)I

    move-result v1

    .line 468
    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(I)V

    goto/16 :goto_0

    .line 481
    :pswitch_4
    sget-object v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_PAUSED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 482
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 483
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v6

    mul-long/2addr v6, v12

    .line 484
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 485
    invoke-virtual {p0, v1}, Ladl;->m(I)I

    move-result v1

    .line 486
    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(I)V

    goto/16 :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public b(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 607
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_PAUSED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, p1, v1}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 608
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "downloadUrl":Ljava/lang/String;
    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPauseDownload url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v1, p0, Ladl;->f:Lno;

    invoke-virtual {v1, v0}, Lno;->e(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method protected b(ILjava/lang/String;)V
    .locals 5
    .param p1, "pIndex"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1079
    invoke-virtual {p0, p1, v4}, Ladl;->a(II)V

    .line 1080
    sget-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, p1, v0}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 1083
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1087
    invoke-static {v0}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v1

    const-string/jumbo v2, "FD01024"

    const-string/jumbo v3, "spcl_broadcast_roles_download_finished"

    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1092
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 1093
    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v0

    .line 1089
    invoke-virtual {v1, v2, v3, v0}, Labu;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1095
    :cond_0
    invoke-virtual {p0, p1, v4}, Ladl;->a(IZ)V

    .line 1096
    return-void
.end method

.method protected c()V
    .locals 7

    .prologue
    .line 499
    iget-object v3, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v3, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 503
    .local v2, "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 505
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b(Ljava/lang/String;)V

    .line 506
    sget-object v4, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    goto :goto_1

    .line 508
    :cond_3
    iget-object v4, p0, Ladl;->d:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v5

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 510
    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b(Ljava/lang/String;)V

    .line 511
    sget-object v4, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    goto :goto_1

    .line 513
    :cond_4
    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v4

    if-eqz v4, :cond_2

    .line 514
    sget-object v4, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->d()Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 515
    sget-object v4, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    goto :goto_1

    .line 522
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    :cond_5
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    .line 523
    invoke-virtual {v3, v4}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 525
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v3, v4}, Lil;->d(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 526
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ladl;->l(I)I

    move-result v0

    .line 527
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ladl;->k(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    iget-object v3, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    sget-object v4, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 530
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 531
    iget-object v4, p0, Ladl;->a:Ladm;

    iget-object v3, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 532
    invoke-virtual {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-virtual {v4, v3}, Ladm;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    .end local v0    # "index":I
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ladl;->l(I)I

    move-result v0

    .line 537
    .restart local v0    # "index":I
    invoke-virtual {p0, v0}, Ladl;->k(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    iget-object v4, p0, Ladl;->a:Ladm;

    iget-object v3, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 540
    invoke-virtual {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-virtual {v4, v3}, Ladm;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c(I)V
    .locals 5
    .param p1, "pIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 620
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p0, v3, v2, v2, v4}, Ladl;->a(IIILjava/lang/Object;)V

    .line 634
    :goto_0
    return-void

    .line 622
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1, v2, v4}, Ladl;->a(IIILjava/lang/Object;)V

    goto :goto_0

    .line 625
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, p1, v1}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 626
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 628
    invoke-virtual {p0}, Ladl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    .line 629
    invoke-virtual {v1, v0}, Lno;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {p0, p1}, Ladl;->h(I)V

    goto :goto_0
.end method

.method public d(I)V
    .locals 9
    .param p1, "pIndex"    # I

    .prologue
    const v8, 0x7f0c008f

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 644
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 649
    iget-object v2, p0, Ladl;->a:Ladm;

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 650
    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {v2, v1}, Ladm;->a(Ljava/lang/String;)V

    .line 651
    iget-object v1, p0, Ladl;->z:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 653
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v1

    if-nez v1, :cond_0

    .line 654
    invoke-virtual {p0, p1}, Ladl;->g(I)V

    .line 712
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->j()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 662
    invoke-virtual {p0, p1, v6}, Ladl;->a(IZ)V

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {p0, p1}, Ladl;->g(I)V

    goto :goto_0

    .line 667
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, p1, v1}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 668
    invoke-virtual {p0, v8}, Ladl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ladl;->a(Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Ladl;->a:Ladm;

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ladl;->x:I

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 671
    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-virtual {v2, v1}, Ladm;->a(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Ladl;->z:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 678
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 679
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v5, v5, v1}, Ladl;->a(IIILjava/lang/Object;)V

    goto :goto_0

    .line 680
    :cond_4
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 681
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v6, v5, v1}, Ladl;->a(IIILjava/lang/Object;)V

    goto :goto_0

    .line 684
    :cond_5
    iget-object v2, p0, Ladl;->a:Ladm;

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 685
    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-virtual {v2, v1}, Ladm;->a(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Ladl;->z:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v1

    if-nez v1, :cond_6

    .line 689
    invoke-virtual {p0, p1}, Ladl;->g(I)V

    goto/16 :goto_0

    .line 692
    :cond_6
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->j()Ljava/lang/String;

    move-result-object v0

    .line 693
    .restart local v0    # "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 696
    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 697
    invoke-virtual {p0, p1, v6}, Ladl;->a(IZ)V

    goto/16 :goto_0

    .line 699
    :cond_7
    invoke-virtual {p0, p1}, Ladl;->g(I)V

    goto/16 :goto_0

    .line 702
    :cond_8
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, p1, v1}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 703
    invoke-virtual {p0, v8}, Ladl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ladl;->a(Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Ladl;->a:Ladm;

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ladl;->x:I

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 706
    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-virtual {v2, v1}, Ladm;->a(Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Ladl;->z:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "pEerrorIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 1003
    if-nez p2, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    const-string/jumbo v5, "type"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1008
    .local v2, "type":I
    const/16 v5, 0x11

    if-ne v5, v2, :cond_0

    .line 1009
    const-string/jumbo v5, "url"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ladl;->b(Ljava/lang/String;)I

    move-result v4

    .line 1011
    .local v4, "voiceIndex":I
    invoke-virtual {p0, v4}, Ladl;->k(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1012
    const/16 v5, 0x38b

    if-ne v5, p1, :cond_2

    .line 1014
    iget-object v5, p0, Ladl;->f:Lno;

    invoke-virtual {v5, v3}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 1015
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, "filepath":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1018
    invoke-virtual {p0, v4, v8}, Ladl;->a(II)V

    .line 1019
    sget-object v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, v4, v5}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    .line 1020
    const-string/jumbo v5, "SpecificBroadcastSettingFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadError: EXIST_FINISH_TASK ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {p0, v4, v8}, Ladl;->a(IZ)V

    goto :goto_0

    .line 1025
    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v1    # "filepath":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {p0, v4, v5}, Ladl;->a(ILcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V

    goto :goto_0
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 14
    .param p1, "pStatusIntent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v12, 0x0

    .line 961
    const-string/jumbo v10, "SpecificBroadcastSettingFragment"

    const-string/jumbo v11, "downloadStatusChanged"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-nez p1, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 968
    .local v5, "type":I
    const/16 v10, 0x11

    if-eq v5, v10, :cond_2

    const/4 v10, 0x3

    if-ne v5, v10, :cond_0

    .line 970
    :cond_2
    const-string/jumbo v10, "url"

    .line 971
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 972
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ladl;->b(Ljava/lang/String;)I

    move-result v9

    .line 973
    .local v9, "voiceIndex":I
    invoke-virtual {p0, v9}, Ladl;->k(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 975
    sget-object v11, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    iget-object v10, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v10}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->d()Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 976
    iget-object v10, p0, Ladl;->f:Lno;

    invoke-virtual {v10, v8}, Lno;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_3
    const-string/jumbo v10, "total_length"

    invoke-virtual {p1, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 980
    .local v6, "totalBytes":J
    const-string/jumbo v10, "current_length"

    invoke-virtual {p1, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 982
    .local v2, "currentBytes":J
    cmp-long v10, v6, v12

    if-lez v10, :cond_4

    .line 983
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v2

    div-long/2addr v10, v6

    long-to-int v4, v10

    .line 985
    .local v4, "percent":I
    invoke-virtual {p0, v4}, Ladl;->m(I)I

    move-result v4

    .line 986
    invoke-virtual {p0, v9, v4}, Ladl;->a(II)V

    .line 989
    .end local v4    # "percent":I
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v10, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    .line 991
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 992
    const-string/jumbo v10, "file_path"

    .line 993
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {p0, v9, v1}, Ladl;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public e(I)V
    .locals 5
    .param p1, "pIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 719
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->h()Z

    move-result v0

    .line 723
    .local v0, "isPlaying":Z
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Z)V

    .line 724
    iget v1, p0, Ladl;->w:I

    if-eq v1, p1, :cond_2

    iget v1, p0, Ladl;->w:I

    invoke-virtual {p0, v1}, Ladl;->k(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ladl;->w:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Z)V

    .line 727
    :cond_2
    iget-object v1, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 729
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v3, v2}, Ladl;->a(IIILjava/lang/Object;)V

    .line 732
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    .line 736
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 734
    invoke-static {v1}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v2

    const-string/jumbo v3, "FD01024"

    const-string/jumbo v4, "spcl_broadcast_roles_audition"

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 740
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v1

    .line 737
    invoke-virtual {v2, v3, v4, v1}, Labu;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 723
    goto :goto_1
.end method

.method protected f(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget v0, p0, Ladl;->w:I

    if-ne v0, p1, :cond_1

    .line 417
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Ladl;->a(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected g(I)V
    .locals 3
    .param p1, "pIndex"    # I

    .prologue
    .line 749
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iput p1, p0, Ladl;->x:I

    .line 753
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 755
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->setBroadcastMethod(I)V

    .line 761
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->k()I

    move-result v1

    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 763
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->j()Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-static {v1, v0}, Ljk;->a(ILjava/lang/String;)V

    .line 765
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TTS_ROLE_CHOICE"

    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 766
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->k()I

    move-result v0

    .line 765
    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;I)V

    .line 767
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b()V

    .line 771
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 770
    invoke-static {v0}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v0

    const-string/jumbo v1, "FC01023"

    const-string/jumbo v2, "spcl_broadcast_enable"

    .line 772
    invoke-virtual {v0, v1, v2}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 778
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 782
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 781
    invoke-static {v0}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v0

    const-string/jumbo v1, "FC01025"

    const-string/jumbo v2, "spcl_broadcast_enable_call_broadcast"

    .line 783
    invoke-virtual {v0, v1, v2}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_3
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 790
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 789
    invoke-static {v0}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v0

    const-string/jumbo v1, "FC01025"

    const-string/jumbo v2, "spcl_broadcast_to_default_role"

    .line 791
    invoke-virtual {v0, v1, v2}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected h(I)V
    .locals 2
    .param p1, "pIndex"    # I

    .prologue
    .line 823
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    invoke-direct {p0, p1}, Ladl;->n(I)V

    .line 848
    :goto_0
    return-void

    .line 826
    :cond_0
    const/16 v0, 0x7d2

    invoke-direct {p0, v0, p1}, Ladl;->b(II)V

    goto :goto_0
.end method

.method protected i(I)V
    .locals 3
    .param p1, "pIndex"    # I

    .prologue
    .line 855
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    iget-object v1, p0, Ladl;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 856
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const v1, 0x7f0c0324

    invoke-virtual {p0, v1}, Ladl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 857
    const v1, 0x7f0c0323

    invoke-virtual {p0, v1}, Ladl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 859
    const v1, 0x7f0c0321

    invoke-virtual {p0, v1}, Ladl;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ladl$3;

    invoke-direct {v2, p0, v0}, Ladl$3;-><init>(Ladl;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 867
    const v1, 0x7f0c0322

    invoke-virtual {p0, v1}, Ladl;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ladl$4;

    invoke-direct {v2, p0, p1, v0}, Ladl$4;-><init>(Ladl;ILcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 876
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 877
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 878
    return-void
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 1033
    return-void
.end method

.method protected j(I)I
    .locals 2
    .param p1, "pIndex"    # I

    .prologue
    .line 1139
    invoke-virtual {p0, p1}, Ladl;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 1140
    invoke-static {v0}, Lcom/iflytek/yd/util/SDCardHelper;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v1, v0

    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1142
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 1143
    const v0, 0xc3c0a

    .line 1146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1172
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return v0

    .line 1175
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1178
    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected l(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1206
    iget-object v2, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    .line 1207
    iget-object v2, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 1208
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1209
    iget-object v2, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1214
    .end local v0    # "i":I
    .end local v1    # "size":I
    :goto_1
    return v0

    .line 1208
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected m(I)I
    .locals 4
    .param p1, "percent"    # I

    .prologue
    const/16 v1, 0x5f

    .line 1222
    if-le p1, v1, :cond_0

    .line 1229
    .end local p1    # "percent":I
    :goto_0
    return p1

    .line 1225
    .restart local p1    # "percent":I
    :cond_0
    mul-int/lit16 v2, p1, 0xc8

    mul-int v3, p1, p1

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1226
    .local v0, "progress":I
    if-le v0, v1, :cond_1

    move p1, v1

    .line 1227
    goto :goto_0

    :cond_1
    move p1, v0

    .line 1229
    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1251
    const-string/jumbo v0, "SpecificBroadcastSettingFragment"

    const-string/jumbo v1, "MediaPlayer onCompletion"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget v0, p0, Ladl;->w:I

    invoke-virtual {p0, v0}, Ladl;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Ladl;->w:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Z)V

    .line 1254
    const/4 v0, -0x1

    iput v0, p0, Ladl;->w:I

    .line 1256
    :cond_0
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1257
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Ladl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Ladl;->d:Landroid/content/Context;

    .line 151
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    invoke-static {v0}, Ladn;->a(Landroid/content/Context;)Ladn;

    move-result-object v0

    iput-object v0, p0, Ladl;->t:Ladn;

    .line 152
    iget-object v0, p0, Ladl;->d:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iput-object v0, p0, Ladl;->f:Lno;

    .line 153
    iget-object v0, p0, Ladl;->f:Lno;

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$b;)V

    .line 154
    iget-object v0, p0, Ladl;->f:Lno;

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ladl;->A:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ladl;->y:Ljava/util/Queue;

    .line 158
    iget-object v0, p0, Ladl;->t:Ladn;

    invoke-virtual {v0}, Ladn;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 160
    new-instance v0, Ladm;

    iget-object v1, p0, Ladl;->d:Landroid/content/Context;

    iget-object v2, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, p0, v3}, Ladm;-><init>(Landroid/content/Context;Ljava/util/List;Ladj;I)V

    iput-object v0, p0, Ladl;->a:Ladm;

    .line 163
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Ladl;->a:Ladm;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    const-string/jumbo v3, "jiajia"

    .line 165
    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ladm;->a(Ljava/lang/String;)V

    .line 169
    :cond_0
    new-instance v0, Ladl$1;

    iget-object v1, p0, Ladl;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ladl$1;-><init>(Ladl;Landroid/os/Looper;)V

    iput-object v0, p0, Ladl;->z:Landroid/os/Handler;

    .line 277
    invoke-static {}, Lagm;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_REDDOT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_REDDOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 282
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Ladl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 317
    invoke-virtual {p0}, Ladl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iput-object v7, p0, Ladl;->d:Landroid/content/Context;

    .line 319
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v4

    .line 322
    .local v4, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v5, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v7, p0, Ladl;->d:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 323
    .local v5, "rootViewLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 326
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 328
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    invoke-virtual {v5, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 331
    invoke-virtual {p0}, Ladl;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030082

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 333
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0b039a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/skin/customView/XGridView;

    iput-object v7, p0, Ladl;->v:Lcom/iflytek/base/skin/customView/XGridView;

    .line 334
    iget-object v7, p0, Ladl;->v:Lcom/iflytek/base/skin/customView/XGridView;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/iflytek/base/skin/customView/XGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v7, p0, Ladl;->v:Lcom/iflytek/base/skin/customView/XGridView;

    iget-object v8, p0, Ladl;->a:Ladm;

    invoke-virtual {v7, v8}, Lcom/iflytek/base/skin/customView/XGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v7

    const-string/jumbo v8, "image.diy_broadcast_banner_bg_dial"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 339
    invoke-virtual {v7, v8, v9}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 341
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 342
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 343
    const v7, 0x7f0b0399

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, "bannerView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-virtual {v5, v6, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-virtual {p0, v5}, Ladl;->addContentView(Landroid/view/View;)V

    .line 348
    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroy()V

    .line 399
    iget-object v0, p0, Ladl;->f:Lno;

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    invoke-virtual {v0, v1}, Lno;->b(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Ladl;->f:Lno;

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    invoke-virtual {v0, v1}, Lno;->a(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Ladl;->t:Ladn;

    iget-object v1, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ladn;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 405
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 408
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v2, 0x0

    .line 1237
    const-string/jumbo v0, "SpecificBroadcastSettingFragment"

    const-string/jumbo v1, "MediaPlayer onError"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget v0, p0, Ladl;->w:I

    invoke-virtual {p0, v0}, Ladl;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Ladl;->w:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Z)V

    .line 1240
    const/4 v0, -0x1

    iput v0, p0, Ladl;->w:I

    .line 1242
    :cond_0
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1243
    return v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onPause()V

    .line 389
    iget v0, p0, Ladl;->w:I

    invoke-virtual {p0, v0}, Ladl;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Ladl;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Ladl;->w:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Z)V

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Ladl;->w:I

    .line 393
    :cond_0
    iget-object v0, p0, Ladl;->t:Ladn;

    invoke-virtual {v0}, Ladn;->c()V

    .line 394
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 376
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onResume()V

    .line 378
    invoke-virtual {p0}, Ladl;->b()V

    .line 380
    invoke-virtual {p0}, Ladl;->c()V

    .line 382
    iget-object v0, p0, Ladl;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 353
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 355
    const v2, 0x7f0c005c

    invoke-virtual {p0, v2}, Ladl;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ladl;->setTitleText(Ljava/lang/CharSequence;)V

    .line 356
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Ladl;->setTitleStyle(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Ladl;->setBackBtnResource(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Ladl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {p0}, Ladl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 362
    invoke-virtual {p0}, Ladl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 363
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 364
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Ladl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual {p0}, Ladl;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Ladl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
