.class public Lcom/iflytek/viafly/dial/remote/DialReceiverService;
.super Landroid/app/Service;
.source "DialReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Looper;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/dial/remote/DialReceiverService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/dial/remote/DialReceiverService;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    iput-object p0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->d:Landroid/content/Context;

    .line 43
    const-string/jumbo v0, "DialService"

    const-string/jumbo v1, "service onCreate"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DialService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->b:Landroid/os/HandlerThread;

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->b:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->c:Landroid/os/Looper;

    .line 49
    new-instance v0, Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;

    iget-object v1, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;-><init>(Lcom/iflytek/viafly/dial/remote/DialReceiverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->a:Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 70
    const-string/jumbo v0, "DialService"

    const-string/jumbo v1, "service onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 72
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 54
    const-string/jumbo v1, "DialService"

    const-string/jumbo v2, "service onStartCommand"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->stopSelf()V

    .line 63
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->a:Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 59
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 61
    iget-object v1, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->a:Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
