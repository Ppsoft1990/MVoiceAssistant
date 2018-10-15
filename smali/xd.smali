.class public Lxd;
.super Lwo;
.source "HomeOpLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxd$a;
    }
.end annotation


# static fields
.field private static volatile b:Lxd;


# instance fields
.field private c:Ljava/util/Timer;

.field private d:Lxd$a;

.field private e:Ljava/lang/Object;

.field private volatile f:Z

.field private volatile g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxd;->e:Ljava/lang/Object;

    .line 30
    iput-boolean v1, p0, Lxd;->f:Z

    .line 32
    iput-boolean v1, p0, Lxd;->g:Z

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxd;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lxd;->b:Lxd;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lxd;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lxd;->b:Lxd;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lxd;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lxd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxd;->b:Lxd;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lxd;->b:Lxd;

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

.method static synthetic a(Lxd;)Z
    .locals 1
    .param p0, "x0"    # Lxd;

    .prologue
    .line 20
    iget-boolean v0, p0, Lxd;->f:Z

    return v0
.end method

.method static synthetic a(Lxd;Z)Z
    .locals 0
    .param p0, "x0"    # Lxd;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lxd;->g:Z

    return p1
.end method

.method static synthetic b(Lxd;)Z
    .locals 1
    .param p0, "x0"    # Lxd;

    .prologue
    .line 20
    iget-boolean v0, p0, Lxd;->g:Z

    return v0
.end method

.method static synthetic c(Lxd;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lxd;

    .prologue
    .line 20
    iget-object v0, p0, Lxd;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lxd;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lxd;

    .prologue
    .line 20
    iget-object v0, p0, Lxd;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lxd;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordHomeData home data record flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lxd;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-boolean v0, p0, Lxd;->g:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lxd;->a:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v2, "LX_100038"

    invoke-virtual {v0, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxd;->g:Z

    .line 72
    :cond_0
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lxd;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    const-string/jumbo v0, "recordHomeMoveLog"

    const-string/jumbo v2, "recordHomeMoveLog : LX_300006"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lxd;->a:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v2, "LX_300006"

    invoke-virtual {v0, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 87
    iget-object v1, p0, Lxd;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lxd;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v2, "startHomeDataRecord last home timer not cancel"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lxd;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lxd;->c:Ljava/util/Timer;

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxd;->f:Z

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxd;->g:Z

    .line 96
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lxd;->c:Ljava/util/Timer;

    .line 97
    new-instance v0, Lxd$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lxd$a;-><init>(Lxd;Lxd$1;)V

    iput-object v0, p0, Lxd;->d:Lxd$a;

    .line 98
    iget-object v0, p0, Lxd;->c:Ljava/util/Timer;

    iget-object v2, p0, Lxd;->d:Lxd$a;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lxd;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v2, "stopHomeDataRecord cancel flag true"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxd;->f:Z

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
