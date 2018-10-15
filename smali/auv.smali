.class Lauv;
.super Ljava/lang/Object;
.source "SchedulePowerAccessor.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/PowerManager;

.field private d:Landroid/os/PowerManager$WakeLock;

.field private e:Landroid/app/KeyguardManager;

.field private f:Landroid/app/KeyguardManager$KeyguardLock;

.field private final g:Ljava/lang/Object;

.field private h:Landroid/os/PowerManager$WakeLock;

.field private final i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lauv;->a:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lauv;->g:Ljava/lang/Object;

    .line 30
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lauv;->i:J

    .line 33
    iput-object p1, p0, Lauv;->b:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lauv;->b:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lauv;->c:Landroid/os/PowerManager;

    .line 35
    iget-object v0, p0, Lauv;->b:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lauv;->e:Landroid/app/KeyguardManager;

    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 64
    iget-object v2, p0, Lauv;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v3, "mWakeLock release"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 70
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 75
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(ILjava/lang/String;)V
    .locals 4
    .param p1, "wakeFlag"    # I
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v2, "mWakeLock.acquire()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v2, p0, Lauv;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 44
    :try_start_0
    iget-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v3, "----->> WakeLock has acquired or is held -> return"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_1
    iget-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 50
    iget-object v1, p0, Lauv;->c:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    .line 52
    :cond_1
    iget-object v1, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 53
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v3, "mWakeLock acquire"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v2, "mKeyGuardLock.disable()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lauv;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_0
    iget-object v1, p0, Lauv;->e:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lauv;->f:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lauv;->e:Landroid/app/KeyguardManager;

    invoke-virtual {v1, p1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lauv;->f:Landroid/app/KeyguardManager$KeyguardLock;

    .line 99
    :cond_0
    iget-object v1, p0, Lauv;->f:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 105
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v2, "mWakeLock.acquire()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lauv;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-object v1, p0, Lauv;->h:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lauv;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v3, "----->> PartialWakeLock has acquired or is held -> return"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lauv;->d()V

    .line 135
    :cond_0
    iget-object v1, p0, Lauv;->h:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lauv;->c:Landroid/os/PowerManager;

    const v3, 0x20000001

    invoke-virtual {v1, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lauv;->h:Landroid/os/PowerManager$WakeLock;

    .line 138
    :cond_1
    iget-object v1, p0, Lauv;->h:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 139
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v3, "mPartialWakeLock acquire"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 144
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lauv;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 111
    const-string/jumbo v1, "SchedulePowerAccessor"

    const-string/jumbo v2, "mKeyGuardLock.rennable()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lauv;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lauv;->f:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lauv;->f:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lauv;->h:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lauv;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lauv;->h:Landroid/os/PowerManager$WakeLock;

    .line 154
    :cond_0
    return-void
.end method
