.class public Lawy;
.super Ljava/lang/Object;
.source "PersonalizedSynthesisVoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawy$a;
    }
.end annotation


# static fields
.field private static a:Lawy;


# instance fields
.field private b:Lawy$a;

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

.field private e:Lpp;

.field private f:Landroid/os/Bundle;

.field private g:Lju;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lawy$1;

    invoke-direct {v0, p0}, Lawy$1;-><init>(Lawy;)V

    iput-object v0, p0, Lawy;->g:Lju;

    .line 32
    iput-object p1, p0, Lawy;->c:Landroid/content/Context;

    .line 34
    new-instance v0, Lpp;

    invoke-direct {v0, p1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lawy;->e:Lpp;

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lawy;->f:Landroid/os/Bundle;

    .line 36
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    iget-object v1, p0, Lawy;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lawy;->f:Landroid/os/Bundle;

    .line 37
    iget-object v0, p0, Lawy;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "cloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lawy;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "audio_need_play"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method static synthetic a(Lawy;)Lawy$a;
    .locals 1
    .param p0, "x0"    # Lawy;

    .prologue
    .line 21
    iget-object v0, p0, Lawy;->b:Lawy$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lawy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lawy;->a:Lawy;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lawy;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lawy;->a:Lawy;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lawy;

    invoke-direct {v0, p0}, Lawy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lawy;->a:Lawy;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lawy;->a:Lawy;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lawy;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 0
    .param p0, "x0"    # Lawy;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 21
    iput-object p1, p0, Lawy;->d:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-object p1
.end method

.method static synthetic b(Lawy;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 1
    .param p0, "x0"    # Lawy;

    .prologue
    .line 21
    iget-object v0, p0, Lawy;->d:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "PersonalizedSynthesisVoiceManager"

    const-string/jumbo v1, "stopSynthesis() "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lawy;->e:Lpp;

    iget-object v1, p0, Lawy;->g:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 79
    return-void
.end method

.method public a(Lawy$a;)V
    .locals 0
    .param p1, "listener"    # Lawy$a;

    .prologue
    .line 54
    iput-object p1, p0, Lawy;->b:Lawy$a;

    .line 55
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 5
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 60
    const-string/jumbo v2, "PersonalizedSynthesisVoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startSynthesis() data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lawy;->d:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 62
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "wording":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "role":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lawy;->f:Landroid/os/Bundle;

    const-string/jumbo v3, "role"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v2, p0, Lawy;->e:Lpp;

    iget-object v3, p0, Lawy;->f:Landroid/os/Bundle;

    iget-object v4, p0, Lawy;->g:Lju;

    invoke-virtual {v2, v1, v3, v4}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 74
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 140
    const-string/jumbo v0, "PersonalizedSynthesisVoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSynthesising() data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lawy;->d:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lawy;->d:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawy;->e:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawy;->e:Lpp;

    iget-object v1, p0, Lawy;->g:Lju;

    .line 143
    invoke-virtual {v0, v1}, Lpp;->e(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Z
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lawy;->d:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-object v1, p0, Lawy;->d:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lawy;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v0, 0x1

    goto :goto_0
.end method
