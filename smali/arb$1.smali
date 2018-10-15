.class Larb$1;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 48
    iput-object p1, p0, Larb$1;->a:Larb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 51
    const-string/jumbo v1, "PlayerHandler"

    const-string/jumbo v2, "onServiceConnected "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Larb$1;->a:Larb;

    invoke-static {p2}, Laqx$a;->a(Landroid/os/IBinder;)Laqx;

    move-result-object v2

    invoke-static {v1, v2}, Larb;->a(Larb;Laqx;)Laqx;

    .line 53
    const-string/jumbo v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected mPlayCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Larb$1;->a:Larb;

    invoke-static {v3}, Larb;->a(Larb;)Laqw;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_0
    iget-object v1, p0, Larb$1;->a:Larb;

    invoke-static {v1}, Larb;->b(Larb;)Laqx;

    move-result-object v1

    iget-object v2, p0, Larb$1;->a:Larb;

    invoke-static {v2}, Larb;->a(Larb;)Laqw;

    move-result-object v2

    invoke-interface {v1, v2}, Laqx;->a(Laqw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    iget-object v1, p0, Larb$1;->a:Larb;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Larb;->a(Larb;Z)Z

    .line 62
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PlayerHandler"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 66
    const-string/jumbo v0, "PlayerHandler"

    const-string/jumbo v1, "onServiceDisconnected "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Larb$1;->a:Larb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Larb;->a(Larb;Z)Z

    .line 68
    return-void
.end method
