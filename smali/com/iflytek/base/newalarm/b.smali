.class final Lcom/iflytek/base/newalarm/b;
.super Ljava/lang/Object;
.source "AlarmPowerManager.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static c:Landroid/os/PowerManager;

.field private static d:Landroid/os/PowerManager$WakeLock;

.field private static e:Lcom/iflytek/base/newalarm/b;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/base/newalarm/b;->e:Lcom/iflytek/base/newalarm/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/base/newalarm/b;->b:Ljava/lang/Object;

    .line 35
    sput-object p1, Lcom/iflytek/base/newalarm/b;->a:Landroid/content/Context;

    .line 36
    sget-object v1, Lcom/iflytek/base/newalarm/b;->c:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    .line 37
    sget-object v1, Lcom/iflytek/base/newalarm/b;->a:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 39
    check-cast v0, Landroid/os/PowerManager;

    .end local v0    # "object":Ljava/lang/Object;
    sput-object v0, Lcom/iflytek/base/newalarm/b;->c:Landroid/os/PowerManager;

    .line 42
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/b;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/iflytek/base/newalarm/b;->e:Lcom/iflytek/base/newalarm/b;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/iflytek/base/newalarm/b;

    invoke-direct {v0, p0}, Lcom/iflytek/base/newalarm/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/base/newalarm/b;->e:Lcom/iflytek/base/newalarm/b;

    .line 31
    :cond_0
    sget-object v0, Lcom/iflytek/base/newalarm/b;->e:Lcom/iflytek/base/newalarm/b;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/iflytek/base/newalarm/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, ""

    const-string/jumbo v2, "mSpeechWakeLock release"

    invoke-static {v0, v2}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string/jumbo v0, ""

    const-string/jumbo v1, "mSpeechWakeLock.acquire()"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/iflytek/base/newalarm/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    .line 55
    :cond_0
    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lcom/iflytek/base/newalarm/b;->c:Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    .line 58
    :cond_1
    const-string/jumbo v0, ""

    const-string/jumbo v2, "mSpeechWakeLock acquire"

    invoke-static {v0, v2}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/iflytek/base/newalarm/b;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 60
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
