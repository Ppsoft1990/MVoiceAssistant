.class public Laoj;
.super Ljava/lang/Object;
.source "SharePluginManager.java"


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ldalvik/system/DexClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "SharePluginManager"

    sput-object v0, Laoj;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Ldalvik/system/DexClassLoader;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 37
    sget-object v9, Laoj;->c:Ldalvik/system/DexClassLoader;

    if-nez v9, :cond_3

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "sdk_plugin_dex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "dexFolder":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v6, "folderFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 41
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "sdk_plugin_dex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ifly_plugin_sharesdk_v0.jar"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "shareDexpath":Ljava/lang/String;
    const-string/jumbo v0, "sdk_plugin/ifly_plugin_sharesdk_v0.jar"

    .line 45
    .local v0, "asset_path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, "desFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 47
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7, v0}, Lcom/iflytek/yd/util/FileManager;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 48
    .local v1, "copySucess":Z
    sget-object v9, Laoj;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sdk not exist, copy from asset -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-nez v1, :cond_1

    .line 66
    .end local v1    # "copySucess":Z
    :goto_0
    return-object v8

    .line 53
    :cond_1
    invoke-static {v7}, Laoj;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 54
    sget-object v9, Laoj;->b:Ljava/lang/String;

    const-string/jumbo v10, "check share sdk sign fail"

    invoke-static {v9, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 58
    :cond_2
    sget-object v9, Laoj;->b:Ljava/lang/String;

    const-string/jumbo v10, "check share sdk sucess"

    invoke-static {v9, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "sdk_plugin_optimized"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 61
    .local v4, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "dirpathString":Ljava/lang/String;
    new-instance v9, Ldalvik/system/DexClassLoader;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v9, v7, v5, v8, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v9, Laoj;->c:Ldalvik/system/DexClassLoader;

    .line 64
    sget-object v8, Laoj;->b:Ljava/lang/String;

    const-string/jumbo v9, "load share sdk sucess"

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_3
    sget-object v8, Laoj;->c:Ldalvik/system/DexClassLoader;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "baseDexClassLoader"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 106
    .local v0, "bc":Ljava/lang/ClassLoader;
    const-string/jumbo v1, "dalvik.system.BaseDexClassLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "pathList"

    invoke-static {p0, v1, v2}, Laoj;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 112
    .local v0, "localField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "arrayLhs"    # Ljava/lang/Object;
    .param p1, "arrayRhs"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 132
    .local v3, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 133
    .local v0, "i":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int v1, v0, v5

    .line 134
    .local v1, "j":I
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 135
    .local v4, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 136
    if-ge v2, v0, :cond_0

    .line 137
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 135
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    sub-int v5, v2, v0

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 142
    :cond_1
    return-object v4
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 126
    .local v0, "localField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static a(Ldalvik/system/DexClassLoader;)Z
    .locals 6
    .param p0, "loader"    # Ldalvik/system/DexClassLoader;

    .prologue
    .line 89
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    check-cast v3, Ldalvik/system/PathClassLoader;

    .line 92
    .local v3, "pathLoader":Ldalvik/system/PathClassLoader;
    :try_start_0
    invoke-static {v3}, Laoj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Laoj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 93
    invoke-static {p0}, Laoj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Laoj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 91
    invoke-static {v4, v5}, Laoj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "dexElements":Ljava/lang/Object;
    invoke-static {v3}, Laoj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "pathList":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "dexElements"

    invoke-static {v2, v4, v5, v0}, Laoj;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v4, 0x1

    .line 100
    .end local v0    # "dexElements":Ljava/lang/Object;
    .end local v2    # "pathList":Ljava/lang/Object;
    :goto_0
    return v4

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Laoj;->b:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->checkJarSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "paramObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "dexElements"

    invoke-static {p0, v0, v1}, Laoj;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 71
    const/4 v2, 0x0

    sput-boolean v2, Laoj;->a:Z

    .line 73
    :try_start_0
    invoke-static {}, Laoj;->a()Ldalvik/system/DexClassLoader;

    move-result-object v0

    .line 74
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Laoj;->a(Ldalvik/system/DexClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v2, 0x1

    sput-boolean v2, Laoj;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Laoj;->b:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
