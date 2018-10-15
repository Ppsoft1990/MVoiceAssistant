.class public Lcom/iflytek/viafly/player/base/PlaybackService;
.super Landroid/app/Service;
.source "PlaybackService.java"


# instance fields
.field public a:Laqx$a;

.field private b:Lara;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    new-instance v0, Lcom/iflytek/viafly/player/base/PlaybackService$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/player/base/PlaybackService$1;-><init>(Lcom/iflytek/viafly/player/base/PlaybackService;)V

    iput-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService;->a:Laqx$a;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/player/base/PlaybackService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService;->b:Lara;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "PlaybackService"

    const-string/jumbo v1, "stopService"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService;->b:Lara;

    invoke-virtual {v0}, Lara;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService;->b:Lara;

    invoke-virtual {v0}, Lara;->d()Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService;->b:Lara;

    invoke-virtual {v0}, Lara;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const-string/jumbo v0, "PlaybackService"

    const-string/jumbo v1, "close service"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/iflytek/viafly/player/base/PlaybackService;->stopSelf()V

    .line 162
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "PlaybackService"

    const-string/jumbo v1, "releasePlayer"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService;->b:Lara;

    invoke-virtual {v0}, Lara;->n()V

    .line 80
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService;->a:Laqx$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    const-string/jumbo v0, "PlaybackService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lara;

    invoke-direct {v0, p0}, Lara;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService;->b:Lara;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "PlaybackService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a()V

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 37
    const-string/jumbo v0, "PlaybackService"

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const-string/jumbo v0, "PlaybackService"

    const-string/jumbo v1, "onUnbind"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/iflytek/viafly/player/base/PlaybackService;->b()V

    .line 65
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
