.class public Lms;
.super Ljava/lang/Object;
.source "BuildInGPCopy.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginType"    # I

    .prologue
    .line 21
    const-string/jumbo v0, "gp_plugin/com.cmcc.viafly.headset.apk"

    .line 23
    .local v0, "asset_path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/download"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "desDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v3, "desFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 29
    :cond_0
    const/16 v6, 0x12d

    invoke-static {v6}, Lasb;->e(I)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "gpPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v4, "gpFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v0}, Lcom/iflytek/yd/util/FileManager;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 38
    .local v1, "copyState":Z
    if-eqz v1, :cond_2

    .end local v5    # "gpPath":Ljava/lang/String;
    :goto_0
    return-object v5

    .restart local v5    # "gpPath":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
