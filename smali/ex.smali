.class public Lex;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lex$1;,
        Lex$a;,
        Lex$b;
    }
.end annotation


# static fields
.field private static b:Lex;


# instance fields
.field final a:Landroid/os/Handler;

.field private c:Lex$a;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lex;->b:Lex;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lex;->c:Lex$a;

    iput-boolean v1, p0, Lex;->d:Z

    iput-boolean v1, p0, Lex;->e:Z

    iput-boolean v1, p0, Lex;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lex;->g:Z

    iput-boolean v1, p0, Lex;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lex;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lex;
    .locals 1

    sget-object v0, Lex;->b:Lex;

    if-nez v0, :cond_0

    new-instance v0, Lex;

    invoke-direct {v0}, Lex;-><init>()V

    sput-object v0, Lex;->b:Lex;

    :cond_0
    sget-object v0, Lex;->b:Lex;

    return-object v0
.end method

.method static synthetic a(Lex;)Z
    .locals 1

    iget-boolean v0, p0, Lex;->g:Z

    return v0
.end method

.method static synthetic a(Lex;Z)Z
    .locals 0

    iput-boolean p1, p0, Lex;->f:Z

    return p1
.end method

.method static synthetic b(Lex;)Z
    .locals 1

    iget-boolean v0, p0, Lex;->d:Z

    return v0
.end method

.method static synthetic c(Lex;)V
    .locals 0

    invoke-direct {p0}, Lex;->f()V

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lex;->d:Z

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lex;->d:Z

    iget-object v0, p0, Lex;->a:Landroid/os/Handler;

    new-instance v1, Lex$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lex$b;-><init>(Lex;Lex$1;)V

    sget v2, Ldp;->N:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lex;->f:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lex;->d:Z

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/baidu/location/f;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lex;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    new-instance v0, Lex$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lex$a;-><init>(Lex;Lex$1;)V

    iput-object v0, p0, Lex;->c:Lex$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lex;->c:Lex$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lex;->e:Z

    invoke-direct {p0}, Lex;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lex;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lex;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lex;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lex;->c:Lex$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lex;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lex;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lex;->c:Lex$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public d()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lex;->h:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lex;->g:Z

    iget-boolean v0, p0, Lex;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lex;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lex;->a:Landroid/os/Handler;

    new-instance v1, Lex$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lex$b;-><init>(Lex;Lex$1;)V

    sget v2, Ldp;->N:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lex;->f:Z

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lex;->g:Z

    return-void
.end method
