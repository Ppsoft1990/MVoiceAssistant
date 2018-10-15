.class public Lcom/iflytek/framework/plugin/sdk/PluginRemoteService;
.super Landroid/app/Service;
.source "PluginRemoteService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    new-instance v0, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
