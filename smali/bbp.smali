.class public Lbbp;
.super Ljava/lang/Object;
.source "SpeechWakeManagerImpl.java"


# static fields
.field private static b:Lbbp;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/yd/base/ProcessListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    iput-object v0, p0, Lbbp;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Lbbp$1;

    invoke-direct {v0, p0}, Lbbp$1;-><init>(Lbbp;)V

    iput-object v0, p0, Lbbp;->d:Lcom/iflytek/yd/base/ProcessListener;

    .line 28
    iput-object p1, p0, Lbbp;->c:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lbbp;->e()V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbbp;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lbbp;->b:Lbbp;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lbbp;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lbbp;->b:Lbbp;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lbbp;

    invoke-direct {v0, p0}, Lbbp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbbp;->b:Lbbp;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lbbp;->b:Lbbp;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Z)V
    .locals 3
    .param p1, "isOpen"    # Z

    .prologue
    .line 65
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProcessListener(), isOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lbbp;->d:Lcom/iflytek/yd/base/ProcessListener;

    invoke-static {v0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lbbp;->d:Lcom/iflytek/yd/base/ProcessListener;

    invoke-static {v0}, Lcom/iflytek/viafly/ViaFlyApp;->b(Lcom/iflytek/yd/base/ProcessListener;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x3

    .line 35
    .local v0, "pluginType":I
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->uninstallPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 36
    const-string/jumbo v1, "SpeechWakeManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uninstalCarmodePlugin | pluginType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 112
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    const-string/jumbo v1, "stopWake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lbbp;->c:Landroid/content/Context;

    invoke-static {v0}, Lqb;->a(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public a(IIJ)V
    .locals 3
    .param p1, "wakeScene"    # I
    .param p2, "wakeFrom"    # I
    .param p3, "delayTime"    # J

    .prologue
    .line 102
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWake | wakeScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", wakeFrom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", delayTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lbbp;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lqb;->a(Landroid/content/Context;IIJ)V

    .line 104
    return-void
.end method

.method public a(J)V
    .locals 2
    .param p1, "delayTime"    # J

    .prologue
    .line 123
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    const-string/jumbo v1, "startCallWake | no operation-->return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public a(Z)V
    .locals 3
    .param p1, "isOpen"    # Z

    .prologue
    .line 175
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWakeOpen | isOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lbbp;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lqb;->a(Landroid/content/Context;Z)V

    .line 178
    invoke-direct {p0, p1}, Lbbp;->b(Z)V

    .line 179
    return-void
.end method

.method public b(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .prologue
    .line 143
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockScreen | delayTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lbbp;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lqb;->a(Landroid/content/Context;J)V

    .line 145
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lqb;->a()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 186
    invoke-virtual {p0}, Lbbp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    const-string/jumbo v1, "resumeWake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lbbp;->c:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x320

    invoke-static {v0, v1, v2, v4, v5}, Lqb;->a(Landroid/content/Context;IIJ)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    const-string/jumbo v1, "resumeWake | wake switch is close-->return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .prologue
    .line 154
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unLockScreen | delayTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lbbp;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lqb;->b(Landroid/content/Context;J)V

    .line 156
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lbbp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    const-string/jumbo v1, "pauseWake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lbbp;->c:Landroid/content/Context;

    invoke-static {v0}, Lqb;->a(Landroid/content/Context;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string/jumbo v0, "SpeechWakeManagerImpl"

    const-string/jumbo v1, "pauseWake | wake switch is close-->return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
