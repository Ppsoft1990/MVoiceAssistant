.class public abstract Lif;
.super Ljava/lang/Object;
.source "MediaControl.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget-object v0, p0, Lif;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lif;->a:Landroid/media/AudioManager;

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    .prologue
    .line 89
    const-string/jumbo v0, "MediaControl"

    const-string/jumbo v1, "requestFocus"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0, p1}, Lif;->a(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lif;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lif;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lif;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lif;->a(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lif;->b:Z

    .line 119
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string/jumbo v0, "MediaControl"

    const-string/jumbo v1, "abandonFocus"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, p1}, Lif;->a(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lif;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lif;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lif;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lif;->a(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lif;->b:Z

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 24
    const-string/jumbo v0, "MediaControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChange | focusChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    :pswitch_0
    return-void

    .line 27
    :pswitch_1
    const-string/jumbo v0, "MediaControl"

    const-string/jumbo v1, "AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lif;->j()V

    goto :goto_0

    .line 32
    :pswitch_2
    const-string/jumbo v0, "MediaControl"

    const-string/jumbo v1, "AUDIOFOCUS_GAIN_TRANSIENT"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lif;->j()V

    goto :goto_0

    .line 37
    :pswitch_3
    const-string/jumbo v0, "MediaControl"

    const-string/jumbo v1, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lif;->j()V

    goto :goto_0

    .line 42
    :pswitch_4
    const-string/jumbo v0, "MediaControl"

    const-string/jumbo v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lif;->h()V

    goto :goto_0

    .line 47
    :pswitch_5
    const-string/jumbo v0, "MediaControl"

    const-string/jumbo v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lif;->i()V

    goto :goto_0

    .line 52
    :pswitch_6
    const-string/jumbo v0, "MediaControl"

    const-string/jumbo v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lif;->k()V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
