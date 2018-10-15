.class public Lvo;
.super Lvn;
.source "BlcAnonLoginAdapter.java"


# static fields
.field private static f:Lvo;


# instance fields
.field private volatile e:J

.field private g:Lil;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lvn;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvo;->e:J

    .line 33
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Lvo;->g:Lil;

    .line 34
    invoke-virtual {p0, p1}, Lvo;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "BlcAnonLoginAdapter"

    const-string/jumbo v1, "saveRunconfig | userInfo or uid is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string/jumbo v0, "BlcAnonLoginAdapter"

    const-string/jumbo v1, "saveRunconfig"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lvo;->b:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/business/AppConfig;->setUid(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lvo;->b:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iflytek/yd/business/AppConfig;->setSid(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lvo;->c:Landroid/content/Context;

    invoke-static {v0}, Lazy;->a(Landroid/content/Context;)Lazy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lazy;->a(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/iflytek/blc/core/BlcServiceImpl;->getInstance()Lcom/iflytek/blc/core/BlcService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/blc/core/BlcService;->setUid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lvo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lvo;->f:Lvo;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lvo;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lvo;->f:Lvo;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lvo;

    invoke-direct {v0, p0}, Lvo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvo;->f:Lvo;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lvo;->f:Lvo;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "http://ydossp.voicecloud.cn/do?c=100"

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 6

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lvo;->c:Landroid/content/Context;

    invoke-static {v1}, Lazy;->a(Landroid/content/Context;)Lazy;

    move-result-object v1

    invoke-virtual {v1}, Lazy;->a()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "cacheUid":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const-string/jumbo v1, "BlcAnonLoginAdapter"

    const-string/jumbo v2, "anonLogin | cacheUid is not null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lvo;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 63
    const-string/jumbo v1, "BlcAnonLoginAdapter"

    const-string/jumbo v2, "anonLogin | anon login is running"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "cacheUid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 70
    .restart local v0    # "cacheUid":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lvo;->a:Lyo;

    invoke-interface {v1}, Lyo;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lvo;->e:J

    .line 73
    const-string/jumbo v1, "BlcAnonLoginAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "anonLogin | mAnonLoginId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lvo;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 80
    const-string/jumbo v2, "BlcAnonLoginAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult | errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lvo;->e:J

    .line 84
    if-nez p2, :cond_1

    .line 85
    const-string/jumbo v2, "BlcAnonLoginAdapter"

    const-string/jumbo v3, "onResult | result is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    instance-of v2, p2, Lvv;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 90
    check-cast v0, Lvv;

    .line 91
    .local v0, "resp":Lvv;
    invoke-virtual {v0}, Lvv;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lvv;->a()Lvw;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v0}, Lvv;->a()Lvw;

    move-result-object v1

    .line 93
    .local v1, "userInfo":Lvw;
    invoke-virtual {v1}, Lvw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lvw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lvo;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
