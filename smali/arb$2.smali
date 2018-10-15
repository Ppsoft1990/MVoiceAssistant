.class Larb$2;
.super Laqw$a;
.source "PlayerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larb;


# direct methods
.method constructor <init>(Larb;)V
    .locals 0
    .param p1, "this$0"    # Larb;

    .prologue
    .line 113
    iput-object p1, p0, Larb$2;->a:Larb;

    invoke-direct {p0}, Laqw$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    invoke-interface {v0}, Laqz;->k()V

    .line 120
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    invoke-interface {v0, p1}, Laqz;->c(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    invoke-interface {v0}, Laqz;->l()V

    .line 149
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1, "percent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    invoke-interface {v0, p1}, Laqz;->d(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Larb$2;->a:Larb;

    invoke-static {v0}, Larb;->c(Larb;)Laqz;

    move-result-object v0

    invoke-interface {v0, p1}, Laqz;->e(I)V

    .line 142
    :cond_0
    return-void
.end method
