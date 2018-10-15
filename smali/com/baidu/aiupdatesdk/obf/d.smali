.class public Lcom/baidu/aiupdatesdk/obf/d;
.super Ljava/lang/Object;
.source "TagRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/aiupdatesdk/obf/d$a;,
        Lcom/baidu/aiupdatesdk/obf/d$b;
    }
.end annotation


# static fields
.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private volatile e:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/d;->f:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/d;->f:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-wide/16 v4, 0x2328

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/ag;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d;->b:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d;->c:Ljava/util/List;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d;->d:Landroid/os/Handler;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/aiupdatesdk/obf/d;->e:J

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/aiupdatesdk/obf/d$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/baidu/aiupdatesdk/obf/d$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/d;J)J
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/d;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/baidu/aiupdatesdk/obf/d;->e:J

    return-wide p1
.end method

.method private static a()Lcom/baidu/aiupdatesdk/obf/d;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/d$b;->a:Lcom/baidu/aiupdatesdk/obf/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;ILjava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retryIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x1

    .line 112
    .local v0, "mustRetry":Z
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 113
    if-nez p2, :cond_3

    .line 115
    invoke-direct {p0, p3}, Lcom/baidu/aiupdatesdk/obf/d;->a(Ljava/util/List;)Z

    move-result v0

    .line 116
    if-nez v0, :cond_2

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/aiupdatesdk/obf/d;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x61a8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 119
    const/4 v0, 0x1

    .line 127
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 130
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/d;->d:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/aiupdatesdk/obf/d$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/d$a;-><init>(Lcom/baidu/aiupdatesdk/obf/d;Landroid/content/Context;I)V

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/d;->f:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 124
    :cond_3
    invoke-direct {p0, p3}, Lcom/baidu/aiupdatesdk/obf/d;->a(Ljava/util/List;)Z

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/b;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Lcom/baidu/aiupdatesdk/obf/b;

    .prologue
    .line 49
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/d;->a()Lcom/baidu/aiupdatesdk/obf/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/aiupdatesdk/obf/d;->b(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/b;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/d;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/d;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/d;->b()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/d;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/d;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/aiupdatesdk/obf/d;->a(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/baidu/aiupdatesdk/obf/d;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/d;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 146
    .local v0, "mustRetry":Z
    :goto_0
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    monitor-exit v2

    .line 148
    return v0

    .line 145
    .end local v0    # "mustRetry":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/baidu/aiupdatesdk/obf/d;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/d;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/d;->c()Ljava/util/List;

    .line 86
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 87
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/b;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Lcom/baidu/aiupdatesdk/obf/b;

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    if-eqz p2, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "tags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .restart local v0    # "tags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/aiupdatesdk/obf/d;->a(Landroid/content/Context;ILjava/util/List;)V

    .line 105
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/l;->a()Lcom/baidu/aiupdatesdk/obf/l;

    move-result-object v1

    .line 135
    .local v1, "request":Lcom/baidu/aiupdatesdk/obf/l;
    invoke-static {p0, p1}, Lcom/baidu/aiupdatesdk/obf/c;->a(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/aiupdatesdk/obf/c;

    move-result-object v0

    .line 136
    .local v0, "coder":Lcom/baidu/aiupdatesdk/obf/c;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/baidu/aiupdatesdk/obf/l;->b(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V

    .line 138
    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/obf/c;->e()I

    move-result v2

    .line 139
    .local v2, "resultCode":I
    const/16 v3, 0x2710

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/d;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d;->c:Ljava/util/List;

    .line 93
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/d;->c:Ljava/util/List;

    .line 94
    monitor-exit v2

    .line 95
    return-object v0

    .line 94
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/baidu/aiupdatesdk/obf/d;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/d;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/d;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
