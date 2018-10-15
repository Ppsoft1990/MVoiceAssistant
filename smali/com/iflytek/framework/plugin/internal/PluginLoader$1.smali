.class Lcom/iflytek/framework/plugin/internal/PluginLoader$1;
.super Ljava/lang/Object;
.source "PluginLoader.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadInstalledApkPluginInfo(Landroid/content/Intent;Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field apkBind:Z

.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

.field final synthetic val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginLoader;Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/framework/plugin/internal/PluginLoader;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->apkBind:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    .line 210
    const-string/jumbo v3, "PluginLoader"

    const-string/jumbo v4, "onServiceConnected"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput-boolean v5, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->apkBind:Z

    .line 212
    invoke-static {p2}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;

    move-result-object v2

    .line 213
    .local v2, "plugin":Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;

    if-eqz v3, :cond_0

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    .line 216
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;->getPluginInfo()[B

    move-result-object v4

    .line 215
    invoke-static {v4}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->parsePluginInfo([B)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->access$000(Lcom/iflytek/framework/plugin/internal/PluginLoader;Ljava/io/InputStream;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v1

    .line 217
    .local v1, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkPluginVersion(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;->onVersionCheck(Z)V

    .line 222
    :goto_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;

    invoke-interface {v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;->onGetPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iget-boolean v4, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->apkBind:Z

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->unbindApkPlugin(Z)V

    .line 230
    .end local v1    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_0
    :goto_1
    return-void

    .line 220
    .restart local v1    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v3}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;->onVersionCheck(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    .end local v1    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "PluginLoader"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->val$callback:Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;->onGetPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iget-boolean v4, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->apkBind:Z

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->unbindApkPlugin(Z)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iget-boolean v5, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->apkBind:Z

    invoke-virtual {v4, v5}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->unbindApkPlugin(Z)V

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 204
    const-string/jumbo v0, "PluginLoader"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;->apkBind:Z

    .line 206
    return-void
.end method
