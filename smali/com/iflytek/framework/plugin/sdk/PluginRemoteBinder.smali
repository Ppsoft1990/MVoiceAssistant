.class Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;
.super Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;
.source "PluginRemoteBinder.java"


# static fields
.field private static final ASSET_PLUGIN_FILE:Ljava/lang/String; = "plugin.ini"

.field private static final TAG:Ljava/lang/String; = "PluginRemoteBinder"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlugin:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;->getInstance()Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;->mPlugin:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    .line 30
    return-void
.end method

.method private parseAssetsIniFile()[B
    .locals 10

    .prologue
    .line 41
    const/4 v5, 0x0

    .line 42
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 43
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 45
    .local v7, "ret":[B
    :try_start_0
    iget-object v8, p0, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string/jumbo v9, "plugin.ini"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v2, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x1000

    :try_start_1
    new-array v0, v8, [B

    .line 50
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "n":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 51
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 55
    .end local v0    # "b":[B
    .end local v6    # "n":I
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 56
    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    if-eqz v5, :cond_0

    .line 60
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 62
    :cond_0
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 70
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v7

    .line 53
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "n":I
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    move-object v1, v2

    .line 59
    .end local v0    # "b":[B
    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "n":I
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    if-eqz v5, :cond_4

    .line 60
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 62
    :cond_4
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 65
    :catch_1
    move-exception v4

    .line 66
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 65
    .end local v4    # "e1":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 66
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 58
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 59
    :goto_3
    if-eqz v5, :cond_5

    .line 60
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 62
    :cond_5
    if-eqz v1, :cond_6

    .line 63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 67
    :cond_6
    :goto_4
    throw v8

    .line 65
    :catch_3
    move-exception v4

    .line 66
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 58
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e1":Ljava/io/IOException;
    .restart local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 55
    :catch_4
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public getEnterPluginIntent()Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;->mPlugin:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;->getCommunication()Lcom/iflytek/framework/plugin/sdk/PluginCommunication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;->mPlugin:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;->getCommunication()Lcom/iflytek/framework/plugin/sdk/PluginCommunication;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/sdk/PluginCommunication;->getEnterPluginIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginInfo()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;->parseAssetsIniFile()[B

    move-result-object v0

    return-object v0
.end method

.method public onVersionCheck(Z)V
    .locals 3
    .param p1, "checkResult"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    const-string/jumbo v0, "PluginRemoteBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVersionCheck check result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;->mPlugin:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;->getCommunication()Lcom/iflytek/framework/plugin/sdk/PluginCommunication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/iflytek/framework/plugin/sdk/PluginRemoteBinder;->mPlugin:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;->getCommunication()Lcom/iflytek/framework/plugin/sdk/PluginCommunication;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/framework/plugin/sdk/PluginCommunication;->onPluginVersionCheck(Z)V

    .line 79
    :cond_0
    return-void
.end method
