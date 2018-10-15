.class public final Lcom/iflytek/yd/speech/msc/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;


# static fields
.field private static final a:Ljava/lang/String; = "SPEECH_MscEngine"

.field private static final b:Ljava/lang/String; = "\u0000"

.field private static final d:Ljava/lang/String; = "aue=speex-wb,ssm=1,auf=audio/L16;rate=16000\u0000"

.field private static final e:I = 0x2

.field private static final f:I = 0x4

.field private static final g:I = 0x0

.field private static final h:I = 0x2

.field private static final i:I = 0x5

.field private static u:J

.field private static v:Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;


# instance fields
.field private c:Ljava/lang/String;

.field private j:Lcom/iflytek/msc/MSCSessionInfo;

.field private k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:[C

.field private r:I

.field private s:Z

.field private t:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\u0000"

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    iput-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iput-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->m:I

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->o:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    iput-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->s:Z

    iput-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->t:[B

    new-instance v0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-direct {v0, p1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    return-void
.end method

.method private static a(III[B)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    :cond_0
    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mspStatusCallback value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " arg2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " param2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/a;->v:Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/a;->v:Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;

    invoke-interface {v1, p0, p1, p2, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;->onNetStatus(IIILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;)V
    .locals 0

    sput-object p0, Lcom/iflytek/yd/speech/msc/a/a;->v:Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;

    return-void
.end method

.method private a([BII)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/iflytek/msc/MSC;->QISRAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v2

    iput v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    iput-boolean v4, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mspLogin params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getLoginParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserPasswd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserPasswd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getLoginParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/iflytek/msc/MSC;->QMSPLogin([B[B[B)I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :goto_0
    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mspLogin status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    return v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "SPEECH_MscEngine"

    const-string/jumbo v1, "mspLogin not init or passwd user null."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v0, "SPEECH_MscEngine"

    const-string/jumbo v1, "uploadContact sessionBegin enter"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "SPEECH_MscEngine"

    const-string/jumbo v1, "unInitialze"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    iput-boolean v6, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->QISRFini()I

    const-string/jumbo v0, "SPEECH_MscEngine"

    const-string/jumbo v1, "initialize again"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string/jumbo v1, "aue=speex-wb,ssm=1,auf=audio/L16;rate=16000\u0000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/MSC;->QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v0

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadContact sessionBegin leavel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    const-string/jumbo v1, "dtt=xml"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",eid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_1
    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadContact dataType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadContact QISRUploadData enter\u3002contact:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "contact"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static/range {v0 .. v5}, Lcom/iflytek/msc/MSC;->QISRUploadData([C[B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string/jumbo v2, "SPEECH_MscEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uploadContact QISRUploadData leavel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v4}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "uploadContact QISRSessionEnd enter"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QISRSessionEnd([C[B)I

    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadContact QISRSessionEnd leavel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadContact QISRSessionEnd enterContactGrammar new="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QISRSessionEnd([C[B)I

    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadContact QISRSessionEnd leavel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v1, v8

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :cond_6
    move-object v4, v1

    goto/16 :goto_1
.end method

.method private c()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;
    .locals 8

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QISRGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->t:[B

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrRsltStatus()I

    move-result v2

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/iflytek/yd/speech/msc/a/a;->u:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->t:[B

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->t:[B

    array-length v0, v0

    :cond_0
    const-string/jumbo v3, "SPEECH_MscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getResultAndStatus resLen="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", status="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/iflytek/yd/speech/msc/a/a;->u:J

    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->t:[B

    if-nez v0, :cond_2

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->hasResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->resultOver:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getResultAndStatus: error errorcode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

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

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x100

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    iput-object v1, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    const-string/jumbo v1, "SPEECH_MscEngine"

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

    const-string/jumbo v2, "SPEECH_MscEngine"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "SPEECH_MscEngine"

    const-string/jumbo v1, "getMspParams not login return"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QMSPGetParam([BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v0

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QMSPGetParam ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;I)I
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "uploadMspData2  enter"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "SPEECH_MscEngine"

    const-string/jumbo v1, "uploadMspData2 mIsLoginOk flase."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xc3505

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SPEECH_MscEngine"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v1, p3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sub=uup,dtt="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",ent=cantonese"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\u0000"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move v1, v0

    :goto_3
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_4

    aget-byte v4, v2, v1

    if-nez v4, :cond_2

    const/16 v4, 0x20

    aput-byte v4, v2, v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sub=uup,dtt="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_4
    if-nez v2, :cond_5

    const-string/jumbo v0, "SPEECH_MscEngine"

    const-string/jumbo v1, "uploadMspData2  contacts null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xc3511

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadMspData2 params:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v1}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v2, v5, v3, v1}, Lcom/iflytek/msc/MSC;->QMSPUploadData([B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQmspErrCode()I

    move-result v1

    if-eqz v2, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadMspData2 QMSPUploadData error code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadMspData2 QMSPUploadData OK grammar="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/iflytek/yd/business/AppConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->setAppconfig(Lcom/iflytek/yd/business/AppConfig;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    return-void
.end method

.method public final a(Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "SPEECH_MscEngine"

    const-string/jumbo v3, "uploadCantoneseData  enter \n"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "SPEECH_MscEngine"

    const-string/jumbo v3, "unInitialze"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->QISRFini()I

    const-string/jumbo v2, "SPEECH_MscEngine"

    const-string/jumbo v3, "initialize again"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->m:I

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "SPEECH_MscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadCantoneseData need Login:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/iflytek/yd/speech/msc/a/a;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :cond_2
    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/a;->b()Z

    :cond_3
    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v2, :cond_4

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "uploadCantoneseData  mIsLoginOk flase."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sub=uup,dtt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",ent=cantonese"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [B

    const/16 v4, 0x61

    aput-byte v4, v3, v0

    const-string/jumbo v4, "SPEECH_MscEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uploadCantoneseData params:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v6, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v4, v3, v5, v2, v6}, Lcom/iflytek/msc/MSC;->QMSPUploadData([B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQmspErrCode()I

    move-result v3

    iput v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v2, :cond_5

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v3, :cond_6

    :cond_5
    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadCantoneseData QMSPUploadData error code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadCantoneseData QMSPUploadData OK grammar="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "downloadMspData  enter type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "downloadMspData  not init"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "downloadMspData  mIsLoginOk flase."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo p1, "contacts"

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2}, Lcom/iflytek/msc/MSC;->QMSPDownloadData([BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v2}, Lcom/iflytek/msc/MSCSessionInfo;->getQmspErrCode()I

    move-result v2

    iput v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v2, :cond_4

    :cond_3
    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "downloadMspData end code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "downloadMspData ret_length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "unInitialze"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    iput-boolean v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->QISRFini()I

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "initialize again"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->m:I

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/a;->b()Z

    :cond_3
    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "mspSearch  mIsLoginOk flase."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v1, p1, p3}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getSessionParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SPEECH_MscEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mspSearch  enter param="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QMSPSearch([B[BLcom/iflytek/msc/MSCSessionInfo;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQmspErrCode()I

    move-result v1

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v1, :cond_1

    :cond_5
    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mspSearch  QMSPSearch error code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;I)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "SPEECH_MscEngine"

    const-string/jumbo v3, "uploadMspData  enter \n"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "SPEECH_MscEngine"

    const-string/jumbo v3, "unInitialze"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->QISRFini()I

    const-string/jumbo v2, "SPEECH_MscEngine"

    const-string/jumbo v3, "initialize again"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->m:I

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "SPEECH_MscEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadMspData need Login:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/iflytek/yd/speech/msc/a/a;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :cond_2
    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/a;->b()Z

    :cond_3
    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v2, :cond_4

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "uploadMspData  mIsLoginOk flase."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    if-ne v1, p3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sub=uup,dtt="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",ent=cantonese"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\u0000"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move v2, v0

    :goto_2
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_7

    aget-byte v5, v3, v2

    if-nez v5, :cond_5

    const/16 v5, 0x20

    aput-byte v5, v3, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sub=uup,dtt="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_7
    if-nez v3, :cond_8

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "uploadMspData contacts null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "SPEECH_MscEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uploadMspData params:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SPEECH_MscEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uploadMspData DATA:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v6, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v2, v3, v5, v4, v6}, Lcom/iflytek/msc/MSC;->QMSPUploadData([B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQmspErrCode()I

    move-result v3

    iput v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v2, :cond_9

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v3, :cond_a

    :cond_9
    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadMspData QMSPUploadData error code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadMspData QMSPUploadData OK grammar="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0
.end method

.method public final endPutData()Z
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->s:Z

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/iflytek/yd/speech/msc/a/a;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final getDownTrafficFlow()I
    .locals 1

    const-string/jumbo v0, "downflow\u0000"

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/a;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    return v0
.end method

.method public final getResult()[B
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->t:[B

    return-object v0
.end method

.method public final getResultStatus()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v0}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrRecogStatus()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->noResult:Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "SPEECH_MscEngine"

    const-string/jumbo v1, "putData getResult"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/a;->c()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/a;->c()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSessionParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "getSessionId null "

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    const/16 v2, 0x800

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :cond_2
    const-string/jumbo v2, "SPEECH_MscEngine"

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

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/a;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final initialize(Ljava/lang/String;I)Z
    .locals 4

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getInitParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initParams = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/iflytek/yd/speech/msc/a/a;->m:I

    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    invoke-static {v1}, Lcom/iflytek/msc/MSC;->DebugLog(Z)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->QISRInit([B)I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    const-string/jumbo v0, "SPEECH_MscEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init msc result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    :goto_0
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/a;->b()Z

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    goto :goto_0
.end method

.method public final putAudioData([BI)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/yd/speech/msc/a/a;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final putText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final sessionBegin(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "unInitialze"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->QISRFini()I

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "initialize again"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->l:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->m:I

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo p1, ""

    :cond_3
    if-nez p2, :cond_4

    const-string/jumbo p2, ""

    :cond_4
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v1, p1, p3}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getSessionParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/a;->k:Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    invoke-virtual {v2, p2}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getSessionGrammar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->s:Z

    const-string/jumbo v3, "SPEECH_MscEngine"

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

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v2, v1, v3}, Lcom/iflytek/msc/MSC;->QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sessionBegin end: ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v3}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->j:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-virtual {v1}, Lcom/iflytek/msc/MSCSessionInfo;->getQisrErrCode()I

    move-result v1

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->r:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final sessionEnd(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SPEECH_MscEngine"

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

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/msc/MSC;->QISRSessionEnd([C[B)I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string/jumbo v2, "SPEECH_MscEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sessionEnd time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    goto :goto_0
.end method

.method public final setMspParams(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "SPEECH_MscEngine"

    const-string/jumbo v2, "setMspParams not login return"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MSC;->QMSPSetParam([B[B)I

    move-result v0

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "QMSPSetParam ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final setSessionParams(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->q:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/msc/MSC;->QISRSetParam([C[B[B)I

    move-result v0

    const-string/jumbo v1, "SPEECH_MscEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setSessionParams ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final unInitialize()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->n:Z

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/msc/MSC;->QMSPLogOut()I

    iput-boolean v1, p0, Lcom/iflytek/yd/speech/msc/a/a;->p:Z

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->QISRFini()I

    return-void
.end method
