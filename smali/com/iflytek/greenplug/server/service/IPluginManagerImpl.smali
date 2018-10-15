.class public Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;
.super Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;
.source "IPluginManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPluginManagerImpl"


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private mHandle:Landroid/os/Handler;

.field private mHostAppContext:Landroid/content/Context;

.field private mHostRequestedPermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginAction:Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;

.field private mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

.field private mServieMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostRequestedPermission:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mServieMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHandle:Landroid/os/Handler;

    .line 478
    new-instance v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;-><init>(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;)V

    iput-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->conn:Landroid/content/ServiceConnection;

    .line 81
    iput-object p1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getInstance()Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    .line 83
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->init(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->init()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;)Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginAction:Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;)Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;
    .param p1, "x1"    # Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginAction:Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->conn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->deletePackageFromGP(Ljava/lang/String;)V

    return-void
.end method

.method private deletePackageFromGP(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 534
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->forceStopPackage(Ljava/lang/String;)Z

    .line 537
    iget-object v5, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    :try_start_2
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "pluginInstallDir":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteDir(Ljava/lang/String;)V

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginPendingDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "pluginPendingFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    invoke-static {v1}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 552
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->sendUninstalledBroadcast(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 556
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "pluginInstallDir":Ljava/lang/String;
    .end local v3    # "pluginPendingFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 539
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "IPluginManagerImpl"

    const-string/jumbo v5, "deletePackageFromGP error:"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private dexOpt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "apkfile"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 423
    const-string/jumbo v6, "IPluginManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dexOpt begin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 425
    .local v0, "beginTime":J
    invoke-static {p1, p3}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginNativeLibraryDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "libraryPath":Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginDalvikCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "optimizedDirectory":Ljava/lang/String;
    invoke-static {v4}, Lcom/iflytek/greenplug/common/PluginDirHelper;->cleanOptimizedDirectory(Ljava/lang/String;)V

    .line 433
    invoke-static {p1, p3}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginDalvikCacheUniqueDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "optimizedDirectoryUnique":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/greenplug/common/PluginClassLoader;

    iget-object v6, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v2, p2, v5, v3, v6}, Lcom/iflytek/greenplug/common/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 439
    .local v2, "classloader":Lcom/iflytek/greenplug/common/PluginClassLoader;
    const-string/jumbo v6, "IPluginManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dexOpt end, duration time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private getSignature(Ljava/lang/String;Landroid/content/pm/PackageManager;)[Landroid/content/pm/Signature;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x40

    .line 923
    invoke-virtual {p0, p1, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 924
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 925
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 927
    :cond_0
    if-nez v0, :cond_1

    .line 928
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 930
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object v1
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 561
    new-instance v0, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v0, p1}, Landroid/os/RemoteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 563
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 569
    :goto_0
    throw v0

    .line 565
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 566
    .restart local v0    # "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v0, p1}, Landroid/os/RemoteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 567
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 89
    const-string/jumbo v2, "IPluginManagerImpl"

    const-string/jumbo v3, "IPluginManagerImpl init begin"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    .local v0, "beginTime":J
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->loadHostRequestedPermission()V

    .line 96
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->installPendingPackages()V

    .line 99
    invoke-direct {p0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->loadInstalledPlugins()V

    .line 103
    const-string/jumbo v2, "IPluginManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IPluginManagerImpl init end, duration time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private installPendingPackages()V
    .locals 10

    .prologue
    .line 123
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginPendingDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "pendingDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 125
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-gtz v5, :cond_1

    .line 141
    :cond_0
    return-void

    .line 128
    :cond_1
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 129
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->installPackage(Ljava/lang/String;)I

    move-result v4

    .line 132
    .local v4, "result":I
    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v7

    if-ne v4, v7, :cond_2

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v4    # "result":I
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "IPluginManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error for installPendingPackages: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private installPresetPackages()V
    .locals 10

    .prologue
    .line 234
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string/jumbo v6, "gpplugins"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 239
    .local v4, "files":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-gtz v5, :cond_1

    .line 259
    .end local v4    # "files":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "IPluginManagerImpl"

    const-string/jumbo v6, "installPresetPackages error"

    invoke-static {v5, v6, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 242
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v4    # "files":[Ljava/lang/String;
    :cond_1
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v3, v4, v5

    .line 243
    .local v3, "fileName":Ljava/lang/String;
    const-string/jumbo v7, ".apk"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 245
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "gpplugins"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 246
    .local v0, "assetsInput":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "dest":Ljava/lang/String;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/iflytek/greenplug/common/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->installPackage(Ljava/lang/String;)I

    .line 253
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .end local v0    # "assetsInput":Ljava/io/InputStream;
    .end local v1    # "dest":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 254
    :catch_1
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "IPluginManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error for installPresetPackages: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private loadHostRequestedPermission()V
    .locals 8

    .prologue
    .line 108
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostRequestedPermission:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 109
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 110
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 111
    .local v2, "pms":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 112
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 113
    .local v3, "requestedPermission":Ljava/lang/String;
    iget-object v7, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostRequestedPermission:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pms":Landroid/content/pm/PackageInfo;
    .end local v3    # "requestedPermission":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "IPluginManagerImpl"

    const-string/jumbo v5, "loadHostRequestedPermission error"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private loadInstalledPlugins()V
    .locals 28

    .prologue
    .line 147
    const-string/jumbo v22, "IPluginManagerImpl"

    const-string/jumbo v23, "loadInstalledPlugins begin"

    invoke-static/range {v22 .. v23}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 150
    .local v6, "b":J
    const/4 v4, 0x0

    .line 152
    .local v4, "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v4    # "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .local v5, "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :try_start_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v12, "baseDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 155
    .local v15, "dirs":[Ljava/io/File;
    if-eqz v15, :cond_1

    array-length v0, v15

    move/from16 v22, v0

    if-lez v22, :cond_1

    .line 156
    array-length v0, v15

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    aget-object v14, v15, v22

    .line 157
    .local v14, "dir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 158
    new-instance v17, Ljava/io/File;

    const-string/jumbo v24, "apk/base-1.apk"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 156
    .end local v17    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .end local v14    # "dir":Ljava/io/File;
    :cond_1
    move-object v4, v5

    .line 169
    .end local v5    # "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v12    # "baseDir":Ljava/io/File;
    .end local v15    # "dirs":[Ljava/io/File;
    .restart local v4    # "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :goto_1
    const-string/jumbo v22, "IPluginManagerImpl"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "scan plugin dir cost ms: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v6

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_4

    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    .line 174
    .local v19, "pluginFile":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 176
    .local v8, "b1":J
    :try_start_2
    const-string/jumbo v23, "IPluginManagerImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "loadInstalledPlugin begin:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v20, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 180
    .local v20, "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 182
    .local v21, "pluginPkg":Ljava/lang/String;
    const-string/jumbo v23, "IPluginManagerImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "parse plugin: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " cost ms:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v8

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v13, 0x1

    .line 200
    .local v13, "checkResult":Z
    if-eqz v13, :cond_3

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->startPluginInBackground(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :cond_2
    :goto_3
    const-string/jumbo v23, "IPluginManagerImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "loadInstalledPlugin end: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " cost ms:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v8

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 165
    .end local v8    # "b1":J
    .end local v13    # "checkResult":Z
    .end local v19    # "pluginFile":Ljava/io/File;
    .end local v20    # "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    .end local v21    # "pluginPkg":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 166
    .local v16, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v22, "IPluginManagerImpl"

    const-string/jumbo v23, "scan a apk file error"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 208
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "b1":J
    .restart local v13    # "checkResult":Z
    .restart local v19    # "pluginFile":Ljava/io/File;
    .restart local v20    # "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    .restart local v21    # "pluginPkg":Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 209
    .local v18, "pluginDir":Ljava/lang/String;
    const-string/jumbo v23, "IPluginManagerImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "check permission fail, so delete plugin file:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 211
    .local v10, "b2":J
    invoke-static/range {v18 .. v18}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteDir(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v23, "IPluginManagerImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "deleteDir plugin: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", cost ms:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v10

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 214
    .end local v10    # "b2":J
    .end local v13    # "checkResult":Z
    .end local v18    # "pluginDir":Ljava/lang/String;
    .end local v20    # "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    .end local v21    # "pluginPkg":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 215
    .local v16, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v23, "IPluginManagerImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "loadInstalledPlugin error:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    const-string/jumbo v23, "IPluginManagerImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "loadInstalledPlugin end: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " cost ms:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v8

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v16    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v22

    const-string/jumbo v23, "IPluginManagerImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "loadInstalledPlugin end: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " cost ms:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v8

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v22

    .line 222
    .end local v8    # "b1":J
    .end local v19    # "pluginFile":Ljava/io/File;
    :cond_4
    const-string/jumbo v22, "IPluginManagerImpl"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "loadInstalledPlugins end, all cost time:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v6

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 165
    .end local v4    # "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v5    # "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :catch_2
    move-exception v16

    move-object v4, v5

    .end local v5    # "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v4    # "apkfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    goto/16 :goto_4
.end method

.method private sendInstalledBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.greenplug.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    return-void
.end method

.method private sendUninstalledBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.greenplug.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method private startPluginInBackground(Ljava/lang/String;)V
    .locals 8
    .param p1, "pluginPkgName"    # Ljava/lang/String;

    .prologue
    .line 398
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.iflytek.greenplug.BACKGROUND_START"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 402
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v4, "IPluginManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPluginInBackground check, queryIntentServices is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 405
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 406
    .local v3, "targetInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 409
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHandle:Landroid/os/Handler;

    new-instance v5, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$1;

    invoke-direct {v5, p0, v2}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$1;-><init>(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;Landroid/content/Intent;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "targetInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "IPluginManagerImpl"

    const-string/jumbo v5, "startPluginInBackground error"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mServieMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string/jumbo v0, "IPluginManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public bindStubActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "pluginActivityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->bindStubActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindStubReceiver(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "pluginReceiverInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->bindStubReceiver(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindStubService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->bindStubService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v9, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 861
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    new-array v7, v9, [Landroid/content/pm/Signature;

    .line 863
    .local v7, "signatures1":[Landroid/content/pm/Signature;
    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->getSignature(Ljava/lang/String;Landroid/content/pm/PackageManager;)[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 867
    const/4 v9, 0x0

    new-array v8, v9, [Landroid/content/pm/Signature;

    .line 869
    .local v8, "signatures2":[Landroid/content/pm/Signature;
    :try_start_1
    invoke-direct {p0, p2, v4}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->getSignature(Ljava/lang/String;Landroid/content/pm/PackageManager;)[Landroid/content/pm/Signature;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 873
    if-eqz v7, :cond_0

    array-length v9, v7

    if-lez v9, :cond_0

    const/4 v2, 0x1

    .line 874
    .local v2, "pkg1Signed":Z
    :goto_0
    if-eqz v8, :cond_1

    array-length v9, v8

    if-lez v9, :cond_1

    const/4 v3, 0x1

    .line 876
    .local v3, "pkg2Signed":Z
    :goto_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 877
    const/4 v9, 0x1

    .line 893
    .end local v2    # "pkg1Signed":Z
    .end local v3    # "pkg2Signed":Z
    .end local v8    # "signatures2":[Landroid/content/pm/Signature;
    :goto_2
    return v9

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, -0x4

    goto :goto_2

    .line 870
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "signatures2":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v0

    .line 871
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, -0x4

    goto :goto_2

    .line 873
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 874
    .restart local v2    # "pkg1Signed":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 878
    .restart local v3    # "pkg2Signed":Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 879
    const/4 v9, -0x1

    goto :goto_2

    .line 880
    :cond_3
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    .line 881
    const/4 v9, -0x2

    goto :goto_2

    .line 883
    :cond_4
    array-length v9, v7

    array-length v10, v8

    if-ne v9, v10, :cond_7

    .line 884
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v9, v7

    if-ge v1, v9, :cond_6

    .line 885
    aget-object v5, v7, v1

    .line 886
    .local v5, "s1":Landroid/content/pm/Signature;
    aget-object v6, v8, v1

    .line 887
    .local v6, "s2":Landroid/content/pm/Signature;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_5

    .line 888
    const/4 v9, -0x3

    goto :goto_2

    .line 884
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 891
    .end local v5    # "s1":Landroid/content/pm/Signature;
    .end local v6    # "s2":Landroid/content/pm/Signature;
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 893
    .end local v1    # "i":I
    :cond_7
    const/4 v9, -0x3

    goto :goto_2
.end method

.method public clearApplicationUserData(Ljava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v3, 0x0

    .line 790
    .local v3, "success":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 804
    if-eqz p2, :cond_0

    .line 805
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    .local v2, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-nez v2, :cond_2

    .line 804
    if-eqz p2, :cond_0

    .line 805
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 798
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v4}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 799
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteDir(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 800
    const/4 v3, 0x1

    .line 804
    if-eqz p2, :cond_0

    .line 805
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 801
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :catch_0
    move-exception v1

    .line 802
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 804
    if-eqz p2, :cond_0

    .line 805
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 804
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz p2, :cond_3

    .line 805
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_3
    throw v4
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    const/4 v3, 0x0

    .line 766
    .local v3, "success":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 780
    if-eqz p2, :cond_0

    .line 781
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    .local v2, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-nez v2, :cond_2

    .line 780
    if-eqz p2, :cond_0

    .line 781
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 774
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v4}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 775
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v6, "caches"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteDir(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 776
    const/4 v3, 0x1

    .line 780
    if-eqz p2, :cond_0

    .line 781
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 777
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 780
    if-eqz p2, :cond_0

    .line 781
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 780
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz p2, :cond_3

    .line 781
    invoke-interface {p2, p1, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_3
    throw v4
.end method

.method public deletePackage(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 502
    :try_start_0
    const-string/jumbo v4, "IPluginManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deletePackage begin, packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.iflytek.greenplug.BACKGROUND_DELETE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v4, "IPluginManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deletePluginInBackground check, queryIntentServices is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 511
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 512
    .local v3, "targetInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 513
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->conn:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 519
    .end local v3    # "targetInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    const-string/jumbo v4, "IPluginManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deletePackage end, packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v4

    .line 528
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return v4

    .line 516
    .restart local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->deletePackageFromGP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 526
    const-string/jumbo v4, "IPluginManagerImpl"

    const-string/jumbo v5, "deletePackage error:"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v4

    goto :goto_1

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_SUCH_PLUGIN:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1
.end method

.method public forceStopPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pluginPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->stopPluginService(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0, p1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->killBackgroundProcesses(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 601
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 602
    .local v1, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {v1, p1, p2}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 608
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :goto_0
    return-object v2

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 608
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllPackageInfos(I)Ljava/util/List;
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 721
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v3, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 722
    .local v2, "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    invoke-virtual {v2, p1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 728
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 813
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 814
    .local v1, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {v1, p2}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 820
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :goto_0
    return-object v2

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 820
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBindingPluginServiceComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "stubServiceInfo"    # Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getBindingPluginServiceComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getBindingStubActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "pluginActivityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getBindingStubActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 734
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v3, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 736
    .local v2, "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    invoke-virtual {v2, p1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 739
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 742
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1053
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1054
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public getMyPid()I
    .locals 1

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 575
    if-eqz p1, :cond_1

    .line 576
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 577
    .local v3, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v3, :cond_1

    .line 578
    invoke-virtual {v3, p2}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 579
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_0

    .line 580
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->collectCertificates(I)V

    .line 581
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 582
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPackageNameByPid(I)Ljava/util/List;
    .locals 2
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 941
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v1, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getPackageNamesByPid(I)Ljava/util/List;

    move-result-object v0

    .line 942
    .local v0, "packageNameByProcessName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 943
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 945
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 913
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessNameByPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 640
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 641
    .local v1, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v1, :cond_0

    .line 642
    invoke-virtual {v1, p1, p2}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 647
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :goto_0
    return-object v2

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 614
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 615
    .local v1, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v1, :cond_0

    .line 616
    invoke-virtual {v1, p1, p2}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 621
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :goto_0
    return-object v2

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getReceiverIntentFilter(Landroid/content/pm/ActivityInfo;)Ljava/util/List;
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 843
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 844
    .local v2, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v2, :cond_0

    .line 845
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getReceiverIntentFilter(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 846
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 847
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 850
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    .end local v2    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    .line 853
    .local v3, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RemoteException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 854
    throw v3
.end method

.method public getReceivers(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 826
    if-eqz p1, :cond_0

    .line 827
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 828
    .local v1, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v1, :cond_0

    .line 829
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :goto_0
    return-object v3

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    .line 834
    .local v2, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RemoteException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 835
    throw v2

    .line 837
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "remoteException":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 980
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mServieMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 981
    .local v0, "binder":Landroid/os/IBinder;
    const-string/jumbo v1, "IPluginManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gerService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 627
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 628
    .local v1, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {v1, p1, p2}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 634
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :goto_0
    return-object v2

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 634
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public installPackage(Ljava/lang/String;)I
    .locals 22
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v4, 0x0

    .line 265
    .local v4, "apkfile":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v17, "IPluginManagerImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "installPackage begin, srcFilePath:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 269
    .local v6, "beginTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 270
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/16 v17, 0x1080

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 271
    .local v9, "info":Landroid/content/pm/PackageInfo;
    if-nez v9, :cond_0

    .line 272
    const-string/jumbo v17, "IPluginManagerImpl"

    const-string/jumbo v18, "installPackage fail\uff0cinvalid apk"

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v17, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_INVALID_APK:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v17

    .line 364
    .end local v6    # "beginTime":J
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v17

    .line 290
    .restart local v6    # "beginTime":J
    .restart local v9    # "info":Landroid/content/pm/PackageInfo;
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 293
    .local v13, "oldVersion":Ljava/lang/String;
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 294
    .local v12, "newVersion":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 296
    const-string/jumbo v17, "IPluginManagerImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "installPackage fail, plugin version:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " is already exists"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v17, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_ALREADY_EXISTS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v17

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->isPluginRunning(Ljava/lang/String;)Z

    move-result v10

    .line 304
    .local v10, "isStarted":Z
    if-eqz v10, :cond_5

    .line 306
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 307
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_4

    const-string/jumbo v17, "plugin_force_update"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 308
    const-string/jumbo v17, "IPluginManagerImpl"

    const-string/jumbo v18, "force update begin"

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->forceStopPackage(Ljava/lang/String;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v10    # "isStarted":Z
    .end local v12    # "newVersion":Ljava/lang/String;
    .end local v13    # "oldVersion":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginApkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/iflytek/greenplug/common/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginNativeLibraryDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 336
    .local v11, "nativeLibraryDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v19}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->copyNativeBinaries(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)I

    move-result v17

    if-gez v17, :cond_6

    .line 338
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 339
    const-string/jumbo v17, "IPluginManagerImpl"

    const-string/jumbo v18, "installPackage fail, copy so fail"

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v17, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_SUPPORTED_ABI:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    goto/16 :goto_0

    .line 314
    .end local v11    # "nativeLibraryDir":Ljava/lang/String;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "isStarted":Z
    .restart local v12    # "newVersion":Ljava/lang/String;
    .restart local v13    # "oldVersion":Ljava/lang/String;
    :catchall_0
    move-exception v17

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 359
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "beginTime":J
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "isStarted":Z
    .end local v12    # "newVersion":Ljava/lang/String;
    .end local v13    # "oldVersion":Ljava/lang/String;
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v8

    .line 360
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_3

    .line 361
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 363
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 364
    sget-object v17, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v17

    goto/16 :goto_0

    .line 317
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "beginTime":J
    .restart local v9    # "info":Landroid/content/pm/PackageInfo;
    .restart local v10    # "isStarted":Z
    .restart local v12    # "newVersion":Ljava/lang/String;
    .restart local v13    # "oldVersion":Ljava/lang/String;
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginPendingDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 318
    .local v15, "pendingDir":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ".apk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v17, "IPluginManagerImpl"

    const-string/jumbo v18, "installPackage end, plugin is running, so pending the new apk file"

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v17, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_DELAY:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v17

    goto/16 :goto_0

    .line 324
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v15    # "pendingDir":Ljava/lang/String;
    :cond_5
    const-string/jumbo v17, "IPluginManagerImpl"

    const-string/jumbo v18, "installPackage continue, plugin is not running, so override old plugin"

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    .end local v10    # "isStarted":Z
    .end local v12    # "newVersion":Ljava/lang/String;
    .end local v13    # "oldVersion":Ljava/lang/String;
    .restart local v11    # "nativeLibraryDir":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->dexOpt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v14, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 349
    .local v14, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->sendInstalledBroadcast(Ljava/lang/String;)V

    .line 355
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->startPluginInBackground(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v17, "IPluginManagerImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "installPackage success, duration time:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v17, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v17

    goto/16 :goto_0
.end method

.method public isPluginPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPluginRunning(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 456
    const-string/jumbo v5, "IPluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPluginRunning begin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v3, 0x0

    .line 458
    .local v3, "result":Z
    iget-object v5, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 459
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 460
    .local v4, "runningInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 461
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 462
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_0

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 464
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 465
    const-string/jumbo v5, "IPluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "plugin running in process pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",pkgList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v3, 0x1

    .line 473
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "list":Ljava/util/List;
    :cond_1
    const-string/jumbo v5, "IPluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPluginRunning end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return v3
.end method

.method public killApplicationProcess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pluginPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->killBackgroundProcesses(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pluginPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/iflytek/greenplug/common/utils/ProcessUtils;->killBackgroundProcesses(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->activity:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v1, v2, p1, v3, p3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->resolveIntent(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 671
    :goto_0
    return-object v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 671
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->provider:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v1, v2, p1, v3, p3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->resolveIntent(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 714
    :goto_0
    return-object v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 714
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->receiver:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v1, v2, p1, v3, p3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->resolveIntent(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 681
    :goto_0
    return-object v1

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 681
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->service:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v1, v2, p1, v3, p3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->resolveIntent(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 704
    :goto_0
    return-object v1

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 704
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerApplicationCallback(Ljava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;)Z
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->registerApplicationCallback(IILjava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;)Z

    move-result v0

    return v0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 748
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 749
    .local v1, "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    invoke-virtual {v1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getProviders()Ljava/util/List;

    move-result-object v3

    .line 750
    .local v3, "providerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 751
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 759
    .end local v1    # "pluginPackageParser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    .end local v2    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v3    # "providerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :goto_0
    return-object v2

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 759
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v2, v4, p1, v5, p3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->resolveIntent(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;I)Ljava/util/List;

    move-result-object v1

    .line 655
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 656
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-object v2

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v3

    .line 661
    goto :goto_0
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 687
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mInstalledPlugins:Ljava/util/Map;

    sget-object v4, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->service:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v2, v3, p1, v4, p3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->resolveIntent(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;I)Ljava/util/List;

    move-result-object v1

    .line 688
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 689
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v2

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1030
    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1035
    :goto_0
    return v1

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 1035
    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v1

    goto :goto_0
.end method

.method public startService(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mHostAppContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1042
    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1047
    :goto_0
    return v1

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->handleException(Ljava/lang/Exception;)V

    .line 1047
    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v1

    goto :goto_0
.end method

.method public unBindStubActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "pluginActivityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->unBindStubActivity(Landroid/content/pm/ActivityInfo;)V

    .line 1004
    return-void
.end method

.method public unBindStubService(Landroid/content/pm/ServiceInfo;)V
    .locals 1
    .param p1, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->mPluginProcessManager:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->unBindStubService(Landroid/content/pm/ServiceInfo;)V

    .line 1019
    return-void
.end method
