.class public final Lcom/iflytek/yd/speech/msc/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;


# static fields
.field private static final a:Ljava/lang/String; = "SPEECH_TtsMscEngine"

.field private static final b:Ljava/lang/String; = "GB2312"

.field private static final c:Ljava/lang/String; = "unicode"

.field private static final e:J = 0x28L


# instance fields
.field private d:Z

.field private f:Lcom/iflytek/msc/MSCSessionInfo;

.field private g:[C

.field private h:Z

.field private i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/iflytek/yd/speech/msc/interfaces/MscConfig;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->d:Z

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->k:Ljava/lang/String;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->l:I

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/l;->k:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/yd/speech/msc/a/l;->l:I

    iput-object p3, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v1, "QTTSInit config null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->k:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getInitParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QTTSInit params = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QTTSInit([B)I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v1, "QTTSInit end "

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QTTSInit error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    goto :goto_0
.end method

.method private a(I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, "QTTSInit config null"

    invoke-static {v0, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    if-nez v0, :cond_3

    :goto_1
    return v2

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->k:Ljava/lang/String;

    iget v4, p0, Lcom/iflytek/yd/speech/msc/a/l;->l:I

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getInitParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SPEECH_TtsMscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "QTTSInit params = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QTTSInit([B)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, "QTTSInit end "

    invoke-static {v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "SPEECH_TtsMscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "QTTSInit error="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/l;->k:Ljava/lang/String;

    iget v5, p0, Lcom/iflytek/yd/speech/msc/a/l;->l:I

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getSessionParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_5

    const-string/jumbo v0, "ssm=0"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v3, "text_encoding=unicode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->d:Z

    :goto_3
    const-string/jumbo v3, "SPEECH_TtsMscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "QTTSSessionBegin params="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v3}, Lcom/iflytek/msc/MSC;->QTTSSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QTTSSessionBegin Error ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_4
    move v2, v0

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "ssm=1"

    goto :goto_2

    :cond_6
    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->d:Z

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v2, "QTTSSessionBegin end"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_4
.end method

.method private a(Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1, v0}, Lcom/iflytek/msc/MSCSessionInfo;->setQttsSynthStatus(I)V

    :goto_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsSynthStatus()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2}, Lcom/iflytek/msc/MSC;->QTTSAudioGet([CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/l;->b()I

    move-result v2

    :try_start_0
    invoke-interface {p1, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;->onAudioGet([BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    const-string/jumbo v2, "AudioGet onAudioGet false"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsSynthStatus()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AudioGet Error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, "AudioGet onAudioGet"

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x28

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->d:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "unicode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->d:Z

    :goto_1
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    invoke-static {v2, v1}, Lcom/iflytek/msc/MSC;->QTTSTextPut([C[B)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "QTTSTextPut Error Code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1, v2}, Lcom/iflytek/msc/MSCSessionInfo;->setErrorCode(I)V

    :cond_2
    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_2
    const-string/jumbo v1, "GB2312"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    move v2, v0

    :goto_3
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private b()I
    .locals 5

    const-string/jumbo v2, ""

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    invoke-static {v1}, Lcom/iflytek/msc/MSC;->QTTSAudioInfo([C)[C

    move-result-object v3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x3d

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAudioPos Exception String:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo v0, "ssm=0"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ssm=1"

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[C
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    const-string/jumbo v2, "getByteByString null or size is 0."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    const-string/jumbo v1, "GB2312"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2

    new-array v0, v1, [C

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-byte v3, v2, v1

    int-to-char v3, v3

    aput-char v3, v0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x100

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    iput-object v1, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QTTSGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    const-string/jumbo v1, "SPEECH_TtsMscEngine"

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

    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    const-string/jumbo v2, "QTTSSessionEnd into"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    invoke-static {v1, v5}, Lcom/iflytek/msc/MSC;->QTTSSessionEnd([C[B)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "QTTSSessionEnd Error Code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v5, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, "QTTSSessionEnd end"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static d()Z
    .locals 4

    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v1, "QTTSFini begin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/msc/MSC;->QTTSFini()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QTTSFini Error Code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    const-string/jumbo v2, "QTTSFini end"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e()I
    .locals 1

    const-string/jumbo v0, "upflow\u0000"

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/l;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 1

    const-string/jumbo v0, "downflow\u0000"

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/l;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final destory()V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v2, "destory into"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    const/16 v2, 0x64

    if-gt v0, v2, :cond_0

    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, "destory wait ok."

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v1, "QTTSFini begin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/msc/MSC;->QTTSFini()I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "SPEECH_TtsMscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QTTSFini Error Code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v1, "QTTSFini end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final declared-synchronized speak(Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    if-nez v2, :cond_2

    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, "QTTSInit config null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    if-nez v2, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v0

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/l;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->k:Ljava/lang/String;

    iget v4, p0, Lcom/iflytek/yd/speech/msc/a/l;->l:I

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getInitParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SPEECH_TtsMscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "QTTSInit params = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/msc/MSC;->QTTSInit([B)I

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, "QTTSInit end "

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string/jumbo v3, "SPEECH_TtsMscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "QTTSInit error="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->h:Z

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->i:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/l;->k:Ljava/lang/String;

    iget v5, p0, Lcom/iflytek/yd/speech/msc/a/l;->l:I

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getSessionParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_6

    const-string/jumbo v2, "ssm=0"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v3, "text_encoding=unicode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->d:Z

    :goto_4
    const-string/jumbo v3, "SPEECH_TtsMscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "QTTSSessionBegin params="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v2, v3}, Lcom/iflytek/msc/MSC;->QTTSSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->g:[C

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QTTSSessionBegin Error ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v2, "ssm=1"

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/iflytek/yd/speech/msc/a/l;->d:Z

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "SPEECH_TtsMscEngine"

    const-string/jumbo v3, "QTTSSessionBegin end"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p1}, Lcom/iflytek/yd/speech/msc/a/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v0

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/l;->c()Z

    goto/16 :goto_2

    :cond_b
    invoke-direct {p0, p2}, Lcom/iflytek/yd/speech/msc/a/l;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->f:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQttsErrCode()I

    move-result v0

    :goto_5
    const-string/jumbo v1, "downflow\u0000"

    invoke-direct {p0, v1}, Lcom/iflytek/yd/speech/msc/a/l;->c(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "upflow\u0000"

    invoke-direct {p0, v2}, Lcom/iflytek/yd/speech/msc/a/l;->c(Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_c

    invoke-interface {p2, v2, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;->onLastTrafficFlow(II)V

    :cond_c
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/l;->c()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto :goto_5
.end method

.method public final stop()V
    .locals 2

    const-string/jumbo v0, "SPEECH_TtsMscEngine"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/l;->j:Z

    return-void
.end method
