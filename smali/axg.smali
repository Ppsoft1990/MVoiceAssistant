.class Laxg;
.super Laxl;
.source "ApiTrafficReader.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Laxl;-><init>()V

    return-void
.end method

.method private static b(I)J
    .locals 5
    .param p0, "uid"    # I

    .prologue
    .line 34
    invoke-static {p0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 35
    .local v0, "ret":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 36
    :goto_0
    const-string/jumbo v2, "ApiTrafficReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRxBytes(), ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "| uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-wide v0

    .line 35
    :cond_0
    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private static c(I)J
    .locals 8
    .param p0, "uid"    # I

    .prologue
    .line 46
    const-wide/16 v4, 0x0

    .line 48
    .local v4, "ret":J
    :try_start_0
    invoke-static {p0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 49
    .local v0, "bytes":J
    const-wide/16 v6, -0x1

    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    .line 54
    .end local v0    # "bytes":J
    :goto_0
    const-string/jumbo v3, "ApiTrafficReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getTxBytes(), ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "| uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-wide v4

    .line 49
    .restart local v0    # "bytes":J
    :cond_0
    const-wide/16 v6, 0x400

    :try_start_1
    div-long v4, v0, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "bytes":J
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ApiTrafficReader"

    const-string/jumbo v6, ""

    invoke-static {v3, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const-wide/16 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Laxk;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 21
    new-instance v0, Laxk;

    invoke-direct {v0}, Laxk;-><init>()V

    .line 22
    .local v0, "result":Laxk;
    invoke-static {p1}, Laxg;->c(I)J

    move-result-wide v2

    iput-wide v2, v0, Laxk;->a:J

    .line 23
    invoke-static {p1}, Laxg;->b(I)J

    move-result-wide v2

    iput-wide v2, v0, Laxk;->b:J

    .line 24
    const-string/jumbo v1, "ApiTrafficReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTraffic(), return= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-object v0
.end method
