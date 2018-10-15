.class public Lcom/iflytek/yd/audio/SpeexDenoiser;
.super Ljava/lang/Object;


# static fields
.field private static final FRAME_SIZE:I = 0x280


# instance fields
.field private isInit:Z

.field private mFrameBuffer:[B

.field private mResultBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->isInit:Z

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->isInit:Z

    const/16 v0, 0x500

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mResultBuffer:[B

    const/16 v0, 0x280

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mFrameBuffer:[B

    invoke-static {}, Lcom/iflytek/yd/audio/Speex;->create()I

    return-void
.end method


# virtual methods
.method public denoise([B)[B
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x280

    iget-boolean v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->isInit:Z

    const/16 v0, 0x500

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mResultBuffer:[B

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mFrameBuffer:[B

    invoke-static {}, Lcom/iflytek/yd/audio/Speex;->create()I

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    invoke-static {}, Lcom/iflytek/yd/audio/Speex;->isJniLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    iget-object v2, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mResultBuffer:[B

    array-length v2, v2

    if-eq v0, v2, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mResultBuffer:[B

    :cond_3
    array-length v0, p1

    div-int/lit16 v2, v0, 0x280

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    mul-int/lit16 v3, v0, 0x280

    iget-object v4, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mFrameBuffer:[B

    invoke-static {p1, v3, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mFrameBuffer:[B

    invoke-static {v3, v6}, Lcom/iflytek/yd/audio/Speex;->appendData([BI)I

    invoke-static {}, Lcom/iflytek/yd/audio/Speex;->getWavData()[B

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mResultBuffer:[B

    mul-int/lit16 v5, v0, 0x280

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->mResultBuffer:[B

    goto :goto_0
.end method

.method public release()I
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->isInit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/yd/audio/Speex;->destroy()I

    iput-boolean v1, p0, Lcom/iflytek/yd/audio/SpeexDenoiser;->isInit:Z

    :cond_0
    return v1
.end method
