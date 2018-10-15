.class public abstract Lcom/iflytek/greenplug/client/stub/StubService;
.super Landroid/app/Service;
.source "StubService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StubService"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/client/stub/StubService;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/stub/StubService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/stub/StubService;->isPlugin(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/client/stub/StubService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/stub/StubService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/stub/StubService;->execStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private execStartService(Landroid/content/Intent;)V
    .locals 4
    .param p1, "forwordIntent"    # Landroid/content/Intent;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/greenplug/client/stub/StubService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/greenplug/client/stub/StubService$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/greenplug/client/stub/StubService$1;-><init>(Lcom/iflytek/greenplug/client/stub/StubService;Landroid/content/Intent;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method private isPlugin(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 86
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 88
    :cond_0
    :goto_1
    return v3

    .line 83
    :cond_1
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/iflytek/greenplug/client/PluginManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 84
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private waitAndStart(Landroid/content/Intent;)V
    .locals 1
    .param p1, "forwordIntent"    # Landroid/content/Intent;

    .prologue
    .line 93
    new-instance v0, Lcom/iflytek/greenplug/client/stub/StubService$2;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/greenplug/client/stub/StubService$2;-><init>(Lcom/iflytek/greenplug/client/stub/StubService;Landroid/content/Intent;)V

    .line 107
    invoke-virtual {v0}, Lcom/iflytek/greenplug/client/stub/StubService$2;->start()V

    .line 108
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    const-string/jumbo v0, "StubService"

    const-string/jumbo v1, "StubService onBind, check hook now"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/HookFactory;->getInstance()Lcom/iflytek/greenplug/client/hook/HookFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/greenplug/client/hook/HookFactory;->checkHook()V

    .line 34
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/stub/StubService;->stopSelf()V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 23
    const-string/jumbo v0, "StubService"

    const-string/jumbo v1, "StubService onCreate!"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/client/stub/StubService;->mHandler:Landroid/os/Handler;

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 42
    const-string/jumbo v1, "StubService"

    const-string/jumbo v2, "StubService onStartCommand, check hook now"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/HookFactory;->getInstance()Lcom/iflytek/greenplug/client/hook/HookFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/hook/HookFactory;->checkHook()V

    .line 46
    if-eqz p1, :cond_3

    .line 47
    const-string/jumbo v1, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 48
    .local v0, "targentIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 49
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/client/stub/StubService;->isPlugin(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/client/stub/StubService;->execStartService(Landroid/content/Intent;)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/stub/StubService;->stopSelf()V

    .line 63
    .end local v0    # "targentIntent":Landroid/content/Intent;
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 55
    .restart local v0    # "targentIntent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/client/stub/StubService;->waitAndStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/stub/StubService;->stopSelf()V

    goto :goto_0

    .line 61
    .end local v0    # "targentIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/stub/StubService;->stopSelf()V

    goto :goto_0
.end method
