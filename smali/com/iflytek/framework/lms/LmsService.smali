.class public final Lcom/iflytek/framework/lms/LmsService;
.super Landroid/app/Service;
.source "LmsService.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/lms/LmsService;->a:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string/jumbo v0, ""

    .line 37
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 38
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    const-string/jumbo v2, "com.iflytek.lms.lxtelsdkmanager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    new-instance v1, Lrr;

    .end local v1    # "binder":Landroid/os/IBinder;
    invoke-direct {v1, p0, p1}, Lrr;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    .restart local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v2, "LmsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBind action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-object v1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    iget-boolean v0, p0, Lcom/iflytek/framework/lms/LmsService;->a:Z

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/iflytek/framework/lms/LmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    invoke-static {v0}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ltd;->f()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/framework/lms/LmsService;->a:Z

    .line 32
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 53
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const-string/jumbo v0, "LmsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnbind intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
