.class public Lcom/iflytek/greenplug/server/service/PluginManagerService;
.super Landroid/app/Service;
.source "PluginManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManagerService"


# instance fields
.field private mPluginPackageManager:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private keepAlive()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/PluginManagerService;->mPluginPackageManager:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "PluginManagerService"

    const-string/jumbo v1, "PluginManagerService onCreate"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/service/PluginManagerService;->keepAlive()V

    .line 25
    new-instance v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    invoke-direct {v0, p0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/greenplug/server/service/PluginManagerService;->mPluginPackageManager:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->handlePendingIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
