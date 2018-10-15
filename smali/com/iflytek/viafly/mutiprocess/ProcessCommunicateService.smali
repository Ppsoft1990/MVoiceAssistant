.class public Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;
.super Landroid/app/Service;
.source "ProcessCommunicateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 83
    const-string/jumbo v2, "ProcessCommunicateService"

    const-string/jumbo v3, "updating mixed notification..."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v2

    invoke-virtual {v2}, Lzq;->h()V

    .line 89
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v2

    invoke-virtual {v2}, Lzn;->r()Landroid/app/Notification;

    move-result-object v1

    .line 90
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v2, "ProcessCommunicateService"

    const-string/jumbo v3, "notification available, start service foreground."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v2

    invoke-virtual {v2}, Lzn;->q()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ProcessCommunicateService"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "ProcessCommunicateService"

    const-string/jumbo v3, "notification not available, stop service foreground."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->stopForeground(Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    iput-object p0, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->b:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;-><init>(Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$1;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;

    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a()V

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const-string/jumbo v1, "ProcessCommunicateService"

    const-string/jumbo v2, "onStartCommand intent or action is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 69
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;->a:Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
