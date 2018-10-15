.class public Lgs;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Lgt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgs$a;
    }
.end annotation


# static fields
.field private static volatile b:Lgs;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lgu;

.field private d:J

.field private e:Ljava/util/Timer;

.field private f:Lgs$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lgs;->a:Landroid/content/Context;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgs;->d:J

    .line 26
    iput-object v2, p0, Lgs;->e:Ljava/util/Timer;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgs;->a:Landroid/content/Context;

    .line 31
    new-instance v0, Lgv;

    invoke-direct {v0, p1, p0}, Lgv;-><init>(Landroid/content/Context;Lgt;)V

    iput-object v0, p0, Lgs;->c:Lgu;

    .line 32
    return-void
.end method

.method static synthetic a(Lgs;)J
    .locals 2
    .param p0, "x0"    # Lgs;

    .prologue
    .line 17
    iget-wide v0, p0, Lgs;->d:J

    return-wide v0
.end method

.method public static a()Lgs;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lgs;->b:Lgs;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lgs;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lgs;->b:Lgs;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lgs;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lgs;->b:Lgs;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lgs;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lgs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgs;->b:Lgs;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lgs;->b:Lgs;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private r()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lgs;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lgs;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lgs;->e:Ljava/util/Timer;

    .line 153
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "startRecoTimer() | cancel last timer..."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgs;->e:Ljava/util/Timer;

    .line 156
    iget-object v0, p0, Lgs;->e:Ljava/util/Timer;

    new-instance v1, Lgs$1;

    invoke-direct {v1, p0}, Lgs$1;-><init>(Lgs;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 168
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "startRecoTimer() | set next timer!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method


# virtual methods
.method public a(Lgs$a;)V
    .locals 0
    .param p1, "listener"    # Lgs$a;

    .prologue
    .line 35
    iput-object p1, p0, Lgs;->f:Lgs$a;

    .line 36
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lgs;->c:Lgu;

    invoke-interface {v1}, Lgu;->c()Z

    move-result v0

    .line 58
    .local v0, "ret":Z
    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lgs;->c:Lgu;

    invoke-interface {v1}, Lgu;->g()Z

    move-result v0

    .line 66
    .local v0, "ret":Z
    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lgs;->c:Lgu;

    invoke-interface {v1}, Lgu;->d()Z

    move-result v0

    .line 74
    .local v0, "ret":Z
    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lgs;->c:Lgu;

    invoke-interface {v0}, Lgu;->f()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lgs;->c:Lgu;

    invoke-interface {v0}, Lgu;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized g()Z
    .locals 7

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lgs;->c:Lgu;

    invoke-interface {v4}, Lgu;->c()Z

    move-result v2

    .line 94
    .local v2, "isConnect":Z
    const-string/jumbo v4, "BluetoothManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRecognition() | isConntected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v2, :cond_1

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lgs;->d:J

    .line 97
    iget-object v4, p0, Lgs;->c:Lgu;

    invoke-interface {v4}, Lgu;->d()Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    iget-object v4, p0, Lgs;->c:Lgu;

    invoke-interface {v4}, Lgu;->a()Z

    move-result v3

    .line 99
    .local v3, "ret":Z
    const-string/jumbo v4, "BluetoothManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRecognition() | device start voice recognition... | ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-eqz v3, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 104
    .local v0, "count":I
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    add-int/lit8 v0, v0, 0x64

    .line 106
    const/16 v4, 0x12c

    if-le v0, v4, :cond_2

    .line 114
    :goto_0
    :try_start_2
    const-string/jumbo v4, "BluetoothManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRecognition() | wait end isAudioConntected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgs;->c:Lgu;

    invoke-interface {v6}, Lgu;->d()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "count":I
    .end local v3    # "ret":Z
    :cond_1
    iget-object v4, p0, Lgs;->c:Lgu;

    invoke-interface {v4}, Lgu;->d()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    monitor-exit p0

    return v4

    .line 109
    .restart local v0    # "count":I
    .restart local v3    # "ret":Z
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v4, "BluetoothManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string/jumbo v4, "BluetoothManager"

    const-string/jumbo v5, "startRecognition() | wait.."

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v4, p0, Lgs;->c:Lgu;

    invoke-interface {v4}, Lgu;->d()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 93
    .end local v0    # "count":I
    .end local v2    # "isConnect":Z
    .end local v3    # "ret":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized h()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgs;->c:Lgu;

    invoke-interface {v0}, Lgu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgs;->c:Lgu;

    invoke-interface {v0}, Lgu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "stopRecognition() | enter to stop..."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lgs;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "stopRecognition() | not connect -> return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lgs;->c:Lgu;

    invoke-interface {v1}, Lgu;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgs;->c:Lgu;

    invoke-interface {v1}, Lgu;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lgs;->c:Lgu;

    invoke-interface {v1}, Lgu;->b()Z

    move-result v0

    .line 139
    .local v0, "ret":Z
    const-string/jumbo v1, "BluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRecognitionNow() | stopVoiceRecognition ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string/jumbo v1, "BluetoothManager"

    const-string/jumbo v2, "stopRecognitionNow() | not connect -> return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 182
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "onBluetoothConnect()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lgs;->f:Lgs$a;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lgs;->f:Lgs$a;

    invoke-interface {v0}, Lgs$a;->a()V

    .line 186
    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 190
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "onBluetoothDisconnect()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lgs;->f:Lgs$a;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lgs;->f:Lgs$a;

    invoke-interface {v0}, Lgs$a;->b()V

    .line 195
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "onBluetoothAudioConnected()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lgs;->f:Lgs$a;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lgs;->f:Lgs$a;

    invoke-interface {v0}, Lgs$a;->c()V

    .line 205
    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 210
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "onBluetoothAudioDisconnected()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lgs;->f:Lgs$a;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lgs;->f:Lgs$a;

    invoke-interface {v0}, Lgs$a;->d()V

    .line 214
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 219
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "onBluetoothA2dpConnected()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lgs;->f:Lgs$a;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lgs;->f:Lgs$a;

    invoke-interface {v0}, Lgs$a;->e()V

    .line 223
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 228
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "onBluetoothA2dpDisconnected()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lgs;->f:Lgs$a;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lgs;->f:Lgs$a;

    invoke-interface {v0}, Lgs$a;->f()V

    .line 232
    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 237
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "onBluetoothA2dpPlaying()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lgs;->f:Lgs$a;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lgs;->f:Lgs$a;

    invoke-interface {v0}, Lgs$a;->g()V

    .line 241
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 246
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "onBluetoothA2dpNotPlaying()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lgs;->f:Lgs$a;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lgs;->f:Lgs$a;

    invoke-interface {v0}, Lgs$a;->h()V

    .line 250
    :cond_0
    return-void
.end method
