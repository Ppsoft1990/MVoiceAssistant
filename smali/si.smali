.class public Lsi;
.super Ljava/lang/Object;
.source "AliPayPluginManager.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ldalvik/system/DexClassLoader;

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "AliPayPluginManager"

    sput-object v0, Lsi;->a:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "ifly_plugin_alipay.jar"

    sput-object v0, Lsi;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lsj;
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 24
    const-class v11, Lsi;

    monitor-enter v11

    :try_start_0
    sget-object v12, Lsi;->c:Ldalvik/system/DexClassLoader;

    if-nez v12, :cond_3

    .line 25
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "sdk_plugin_dex"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "dexFolder":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v9, "folderFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 28
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "sdk_plugin_dex"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lsi;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "alipayDexpath":Ljava/lang/String;
    const-string/jumbo v2, "sdk_plugin/ifly_plugin_alipay.jar"

    .line 32
    .local v2, "asset_path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v4, "desFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 34
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v0, v2}, Lcom/iflytek/yd/util/FileManager;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 35
    .local v3, "copySucess":Z
    sget-object v12, Lsi;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sdk not exist, copy from asset -- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-nez v3, :cond_1

    move-object v1, v10

    .line 62
    .end local v3    # "copySucess":Z
    :goto_0
    monitor-exit v11

    return-object v1

    .line 40
    :cond_1
    :try_start_1
    invoke-static {v0}, Lsi;->a(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 41
    sget-object v12, Lsi;->a:Ljava/lang/String;

    const-string/jumbo v13, "check alipay sdk sign fail"

    invoke-static {v12, v13}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object v1, v10

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    sget-object v12, Lsi;->a:Ljava/lang/String;

    const-string/jumbo v13, "check alipay sdk sign sucess"

    invoke-static {v12, v13}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "sdk_plugin_optimized"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 48
    .local v6, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, "dirpathString":Ljava/lang/String;
    new-instance v12, Ldalvik/system/DexClassLoader;

    const/4 v13, 0x0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-direct {v12, v0, v7, v13, v14}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v12, Lsi;->c:Ldalvik/system/DexClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_3
    :try_start_2
    sget-object v12, Lsi;->d:Ljava/lang/Class;

    if-nez v12, :cond_4

    .line 55
    sget-object v12, Lsi;->c:Ldalvik/system/DexClassLoader;

    const-string/jumbo v13, "com.iflytek.plugin.impl.alipay.AlipayInterfaceImpl"

    invoke-virtual {v12, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lsi;->d:Ljava/lang/Class;

    .line 57
    :cond_4
    sget-object v12, Lsi;->d:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsj;

    .line 58
    .local v1, "alipayTask":Lsj;
    sget-object v12, Lsi;->a:Ljava/lang/String;

    const-string/jumbo v13, "alipay sdk init success"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 60
    .end local v1    # "alipayTask":Lsj;
    :catch_0
    move-exception v8

    .line 61
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v12, Lsi;->a:Ljava/lang/String;

    const-string/jumbo v13, "alipay sdk init fail : "

    invoke-static {v12, v13, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v10

    .line 62
    goto :goto_0

    .line 24
    .end local v0    # "alipayDexpath":Ljava/lang/String;
    .end local v2    # "asset_path":Ljava/lang/String;
    .end local v4    # "desFile":Ljava/io/File;
    .end local v6    # "dexOutputDir":Ljava/io/File;
    .end local v7    # "dirpathString":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "folderFile":Ljava/io/File;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->checkJarSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
