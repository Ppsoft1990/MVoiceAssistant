.class public Lawj;
.super Ljava/lang/Object;
.source "TtsHelper.java"


# instance fields
.field a:Ljava/util/Timer;

.field private b:Landroid/content/Context;

.field private c:Lpp;

.field private d:Lju;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lawj;->e:Z

    .line 28
    iput-boolean v0, p0, Lawj;->f:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lawj;->a:Ljava/util/Timer;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lawj;->g:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lawj;->b:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lawj;->f()V

    .line 35
    return-void
.end method

.method static synthetic a(Lawj;)Lpp;
    .locals 1
    .param p0, "x0"    # Lawj;

    .prologue
    .line 20
    iget-object v0, p0, Lawj;->c:Lpp;

    return-object v0
.end method

.method static synthetic a(Lawj;Z)Z
    .locals 0
    .param p0, "x0"    # Lawj;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lawj;->f:Z

    return p1
.end method

.method static synthetic b(Lawj;)V
    .locals 0
    .param p0, "x0"    # Lawj;

    .prologue
    .line 20
    invoke-direct {p0}, Lawj;->f()V

    return-void
.end method

.method static synthetic c(Lawj;)Lju;
    .locals 1
    .param p0, "x0"    # Lawj;

    .prologue
    .line 20
    iget-object v0, p0, Lawj;->d:Lju;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "ScheduleMediaTts"

    const-string/jumbo v1, "initTtsService()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lawj;->c:Lpp;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lpp;

    iget-object v1, p0, Lawj;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lawj;->c:Lpp;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawj;->e:Z

    .line 46
    const-string/jumbo v0, "ScheduleMediaTts"

    const-string/jumbo v1, "------>> mServiceUtil new ok!"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lawj;->d:Lju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawj;->c:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawj;->c:Lpp;

    iget-object v1, p0, Lawj;->d:Lju;

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lawj;->c:Lpp;

    iget-object v1, p0, Lawj;->d:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 135
    const-string/jumbo v0, "ScheduleMediaTts"

    const-string/jumbo v1, "stop tts success!"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lawj;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    const-string/jumbo v0, "ScheduleMediaTts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTimer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lawj;->a:Ljava/util/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lawj;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lawj;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 141
    const-string/jumbo v0, "ScheduleMediaTts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTimer set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lawj;->a:Ljava/util/Timer;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lawj;->f:Z

    .line 145
    :cond_1
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lju;J)V
    .locals 3
    .param p1, "speechContent"    # Ljava/lang/String;
    .param p2, "listener"    # Lju;
    .param p3, "delayTime"    # J

    .prologue
    .line 55
    const-string/jumbo v0, "ScheduleMediaTts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "----->> startTts() | speechContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 57
    :cond_0
    const-string/jumbo v0, "ScheduleMediaTts"

    const-string/jumbo v1, "----->> startTts() | speechContent=null -> return"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p2, :cond_1

    .line 59
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lju;->onPlayCompletedCallBack(I)V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    iput-object p2, p0, Lawj;->d:Lju;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawj;->f:Z

    .line 65
    iget-object v1, p0, Lawj;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lawj;->a:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 67
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lawj;->a:Ljava/util/Timer;

    .line 69
    :cond_3
    iget-object v0, p0, Lawj;->a:Ljava/util/Timer;

    new-instance v2, Lawj$1;

    invoke-direct {v2, p0, p1}, Lawj$1;-><init>(Lawj;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 85
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V
    .locals 5
    .param p1, "speechContent"    # Ljava/lang/String;
    .param p2, "listener"    # Lju;
    .param p3, "delayTime"    # J
    .param p5, "customParams"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const-string/jumbo v1, "ScheduleMediaTts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "----->> startTts() | speechContent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 95
    :cond_0
    const-string/jumbo v1, "ScheduleMediaTts"

    const-string/jumbo v2, "----->> startTts() | speechContent=null -> return"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p2, :cond_1

    .line 97
    const/4 v1, -0x1

    invoke-interface {p2, v1}, Lju;->onPlayCompletedCallBack(I)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iput-object p2, p0, Lawj;->d:Lju;

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lawj;->f:Z

    .line 103
    iget-object v2, p0, Lawj;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lawj;->a:Ljava/util/Timer;

    if-nez v1, :cond_3

    .line 105
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lawj;->a:Ljava/util/Timer;

    .line 106
    const-string/jumbo v1, "ScheduleMediaTts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTimer set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lawj;->a:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    move-object v0, p5

    .line 109
    .local v0, "customParamsFinal":Landroid/os/Bundle;
    iget-object v1, p0, Lawj;->a:Ljava/util/Timer;

    new-instance v3, Lawj$2;

    invoke-direct {v3, p0, v0, p1}, Lawj$2;-><init>(Lawj;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v1, v3, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 126
    monitor-exit v2

    goto :goto_0

    .end local v0    # "customParamsFinal":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "ret":Z
    iget-object v1, p0, Lawj;->c:Lpp;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lawj;->c:Lpp;

    invoke-virtual {v1}, Lpp;->c()V

    .line 152
    iput-object v2, p0, Lawj;->c:Lpp;

    .line 153
    iput-object v2, p0, Lawj;->d:Lju;

    .line 154
    iput-boolean v3, p0, Lawj;->e:Z

    .line 155
    iput-boolean v3, p0, Lawj;->f:Z

    .line 156
    const/4 v0, 0x1

    .line 158
    :cond_0
    iget-object v2, p0, Lawj;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    iget-object v1, p0, Lawj;->a:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lawj;->a:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lawj;->a:Ljava/util/Timer;

    .line 163
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const-string/jumbo v1, "ScheduleMediaTts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "destroy(), ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 168
    iget-boolean v0, p0, Lawj;->e:Z

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lawj;->f()V

    .line 170
    const-string/jumbo v0, "ScheduleMediaTts"

    const-string/jumbo v1, "initTtsService() 4"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    const-string/jumbo v0, "ScheduleMediaTts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTtsInitOk() | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lawj;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lawj;->e:Z

    return v0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 177
    const-string/jumbo v0, "ScheduleMediaTts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTtsLocked() | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lawj;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-boolean v0, p0, Lawj;->f:Z

    return v0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "ret":Z
    iget-object v1, p0, Lawj;->d:Lju;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lawj;->c:Lpp;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lawj;->c:Lpp;

    iget-object v2, p0, Lawj;->d:Lju;

    invoke-virtual {v1, v2}, Lpp;->e(Lju;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lawj;->a:Ljava/util/Timer;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 186
    :cond_1
    :goto_0
    return v0

    .line 184
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
