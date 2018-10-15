.class public final Lcom/iflytek/yd/speech/msc/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;


# static fields
.field private static final a:Ljava/lang/String; = "SPEECH_MscIseEngine"

.field private static final b:I = 0x2

.field private static final c:I = 0x4


# instance fields
.field private d:Lcom/iflytek/msc/MSCSessionInfo;

.field private e:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:[C

.field private j:I

.field private k:Z

.field private l:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->e:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->f:Ljava/lang/String;

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->g:I

    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    iput v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->k:Z

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->l:[B

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-direct {v0, p1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->e:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x100

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iput-object v1, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISEGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    const-string/jumbo v1, "SPEECH_MscIseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " getTrafficFlow ==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SPEECH_MscIseEngine"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;
    .locals 5

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->error:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QISEGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->l:[B

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrRsltStatus()I

    move-result v1

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    const-string/jumbo v2, "SPEECH_MscIseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getResultAndStatus , RsltStatus is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->l:[B

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->hasResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->resultOver:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "SPEECH_MscIseEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getResultAndStatus: error errorcode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->error:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a([BII)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SPEECH_MscIseEngine"

    const-string/jumbo v2, "QISEAudioWrite begin"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/iflytek/msc/MSC;->QISEAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    const-string/jumbo v2, "SPEECH_MscIseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "QISEAudioWrite end ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v2

    iput v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/iflytek/yd/business/AppConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->e:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->e:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->setAppconfig(Lcom/iflytek/yd/business/AppConfig;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/b;->e:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    return-void
.end method

.method public final endPutData()Z
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->k:Z

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/iflytek/yd/speech/msc/a/b;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final getDownTrafficFlow()I
    .locals 1

    const-string/jumbo v0, "downflow\u0000"

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/b;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    return v0
.end method

.method public final getResult()[B
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->l:[B

    return-object v0
.end method

.method public final getResultStatus()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrRecogStatus()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "SPEECH_MscIseEngine"

    const-string/jumbo v1, "putData getResult"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/b;->a()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/b;->a()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSessionParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v1, "SPEECH_MscIseEngine"

    const-string/jumbo v2, "getSessionId null "

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x100

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iput-object v1, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISEGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :cond_2
    const-string/jumbo v2, "SPEECH_MscIseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getSessionParams ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getUpTrafficFlow()I
    .locals 1

    const-string/jumbo v0, "upflow\u0000"

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/b;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final initialize(Ljava/lang/String;I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SPEECH_MscIseEngine"

    const-string/jumbo v1, "init msc have Inited."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->e:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getInitParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SPEECH_MscIseEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init msc params= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/iflytek/yd/speech/msc/a/b;->g:I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QISEInit([B)I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    const-string/jumbo v0, "SPEECH_MscIseEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init msc error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/MSC;->QISEFini()I

    :goto_1
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    const-string/jumbo v0, "SPEECH_MscIseEngine"

    const-string/jumbo v1, "init msc result OK"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final putAudioData([BI)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/yd/speech/msc/a/b;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final putText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, 0x3

    new-array v4, v4, [B

    const/16 v5, -0x11

    aput-byte v5, v4, v1

    const/16 v5, -0x45

    aput-byte v5, v4, v2

    const/4 v5, 0x2

    const/16 v6, -0x41

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    array-length v6, v3

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v3, "SPEECH_MscIseEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "putText enter text=("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    invoke-static {v3, v4, v0}, Lcom/iflytek/msc/MSC;->QISETextPut([C[B[B)I

    move-result v0

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v3

    iput v3, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    const-string/jumbo v3, "SPEECH_MscIseEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "putText end ret="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final sessionBegin(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->f:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/b;->g:I

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/b;->initialize(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo p1, ""

    :cond_2
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->e:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v1, p1, p3}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getSessionParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->k:Z

    const-string/jumbo v3, "SPEECH_MscIseEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sessionBegin enter grammar= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", params= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISESessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    const-string/jumbo v1, "SPEECH_MscIseEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sessionBegin end: ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v1

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/b;->j:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final sessionEnd(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPEECH_MscIseEngine"

    const-string/jumbo v1, "sessionEnd null id."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SPEECH_MscIseEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sessionEnd enter reason=("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QISESessionEnd([C[B)I

    const-string/jumbo v0, "SPEECH_MscIseEngine"

    const-string/jumbo v1, "sessionEnd end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->i:[C

    goto :goto_0
.end method

.method public final setMspParams(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setSessionParams(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final unInitialize()V
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/b;->h:Z

    invoke-static {}, Lcom/iflytek/msc/MSC;->QISEFini()I

    const-string/jumbo v0, "SPEECH_MscIseEngine"

    const-string/jumbo v1, "unInitialize OK."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SPEECH_MscIseEngine"

    const-string/jumbo v1, "unInitialize not init."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
