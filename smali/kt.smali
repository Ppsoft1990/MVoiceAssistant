.class public final Lkt;
.super Lld;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lld;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lkq;)I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Llh;

    iget-object v2, p0, Lkt;->b:Landroid/content/Context;

    iget-object v3, p0, Lkt;->a:Lmc;

    const-string/jumbo v4, "download"

    invoke-virtual {p0, v4}, Lkt;->b(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Llh;-><init>(Landroid/content/Context;Lmc;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lkt;->d:Lla;

    iget-object v0, p0, Lkt;->d:Lla;

    check-cast v0, Llh;

    new-instance v2, Lle;

    invoke-direct {v2, p0, p1}, Lle;-><init>(Lld;Lkq;)V

    invoke-virtual {v0, v2}, Llh;->a(Lkq;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    const-string/jumbo v2, "MscSpeechLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    const-string/jumbo v2, "MscSpeechLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
