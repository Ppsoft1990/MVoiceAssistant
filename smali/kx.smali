.class public final Lkx;
.super Lla;

# interfaces
.implements Lmf;


# instance fields
.field protected volatile a:Lkr;

.field protected b:J

.field protected c:Z

.field protected d:Lkz;

.field protected e:Lmg;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lks;

.field protected i:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field protected j:I

.field private q:J

.field private r:I

.field private final s:I

.field private final t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmc;Landroid/os/HandlerThread;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lla;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lkx;->a:Lkr;

    iput-wide v4, p0, Lkx;->b:J

    iput-boolean v2, p0, Lkx;->c:Z

    new-instance v0, Lkz;

    invoke-direct {v0}, Lkz;-><init>()V

    iput-object v0, p0, Lkx;->d:Lkz;

    iput-object v1, p0, Lkx;->e:Lmg;

    const-string/jumbo v0, "train"

    iput-object v0, p0, Lkx;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkx;->g:Ljava/lang/String;

    iput-object v1, p0, Lkx;->h:Lks;

    iput-object v1, p0, Lkx;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput v2, p0, Lkx;->j:I

    iput-wide v4, p0, Lkx;->q:J

    const/4 v0, 0x0

    iput v0, p0, Lkx;->r:I

    const/16 v0, 0x3e9

    iput v0, p0, Lkx;->s:I

    const/16 v0, 0x3ea

    iput v0, p0, Lkx;->t:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lkx;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Lkx;->a(Lmc;)V

    return-void
.end method

