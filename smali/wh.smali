.class public Lwh;
.super Ljava/lang/Object;
.source "CmccAgentLogger.java"


# static fields
.field private static a:Lwh;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lwi;

.field private d:Lkg;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lwh;->e:Ljava/lang/String;

    .line 25
    const/4 v1, 0x0

    iput v1, p0, Lwh;->f:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lwh;->b:Landroid/content/Context;

    .line 44
    new-instance v1, Lwi;

    invoke-direct {v1, p1}, Lwi;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lwh;->c:Lwi;

    .line 45
    invoke-static {}, Lhj;->a()Z

    move-result v1

    invoke-static {v1}, Lkf;->a(Z)V

    .line 46
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "channelId":Ljava/lang/String;
    iget-object v1, p0, Lwh;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lkf;->a(Landroid/content/Context;Ljava/lang/String;)Lkg;

    move-result-object v1

    iput-object v1, p0, Lwh;->d:Lkg;

    .line 49
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lwh;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v1, Lwh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lwh;->a:Lwh;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lwh;

    invoke-direct {v0, p0}, Lwh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwh;->a:Lwh;

    .line 35
    :cond_0
    sget-object v0, Lwh;->a:Lwh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lwh;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwh;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lwh;->b:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwh;->e:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lwh;->d:Lkg;

    iget-object v1, p0, Lwh;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkg;->a(Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Lkh;
    .locals 4
    .param p1, "cpaCode"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 84
    invoke-direct {p0}, Lwh;->b()V

    .line 86
    :try_start_0
    iget-object v1, p0, Lwh;->d:Lkg;

    invoke-interface {v1, p1, p2, p3}, Lkg;->a(Ljava/lang/String;J)Lkh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MobileAgentLogger"

    const-string/jumbo v2, "listenOperation error"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 66
    iget v1, p0, Lwh;->f:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 67
    const-string/jumbo v1, "MobileAgentLogger"

    const-string/jumbo v2, "listenUser not listen. size > 1"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lwh;->b()V

    .line 72
    :try_start_0
    iget-object v1, p0, Lwh;->d:Lkg;

    const-string/jumbo v2, "activate"

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 72
    invoke-interface {v1, v2, v4, v5}, Lkg;->a(Ljava/lang/String;J)Lkh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    iget v1, p0, Lwh;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lwh;->f:I

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MobileAgentLogger"

    const-string/jumbo v2, "listenOperation error"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
