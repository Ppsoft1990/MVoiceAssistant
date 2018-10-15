.class public abstract Lcom/iflytek/greenplug/client/stub/StubActivity;
.super Landroid/app/Activity;
.source "StubActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StubActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/client/stub/StubActivity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/stub/StubActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/stub/StubActivity;->isPlugin(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/client/stub/StubActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/stub/StubActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/stub/StubActivity;->execStartIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private execStartIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "forwordIntent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/greenplug/client/stub/StubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/greenplug/client/stub/StubActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/greenplug/client/stub/StubActivity$1;-><init>(Lcom/iflytek/greenplug/client/stub/StubActivity;Landroid/content/Intent;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method

.method private isPlugin(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
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

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 73
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 75
    :cond_0
    :goto_1
    return v3

    .line 70
    :cond_1
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/iflytek/greenplug/client/PluginManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 71
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private waitAndStart(Landroid/content/Intent;)V
    .locals 1
    .param p1, "forwordIntent"    # Landroid/content/Intent;

    .prologue
    .line 80
    new-instance v0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/greenplug/client/stub/StubActivity$2;-><init>(Lcom/iflytek/greenplug/client/stub/StubActivity;Landroid/content/Intent;)V

    .line 94
    invoke-virtual {v0}, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->start()V

    .line 95
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string/jumbo v2, "StubActivity"

    const-string/jumbo v3, "StubActivity onCreate, check hook now"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/HookFactory;->getInstance()Lcom/iflytek/greenplug/client/hook/HookFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/greenplug/client/hook/HookFactory;->checkHook()V

    .line 31
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/iflytek/greenplug/client/stub/StubActivity;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/stub/StubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 35
    const-string/jumbo v2, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 36
    .local v1, "targentIntent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 37
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/stub/StubActivity;->isPlugin(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/stub/StubActivity;->execStartIntent(Landroid/content/Intent;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/stub/StubActivity;->finish()V

    .line 51
    .end local v1    # "targentIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 43
    .restart local v1    # "targentIntent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/stub/StubActivity;->waitAndStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/stub/StubActivity;->finish()V

    goto :goto_0

    .line 49
    .end local v1    # "targentIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/stub/StubActivity;->finish()V

    goto :goto_0
.end method