.method private l()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->requestResult: in"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->d:Lkz;

    invoke-virtual {v0}, Lkz;->e()Lcom/iflytek/cloud/a/b/e;

    move-result-object v0

    const-string/jumbo v1, "MscSpeechLog"

    const-string/jumbo v2, "requestResult-----"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lky;->a:[I

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->requestResult: out"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "notifyResult -----"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lkx;->o:J

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyResult-----mSession  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkx;->d:Lkz;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyResult-----mSession  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkx;->d:Lkz;

    invoke-virtual {v2}, Lkz;->d()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lkx;->d:Lkz;

    invoke-virtual {v1}, Lkz;->d()[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "MscSpeechLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyResult-----text "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lks;

    invoke-direct {v1, v0}, Lks;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lkx;->h:Lks;

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyResult-----mResult  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkx;->h:Lks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->a:Lkr;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "session_id"

    iget-object v2, p0, Lkx;->d:Lkz;

    iget-object v3, v2, Lkz;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3}, Lkz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lkz;->b:Ljava/lang/String;

    :cond_0
    iget-object v2, v2, Lkz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lkx;->a:Lkr;

    const/16 v2, 0x4e21

    invoke-interface {v1, v2, v4, v4, v0}, Lkr;->a(IIILandroid/os/Bundle;)V

    :cond_1
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "requestResult-----2"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->f:Ljava/lang/String;

    const-string/jumbo v1, "train"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkx;->h:Lks;

    iget v0, v0, Lks;->b:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lkx;->h:Lks;

    iget v0, v0, Lks;->g:I

    iget-object v1, p0, Lkx;->h:Lks;

    iget v1, v1, Lks;->h:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lkx;->a:Lkr;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GetNotifyResult"

    invoke-static {v0}, Llk;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lkx;->a:Lkr;

    iget-object v1, p0, Lkx;->h:Lks;

    invoke-interface {v0, v1}, Lkr;->a(Lks;)V

    :cond_2
    invoke-virtual {p0, v4}, Lkx;->b(I)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "requestResult-----3 "

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->a:Lkr;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "GetNotifyResult"

    invoke-static {v0}, Llk;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lkx;->a:Lkr;

    iget-object v1, p0, Lkx;->h:Lks;

    invoke-interface {v0, v1}, Lkr;->a(Lks;)V

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkx;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private m()V
    .locals 2

    sget-object v0, Lcom/iflytek/cloud/a/b/c;->c:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {p0}, Lkx;->i()Lcom/iflytek/cloud/a/b/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->vadEndCall: out"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lkx;->a()Z

    iget-object v0, p0, Lkx;->a:Lkr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkx;->a:Lkr;

    invoke-interface {v0}, Lkr;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "releaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->b()V

    const/16 v0, 0x3ea

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lkx;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lkx;->b(Lcom/iflytek/cloud/SpeechError;)V

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecordData errorCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lla;->a(Landroid/os/Message;)V

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onMsgProcess: msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->onStart: in"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "engine_type"

    invoke-virtual {v0, v1}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v1

    const-string/jumbo v2, "net_check"

    invoke-virtual {v1, v2, v4}, Lmc;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "cloud"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lkx;->m:Landroid/content/Context;

    invoke-static {v0}, Llw;->a(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "record_read_rate"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lmc;->a(Ljava/lang/String;I)I

    iget v0, p0, Lkx;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lkx;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "start  record"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    if-nez v0, :cond_2

    new-instance v0, Lmg;

    iget-object v1, p0, Lkx;->m:Landroid/content/Context;

    invoke-direct {v0}, Lmg;-><init>()V

    iput-object v0, p0, Lkx;->e:Lmg;

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0, p0}, Lmg;->a(Lmf;)V

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->a()V

    :cond_2
    invoke-virtual {p0}, Lkx;->i()Lcom/iflytek/cloud/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/a/b/c;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lkx;->a:Lkr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkx;->a:Lkr;

    invoke-interface {v0}, Lkr;->a()V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lkx;->b:J

    invoke-virtual {p0, v6}, Lkx;->removeMessages(I)V

    sget-object v0, Lcom/iflytek/cloud/a/b/b;->b:Lcom/iflytek/cloud/a/b/b;

    iget v1, p0, Lkx;->k:I

    invoke-virtual {p0, v6, v0, v1}, Lkx;->a(ILcom/iflytek/cloud/a/b/b;I)V

    sget-object v0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lkx;->a(ILcom/iflytek/cloud/a/b/b;I)V

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->onStart: out"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lkx;->d:Lkz;

    iget-object v0, v0, Lkz;->a:[C

    if-nez v0, :cond_4

    const-string/jumbo v0, "SDKSessionBegin"

    invoke-static {v0}, Llk;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lkx;->d:Lkz;

    iget-object v1, p0, Lkx;->m:Landroid/content/Context;

    iget-object v2, p0, Lkx;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lkz;->a(Landroid/content/Context;Ljava/lang/String;Lla;)I

    :cond_4
    sget-object v0, Lcom/iflytek/cloud/a/b/c;->c:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {p0, v0}, Lkx;->a(Lcom/iflytek/cloud/a/b/c;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkx;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lkx;->d:Lkz;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lkz;->a([BI)V

    iget-object v1, p0, Lkx;->d:Lkz;

    invoke-virtual {v1}, Lkz;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "---> VadCheck Time: Vad End Point"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lkx;->m()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lkx;->d:Lkz;

    invoke-virtual {v1}, Lkz;->c()I

    move-result v1

    invoke-virtual {p0}, Lkx;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkx;->a:Lkr;

    invoke-interface {v2, v1, v0}, Lkr;->a(I[B)V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->onStoped: in"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "sst"

    invoke-virtual {v0, v1}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "train"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "releaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->b()V

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "delayReleaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->c()V

    iput-object v3, p0, Lkx;->e:Lmg;

    :cond_6
    iget-object v0, p0, Lkx;->d:Lkz;

    invoke-virtual {v0}, Lkz;->a()V

    invoke-virtual {p0, v5}, Lkx;->b(I)V

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->onStoped: out"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "sst"

    invoke-virtual {v0, v1}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "train"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "releaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->b()V

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "delayReleaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->c()V

    iput-object v3, p0, Lkx;->e:Lmg;

    :cond_7
    invoke-direct {p0}, Lkx;->l()V

    invoke-virtual {p0}, Lkx;->i()Lcom/iflytek/cloud/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/cloud/a/b/b;->b:Lcom/iflytek/cloud/a/b/b;

    const/16 v1, 0x14

    invoke-virtual {p0, v5, v0, v1}, Lkx;->a(ILcom/iflytek/cloud/a/b/b;I)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->on timeout vad"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lkx;->m()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "delayReleaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->c()V

    iput-object v3, p0, Lkx;->e:Lmg;

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "delayResetRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->d()V

    iput-object v3, p0, Lkx;->e:Lmg;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x7 -> :sswitch_0
        0x9 -> :sswitch_6
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_8
    .end sparse-switch
.end method

.method protected final a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->onEnd: in"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "releaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->b()V

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "delayReleaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->c()V

    iput-object v5, p0, Lkx;->e:Lmg;

    :cond_0
    iget-object v0, p0, Lkx;->d:Lkz;

    iget-object v1, v0, Lkz;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1}, Lkz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkz;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, v0, Lkz;->b:Ljava/lang/String;

    const-string/jumbo v0, "SessionEndBegin"

    invoke-static {v0}, Llk;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lkx;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkx;->d:Lkz;

    const-string/jumbo v1, "user abort"

    invoke-virtual {v0, v1}, Lkz;->a(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "SessionEndEnd"

    invoke-static {v0}, Llk;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-super {p0, p1}, Lla;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lkx;->a:Lkr;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lkx;->n:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "VerifyListener#onEnd"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "session_id"

    iget-object v2, p0, Lkx;->d:Lkz;

    iget-object v3, v2, Lkz;->b:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3}, Lkz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lkz;->b:Ljava/lang/String;

    :cond_2
    iget-object v2, v2, Lkz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lkx;->a:Lkr;

    const/16 v2, 0x4e21

    invoke-interface {v1, v2, v4, v4, v0}, Lkr;->a(IIILandroid/os/Bundle;)V

    iget-object v0, p0, Lkx;->a:Lkr;

    invoke-interface {v0, p1}, Lkr;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_3
    iput-object v5, p0, Lkx;->a:Lkr;

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->onEnd: out"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lkx;->d:Lkz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkz;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lkx;->d:Lkz;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lkz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Lkr;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->startVerify: in"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lkx;->a:Lkr;

    invoke-virtual {p0}, Lkx;->k()V

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->startVerify: out"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 3

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, " MscVerify cancel"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkx;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkx;->a:Lkr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkx;->a:Lkr;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lkr;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "releaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->b()V

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "delayReleaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkx;->e:Lmg;

    :cond_1
    invoke-super {p0, p1}, Lla;->a(Z)V

    return-void
.end method

.method public final a([BI)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecordData length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iflytek/cloud/a/b/c;->c:Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {p0}, Lkx;->i()Lcom/iflytek/cloud/a/b/c;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_0

    iget v0, p0, Lkx;->r:I

    if-lez v0, :cond_3

    iget v0, p0, Lkx;->r:I

    if-lt v0, p2, :cond_2

    iget v0, p0, Lkx;->r:I

    sub-int/2addr v0, p2

    iput v0, p0, Lkx;->r:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lkx;->r:I

    sub-int v0, p2, v0

    new-array v0, v0, [B

    iget v1, p0, Lkx;->r:I

    add-int/lit8 v1, v1, 0x0

    iget v2, p0, Lkx;->r:I

    sub-int v2, p2, v2

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, v0}, Lkx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkx;->b(Landroid/os/Message;)V

    iput v3, p0, Lkx;->r:I

    goto :goto_0

    :cond_3
    new-array v0, p2, [B

    invoke-static {p1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, v0}, Lkx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkx;->b(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->stopRecord: in"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lkx;->i()Lcom/iflytek/cloud/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->c:Lcom/iflytek/cloud/a/b/c;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "endVerify fail  status is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkx;->i()Lcom/iflytek/cloud/a/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "sst"

    invoke-virtual {v0, v1}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "train"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "stopRecord not register, stop"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "releaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->b()V

    iget-object v0, p0, Lkx;->e:Lmg;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "delayReleaseRecord"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkx;->e:Lmg;

    invoke-virtual {v0}, Lmg;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkx;->e:Lmg;

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lkx;->b(I)V

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "--->stopRecord: out"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b()V
    .locals 4

    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "speech_timeout"

    iget v2, p0, Lkx;->k:I

    invoke-virtual {v0, v1, v2}, Lmc;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkx;->k:I

    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkx;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "audio_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmc;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkx;->j:I

    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "filter_audio_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmc;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lkx;->j()Lmc;

    move-result-object v1

    const-string/jumbo v2, "sample_rate"

    iget v3, p0, Lkx;->l:I

    invoke-virtual {v1, v2, v3}, Lmc;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    iput v0, p0, Lkx;->r:I

    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSpeechTimeOut="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lkx;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lla;->b()V

    return-void
.end method

.method public final c()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lkx;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method
