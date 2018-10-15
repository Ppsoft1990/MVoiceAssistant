.class public Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/yd/http/impl/OnHttpTransListener;
.implements Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field static final TAG:Ljava/lang/String; = "HttpRequest"


# instance fields
.field private mBytesRead:I

.field private mCancel:Z

.field private mContentData:[B

.field private mGzipEncoding:Z

.field private mHttpClients:Lcom/iflytek/yd/http/impl/a;

.field private mId:J

.field private mIsSubSection:Z

.field private mKey:[B

.field private mLastErrorDetail:Ljava/lang/String;

.field private mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

.field private mReadBufferFirst:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;-><init>(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-void
.end method

.method public constructor <init>(ILcom/iflytek/yd/http/interfaces/HttpContext;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;-><init>(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-void
.end method

.method public constructor <init>(IZLcom/iflytek/yd/http/interfaces/HttpContext;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;-><init>(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-void
.end method

.method public constructor <init>(JILcom/iflytek/yd/http/interfaces/HttpContext;)V
    .locals 7

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;-><init>(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-void
.end method

.method public constructor <init>(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mId:J

    iput p3, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mType:I

    iput-boolean p4, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mGzipEncoding:Z

    if-eqz p5, :cond_0

    new-instance v0, Lcom/iflytek/yd/http/impl/a;

    invoke-interface {p5}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getContext()Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/iflytek/yd/http/impl/a;-><init>(Lcom/iflytek/yd/http/impl/OnHttpTransListener;)V

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-interface {p5}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/http/impl/a;->a(Lorg/apache/http/HttpHost;)V

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-interface {p5}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/http/impl/a;->a(Lorg/apache/http/auth/Credentials;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/yd/http/impl/a;

    invoke-direct {v0, p0}, Lcom/iflytek/yd/http/impl/a;-><init>(Lcom/iflytek/yd/http/impl/OnHttpTransListener;)V

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mCancel:Z

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-virtual {v0}, Lcom/iflytek/yd/http/impl/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mCancel:Z

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/http/impl/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mId:J

    return-wide v0
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mKey:[B

    return-object v0
.end method

.method public getLastErrorDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mLastErrorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mType:I

    return v0
.end method

.method public onBuffer([BI)I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mReadBufferFirst:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mReadBufferFirst:Z

    iget-boolean v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mCancel:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    invoke-interface {v1, p0}, Lcom/iflytek/yd/http/listener/OnHttpRequestListener;->onResponseStart(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V

    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mCancel:Z

    if-eqz v1, :cond_1

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mContentData:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mContentData:[B

    iget v2, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mBytesRead:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mBytesRead:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mBytesRead:I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "http content length is not positive"

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mLastErrorDetail:Ljava/lang/String;

    const v0, 0xc3ba7

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mContentData:[B

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    invoke-interface {v0, p1, p2, p0}, Lcom/iflytek/yd/http/listener/OnHttpRequestListener;->onError(ILjava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mContentData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mContentData:[B

    invoke-interface {v0, v1, p0}, Lcom/iflytek/yd/http/listener/OnHttpRequestListener;->onResult([BLcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V

    :cond_0
    return-void
.end method

.method public onStart(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mReadBufferFirst:Z

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    long-to-int v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mContentData:[B

    iput v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mBytesRead:I

    iget-boolean v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mCancel:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    invoke-interface {v1, p0}, Lcom/iflytek/yd/http/listener/OnHttpRequestListener;->onRequestEnd(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "http content length is not positive"

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mLastErrorDetail:Ljava/lang/String;

    const v0, 0xc3ba7

    goto :goto_0
.end method

.method public post(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mCancel:Z

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    iget-boolean v1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mGzipEncoding:Z

    iget-boolean v2, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mIsSubSection:Z

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/iflytek/yd/http/impl/a;->a(Ljava/lang/String;[BZZ)V

    return-void
.end method

.method public setKey([B)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mKey:[B

    return-void
.end method

.method public setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpRequestListener;

    return-void
.end method

.method public setSubSection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;->mIsSubSection:Z

    return-void
.end method
