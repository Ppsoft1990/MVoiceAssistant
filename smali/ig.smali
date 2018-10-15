.class public Lig;
.super Ljava/lang/Object;
.source "IflyPowerManager.java"

# interfaces
.implements Lcom/iflytek/yd/base/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Landroid/os/PowerManager;

.field private d:Landroid/app/KeyguardManager;

.field private e:Landroid/app/KeyguardManager$KeyguardLock;

.field private f:Landroid/os/PowerManager$WakeLock;

.field private g:Landroid/os/PowerManager$WakeLock;

.field private h:J

.field private i:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lig;->b:Ljava/lang/Object;

    .line 49
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lig;->h:J

    .line 71
    new-instance v0, Lig$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lig$1;-><init>(Lig;Landroid/os/Looper;)V

    iput-object v0, p0, Lig;->i:Landroid/os/Handler;

    .line 61
    iget-object v0, p0, Lig;->c:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lig;->a:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lig;->c:Landroid/os/PowerManager;

    .line 64
    :cond_0
    iget-object v0, p0, Lig;->d:Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lig;->a:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lig;->d:Landroid/app/KeyguardManager;

    .line 67
    :cond_1
    iget-object v0, p0, Lig;->c:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string/jumbo v2, "PowerManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    .line 68
    iget-object v0, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lig$1;)V
    .locals 0
    .param p1, "x0"    # Lig$1;

    .prologue
    .line 29
    invoke-direct {p0}, Lig;-><init>()V

    return-void
.end method

.method static synthetic a(Lig;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lig;

    .prologue
    .line 29
    iget-object v0, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lig;->a:Landroid/content/Context;

    .line 57
    sget-object v0, Lig$a;->a:Lig;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 264
    invoke-static {}, Laza;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    iget-object v1, p0, Lig;->c:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    .line 269
    iget-object v0, p0, Lig;->c:Landroid/os/PowerManager;

    sget-object v1, Lig;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;I)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-static {}, Laza;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v3

    .line 288
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 291
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    const/4 v3, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PowerManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public acquireDelayWakeLock()V
    .locals 6

    .prologue
    .line 104
    iget-object v1, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 108
    const-string/jumbo v0, "PowerManager"

    const-string/jumbo v2, "mNormalWakeLock.acquire()"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    iget-object v0, p0, Lig;->i:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lig;->i:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-wide v4, p0, Lig;->h:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 110
    :cond_0
    const-string/jumbo v0, "PowerManager"

    const-string/jumbo v2, "mNormalWakeLock isHeld."

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public acquireWakeLock(ILjava/lang/String;)V
    .locals 4
    .param p1, "wakeFlag"    # I
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v2, "mSpeechWakeLock.acquire()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lig;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    .line 129
    :cond_0
    iget-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lig;->c:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    .line 132
    :cond_1
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v3, "mSpeechWakeLock acquire"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public disableKeyGuardLock(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v2, "mKeyGuardLock.disable()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lig;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_0
    iget-object v1, p0, Lig;->d:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lig;->e:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lig;->d:Landroid/app/KeyguardManager;

    invoke-virtual {v1, p1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lig;->e:Landroid/app/KeyguardManager$KeyguardLock;

    .line 205
    :cond_0
    iget-object v1, p0, Lig;->e:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 211
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isDelayWakeAcquire()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public isKeyGuardLocked()Z
    .locals 4

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "isKeyGuard":Z
    iget-object v3, p0, Lig;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 221
    :try_start_0
    iget-object v2, p0, Lig;->d:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lig;->d:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 227
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 228
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lig;->c:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lig;->c:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWakeAcquire()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    goto :goto_0
.end method

.method public reenableKeyGuardLock()V
    .locals 3

    .prologue
    .line 235
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v2, "mKeyGuardLock.rennable()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lig;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 238
    :try_start_0
    iget-object v1, p0, Lig;->e:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lig;->e:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 245
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseDelayWakeLock()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v1, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v3, "release mNormalWakeLock."

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lig;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    return-void

    .line 167
    :cond_0
    :try_start_2
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v3, "release not held."

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public releaseWakeLock()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lig;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v3, "mSpeechWakeLock release"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lig;->g:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 155
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
