.class public Lcom/iflytek/base/newalarm/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/newalarm/AlarmService$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmService"


# instance fields
.field private mServiceHandler:Lcom/iflytek/base/newalarm/AlarmService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    return-void
.end method

.method private initIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    new-instance v0, Lcom/iflytek/base/newalarm/AlarmService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/base/newalarm/AlarmService$a;-><init>(Lcom/iflytek/base/newalarm/AlarmService;B)V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/AlarmService;->mServiceHandler:Lcom/iflytek/base/newalarm/AlarmService$a;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "startId"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/AlarmService;->initIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string/jumbo v1, "AlarmService"

    const-string/jumbo v2, "onStartCommand intent or action is null"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/newalarm/AlarmService;->mServiceHandler:Lcom/iflytek/base/newalarm/AlarmService$a;

    invoke-virtual {v1}, Lcom/iflytek/base/newalarm/AlarmService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 46
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 47
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/iflytek/base/newalarm/AlarmService;->mServiceHandler:Lcom/iflytek/base/newalarm/AlarmService$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/newalarm/AlarmService$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
