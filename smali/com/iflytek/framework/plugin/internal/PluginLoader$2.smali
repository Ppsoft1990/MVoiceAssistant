.class Lcom/iflytek/framework/plugin/internal/PluginLoader$2;
.super Ljava/lang/Object;
.source "PluginLoader.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadEnterApkPluginIntent(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field apkBind:Z

.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

.field final synthetic val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginLoader;Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/framework/plugin/internal/PluginLoader;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->apkBind:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 262
    const-string/jumbo v3, "PluginLoader"

    const-string/jumbo v4, "onServiceConnected"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->apkBind:Z

    .line 264
    invoke-static {p2}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;

    move-result-object v2

    .line 265
    .local v2, "plugin":Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;

    if-eqz v3, :cond_0

    .line 267
    :try_start_0
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;->getEnterPluginIntent()Landroid/content/Intent;

    move-result-object v1

    .line 268
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;

    invoke-interface {v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;->onEnterPlugin(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iget-boolean v4, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->apkBind:Z

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->unbindApkPlugin(Z)V

    .line 276
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "PluginLoader"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;->onEnterPlugin(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iget-boolean v4, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->apkBind:Z

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->unbindApkPlugin(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iget-boolean v5, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->apkBind:Z

    invoke-virtual {v4, v5}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->unbindApkPlugin(Z)V

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 256
    const-string/jumbo v0, "PluginLoader"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;->apkBind:Z

    .line 258
    return-void
.end method
