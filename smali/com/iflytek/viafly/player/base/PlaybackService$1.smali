.class Lcom/iflytek/viafly/player/base/PlaybackService$1;
.super Laqx$a;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/player/base/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/player/base/PlaybackService;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/player/base/PlaybackService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/player/base/PlaybackService;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-direct {p0}, Laqx$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laqw;)V
    .locals 1
    .param p1, "callback"    # Laqw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0, p1}, Lara;->a(Laqw;)V

    .line 139
    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/iflytek/viafly/player/base/PlaybackService$1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0}, Lara;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0}, Lara;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0, p1}, Lara;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/iflytek/viafly/player/entity/Audio;)Z
    .locals 1
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0, p1}, Lara;->b(Lcom/iflytek/viafly/player/entity/Audio;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0}, Lara;->a()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    return-object v0
.end method

.method public b(Laqw;)V
    .locals 1
    .param p1, "callback"    # Laqw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0, p1}, Lara;->b(Laqw;)V

    .line 144
    return-void
.end method

.method public b(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 1
    .param p1, "currentAudio"    # Lcom/iflytek/viafly/player/entity/Audio;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0, p1}, Lara;->a(Lcom/iflytek/viafly/player/entity/Audio;)V

    .line 103
    return-void
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0}, Lara;->c()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0}, Lara;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0}, Lara;->e()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0}, Lara;->f()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/player/base/PlaybackService$1;->a:Lcom/iflytek/viafly/player/base/PlaybackService;

    invoke-static {v0}, Lcom/iflytek/viafly/player/base/PlaybackService;->a(Lcom/iflytek/viafly/player/base/PlaybackService;)Lara;

    move-result-object v0

    invoke-virtual {v0}, Lara;->g()I

    move-result v0

    return v0
.end method
