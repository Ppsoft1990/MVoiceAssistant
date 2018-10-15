.class final Lln;
.super Ljava/lang/Object;

# interfaces
.implements Llv;


# instance fields
.field final synthetic a:Lll;


# direct methods
.method constructor <init>(Lll;)V
    .locals 0

    iput-object p1, p0, Lln;->a:Lll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 3

    iget-object v0, p0, Lln;->a:Lll;

    invoke-static {v0}, Lll;->f(Lll;)Z

    const-string/jumbo v0, "UserLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CollectInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a([B)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Llq;->b([B)[B

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UserLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CollectInfo \u4e0a\u4f20\u6570\u636e\u7ed3\u679c\u8fd4\u56de\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lln;->a:Lll;

    invoke-static {v0}, Lll;->f(Lll;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "UserLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lln;->a:Lll;

    invoke-static {v0}, Lll;->f(Lll;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lln;->a:Lll;

    invoke-static {v1}, Lll;->f(Lll;)Z

    throw v0
.end method
