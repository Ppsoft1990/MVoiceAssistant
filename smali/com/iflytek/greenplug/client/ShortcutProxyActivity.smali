.class public Lcom/iflytek/greenplug/client/ShortcutProxyActivity;
.super Landroid/app/Activity;
.source "ShortcutProxyActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutProxyActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/client/ShortcutProxyActivity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/ShortcutProxyActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->isPlugin(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private getForwardIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 97
    .local v2, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 99
    .local v4, "targetIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 100
    :try_start_0
    const-string/jumbo v5, "com.iflytek.greenplug.shortcut.OldIntent"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 101
    .local v1, "forwordIntent":Landroid/content/Intent;
    const-string/jumbo v5, "com.iflytek.greenplug.shortcut.OldIntent.Uri"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "intentUri":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 103
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 111
    .end local v1    # "forwordIntent":Landroid/content/Intent;
    .end local v3    # "intentUri":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 115
    :cond_1
    return-object v4

    .line 104
    .restart local v1    # "forwordIntent":Landroid/content/Intent;
    .restart local v3    # "intentUri":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 105
    move-object v4, v1

    goto :goto_0

    .line 108
    .end local v1    # "forwordIntent":Landroid/content/Intent;
    .end local v3    # "intentUri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ShortcutProxyActivity"

    const-string/jumbo v6, "getForwardIntent error"

    invoke-static {v5, v6, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isPlugin(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 63
    const/4 v2, 0x0

    .line 64
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

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 70
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 72
    :cond_0
    :goto_1
    return v3

    .line 67
    :cond_1
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/iflytek/greenplug/client/PluginManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 68
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private waitAndStart(Landroid/content/Intent;)V
    .locals 1
    .param p1, "forwordIntent"    # Landroid/content/Intent;

    .prologue
    .line 77
    new-instance v0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;-><init>(Lcom/iflytek/greenplug/client/ShortcutProxyActivity;Landroid/content/Intent;)V

    .line 92
    invoke-virtual {v0}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->start()V

    .line 93
    return-void
.end method


# virtual methods
.method protected execStartForwordIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "forwordIntent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    :try_start_0
    const-string/jumbo v3, "ShortcutProxyActivity"

    const-string/jumbo v4, "ShortcutProxyActivity onCreate"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 28
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_4

    .line 29
    invoke-direct {p0}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->getForwardIntent()Landroid/content/Intent;

    move-result-object v1

    .line 30
    .local v1, "forwordIntent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 31
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_0

    .line 35
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 37
    :cond_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->isPlugin(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->execStartForwordIntent(Landroid/content/Intent;)V

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->finish()V

    .line 55
    .end local v1    # "forwordIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 43
    .restart local v1    # "forwordIntent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->waitAndStart(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1    # "forwordIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->finish()V

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "forwordIntent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->finish()V

    goto :goto_0

    .line 49
    .end local v1    # "forwordIntent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
