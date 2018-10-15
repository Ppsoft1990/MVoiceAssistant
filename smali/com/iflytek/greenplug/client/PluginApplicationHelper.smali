.class public Lcom/iflytek/greenplug/client/PluginApplicationHelper;
.super Ljava/lang/Object;
.source "PluginApplicationHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginApplicationHelper"

.field private static mHostContext:Landroid/content/Context;

.field private static sApplicationsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static sPluginClassLoaderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static sPluginLoadedApkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginClassLoaderCache:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginLoadedApkCache:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sApplicationsCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLoadedApk(Landroid/content/pm/ComponentInfo;)V
    .locals 11
    .param p0, "pluginInfo"    # Landroid/content/pm/ComponentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v7, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginLoadedApkCache:Ljava/util/Map;

    monitor-enter v7

    .line 154
    :try_start_0
    const-string/jumbo v6, "PluginApplicationHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkLoadedApk begin, pluginInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v6, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Ljava/lang/Object;

    move-result-object v4

    .line 157
    .local v4, "loadedApk":Ljava/lang/Object;
    sget-object v6, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginLoadedApkCache:Ljava/util/Map;

    iget-object v8, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 158
    .local v2, "cachedLoadedApk":Ljava/lang/Object;
    if-ne v2, v4, :cond_1

    .line 159
    const-string/jumbo v6, "PluginApplicationHelper"

    const-string/jumbo v8, "checkLoadedApk, cachedLoadedApk == loadedApk"

    invoke-static {v6, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v6, "mClassLoader"

    invoke-static {v4, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 162
    .local v3, "classloader":Ljava/lang/ClassLoader;
    sget-object v6, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginClassLoaderCache:Ljava/util/Map;

    iget-object v8, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 163
    .local v1, "cachedClassloader":Ljava/lang/ClassLoader;
    if-ne v1, v3, :cond_0

    .line 164
    const-string/jumbo v6, "PluginApplicationHelper"

    const-string/jumbo v8, "checkLoadedApk, cachedClassloader == classloader"

    invoke-static {v6, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v1    # "cachedClassloader":Ljava/lang/ClassLoader;
    .end local v3    # "classloader":Ljava/lang/ClassLoader;
    :goto_0
    monitor-exit v7

    .line 178
    return-void

    .line 166
    .restart local v1    # "cachedClassloader":Ljava/lang/ClassLoader;
    .restart local v3    # "classloader":Ljava/lang/ClassLoader;
    :cond_0
    const-string/jumbo v6, "mClassLoader"

    invoke-static {v4, v6, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string/jumbo v6, "PluginApplicationHelper"

    const-string/jumbo v8, "checkLoadedApk, cachedClassloader != classloader, so reset classloader"

    invoke-static {v6, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v1    # "cachedClassloader":Ljava/lang/ClassLoader;
    .end local v2    # "cachedLoadedApk":Ljava/lang/Object;
    .end local v3    # "classloader":Ljava/lang/ClassLoader;
    .end local v4    # "loadedApk":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 171
    .restart local v2    # "cachedLoadedApk":Ljava/lang/Object;
    .restart local v4    # "loadedApk":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "activityThreadObject":Ljava/lang/Object;
    const-string/jumbo v6, "mPackages"

    invoke-static {v0, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 173
    .local v5, "mPackagesObj":Ljava/lang/Object;
    const-string/jumbo v6, "remove"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v5, v6, v8}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p0}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->makeLoadedApk(Landroid/content/pm/ComponentInfo;)V

    .line 175
    const-string/jumbo v6, "PluginApplicationHelper"

    const-string/jumbo v8, "checkLoadedApk, cachedLoadedApk != loadedApk, so reset loadedApk"

    invoke-static {v6, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getPluginClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginClassLoaderCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getPluginContext(Ljava/lang/String;)Landroid/app/Application;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sApplicationsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public static makeLoadedApk(Landroid/content/pm/ComponentInfo;)V
    .locals 17
    .param p0, "pluginInfo"    # Landroid/content/pm/ComponentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v14, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginLoadedApkCache:Ljava/util/Map;

    monitor-enter v14

    .line 69
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 70
    .local v12, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "activityThreadObject":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 72
    const-string/jumbo v13, "mPackages"

    invoke-static {v1, v13}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 73
    .local v9, "mPackagesObj":Ljava/lang/Object;
    const-string/jumbo v13, "containsKey"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v9, v13, v15}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 74
    .local v5, "containsKeyObj":Ljava/lang/Object;
    instance-of v13, v5, Ljava/lang/Boolean;

    if-eqz v13, :cond_3

    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "containsKeyObj":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_3

    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v13}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Ljava/lang/Object;

    move-result-object v8

    .line 76
    .local v8, "loadedApk":Ljava/lang/Object;
    sget-object v13, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginLoadedApkCache:Ljava/util/Map;

    invoke-interface {v13, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v13, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->mHostContext:Landroid/content/Context;

    invoke-static {v13, v12}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginDalvikCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "optimizedDirectory":Ljava/lang/String;
    sget-object v13, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->mHostContext:Landroid/content/Context;

    invoke-static {v13, v12}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginDalvikCacheUniqueDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "optimizedDirectoryUnique":Ljava/lang/String;
    sget-object v13, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->mHostContext:Landroid/content/Context;

    invoke-static {v13, v12}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginNativeLibraryDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "libraryPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 83
    .local v2, "apk":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 84
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v15, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->mHostContext:Landroid/content/Context;

    invoke-static {v15, v12}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginApkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    if-eqz v2, :cond_2

    .line 88
    const/4 v3, 0x0

    .line 91
    .local v3, "classloader":Ljava/lang/ClassLoader;
    :try_start_1
    new-instance v4, Lcom/iflytek/greenplug/common/PluginClassLoader;

    sget-object v13, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->mHostContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-direct {v4, v2, v11, v7, v13}, Lcom/iflytek/greenplug/common/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "classloader":Ljava/lang/ClassLoader;
    .local v4, "classloader":Ljava/lang/ClassLoader;
    move-object v3, v4

    .line 95
    .end local v4    # "classloader":Ljava/lang/ClassLoader;
    .restart local v3    # "classloader":Ljava/lang/ClassLoader;
    :goto_0
    if-nez v3, :cond_1

    .line 96
    :try_start_2
    invoke-static {v10}, Lcom/iflytek/greenplug/common/PluginDirHelper;->cleanOptimizedDirectory(Ljava/lang/String;)V

    .line 97
    new-instance v3, Lcom/iflytek/greenplug/common/PluginClassLoader;

    .end local v3    # "classloader":Ljava/lang/ClassLoader;
    sget-object v13, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->mHostContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-direct {v3, v2, v11, v7, v13}, Lcom/iflytek/greenplug/common/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 99
    .restart local v3    # "classloader":Ljava/lang/ClassLoader;
    :cond_1
    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :try_start_3
    const-string/jumbo v13, "mClassLoader"

    invoke-static {v8, v13, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :try_start_4
    sget-object v13, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginClassLoaderCache:Ljava/util/Map;

    invoke-interface {v13, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 108
    .end local v3    # "classloader":Ljava/lang/ClassLoader;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-static {v13}, Lcom/iflytek/greenplug/common/utils/compat/ProcessCompat;->setArgV0(Ljava/lang/String;)V

    .line 111
    .end local v2    # "apk":Ljava/lang/String;
    .end local v7    # "libraryPath":Ljava/lang/String;
    .end local v8    # "loadedApk":Ljava/lang/Object;
    .end local v9    # "mPackagesObj":Ljava/lang/Object;
    .end local v10    # "optimizedDirectory":Ljava/lang/String;
    .end local v11    # "optimizedDirectoryUnique":Ljava/lang/String;
    :cond_3
    monitor-exit v14

    .line 112
    return-void

    .line 92
    .restart local v2    # "apk":Ljava/lang/String;
    .restart local v3    # "classloader":Ljava/lang/ClassLoader;
    .restart local v7    # "libraryPath":Ljava/lang/String;
    .restart local v8    # "loadedApk":Ljava/lang/Object;
    .restart local v9    # "mPackagesObj":Ljava/lang/Object;
    .restart local v10    # "optimizedDirectory":Ljava/lang/String;
    .restart local v11    # "optimizedDirectoryUnique":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 93
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "PluginApplicationHelper"

    const-string/jumbo v15, "new PluginClassLoader fail, clean directory and try again"

    invoke-static {v13, v15, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    .end local v1    # "activityThreadObject":Ljava/lang/Object;
    .end local v2    # "apk":Ljava/lang/String;
    .end local v3    # "classloader":Ljava/lang/ClassLoader;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "libraryPath":Ljava/lang/String;
    .end local v8    # "loadedApk":Ljava/lang/Object;
    .end local v9    # "mPackagesObj":Ljava/lang/Object;
    .end local v10    # "optimizedDirectory":Ljava/lang/String;
    .end local v11    # "optimizedDirectoryUnique":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13

    .line 101
    .restart local v1    # "activityThreadObject":Ljava/lang/Object;
    .restart local v2    # "apk":Ljava/lang/String;
    .restart local v3    # "classloader":Ljava/lang/ClassLoader;
    .restart local v7    # "libraryPath":Ljava/lang/String;
    .restart local v8    # "loadedApk":Ljava/lang/Object;
    .restart local v9    # "mPackagesObj":Ljava/lang/Object;
    .restart local v10    # "optimizedDirectory":Ljava/lang/String;
    .restart local v11    # "optimizedDirectoryUnique":Ljava/lang/String;
    .restart local v12    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v13

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static makePluginApplication(Landroid/content/Context;Landroid/content/pm/ComponentInfo;)V
    .locals 4
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "pluginInfo"    # Landroid/content/pm/ComponentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 42
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v1, "PluginApplicationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makePluginApplication begin, pluginInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sput-object p0, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->mHostContext:Landroid/content/Context;

    .line 45
    invoke-static {v0}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->getPluginContext(Ljava/lang/String;)Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 46
    const-string/jumbo v1, "PluginApplicationHelper"

    const-string/jumbo v2, "plugin Application has exist"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->checkLoadedApk(Landroid/content/pm/ComponentInfo;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->makeLoadedApk(Landroid/content/pm/ComponentInfo;)V

    .line 55
    invoke-static {p1}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->realMakeApplication(Landroid/content/pm/ComponentInfo;)V

    goto :goto_0
.end method

.method private static realMakeApplication(Landroid/content/pm/ComponentInfo;)V
    .locals 12
    .param p0, "pluginInfo"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .line 116
    :try_start_0
    iget-object v8, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 117
    .local v8, "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "PluginApplicationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "realMakeApplication begin:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", current thread:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v9, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sPluginLoadedApkCache:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 120
    .local v6, "loadedApk":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 121
    const-string/jumbo v9, "mApplication"

    invoke-static {v6, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 122
    .local v7, "mApplication":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 123
    const-string/jumbo v9, "PluginApplicationHelper"

    const-string/jumbo v10, "application is exist"

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v6    # "loadedApk":Ljava/lang/Object;
    .end local v7    # "mApplication":Ljava/lang/Object;
    .end local v8    # "pkgName":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    .restart local v6    # "loadedApk":Ljava/lang/Object;
    .restart local v7    # "mApplication":Ljava/lang/Object;
    .restart local v8    # "pkgName":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v3, v9

    .line 131
    .local v3, "args":[Ljava/lang/Object;
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-class v10, Landroid/app/Instrumentation;

    aput-object v10, v4, v9

    .line 132
    .local v4, "argsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v9, "makeApplication"

    invoke-static {v6, v9, v3, v4}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    .local v1, "app":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v9, v1, Landroid/app/Application;

    if-eqz v9, :cond_1

    .line 136
    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    move-object v2, v0

    .line 137
    .local v2, "application":Landroid/app/Application;
    sget-object v9, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->sApplicationsCache:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 144
    .end local v1    # "app":Ljava/lang/Object;
    .end local v2    # "application":Landroid/app/Application;
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "argsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "mApplication":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v9, "PluginApplicationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "realMakeApplication end:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v6    # "loadedApk":Ljava/lang/Object;
    .end local v8    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 146
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "PluginApplicationHelper"

    const-string/jumbo v10, "realMakeApplication FAIL"

    invoke-static {v9, v10, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/ProcessUtils;->killCurrentProcess()V

    goto :goto_0
.end method
