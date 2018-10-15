.class public Lcom/iflytek/greenplug/client/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "com.iflytek.greenplug.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "com.iflytek.greenplug.PACKAGE_REMOVED"

.field private static final TAG:Ljava/lang/String; = "PluginManager"

.field private static final mInstance:Lcom/iflytek/greenplug/client/PluginManager;


# instance fields
.field private mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mHostContext:Landroid/content/Context;

.field private mInitListener:Lcom/iflytek/greenplug/client/InitListener;

.field private mInited:Z

.field private mInstalledPackageInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHostProcess:Z

.field private mIsPluginProcess:Z

.field private mOnceConnected:Z

.field private mParsed:Z

.field private mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

.field private mRealProcessName:Ljava/lang/String;

.field private mTaskListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/iflytek/greenplug/client/GPTask;",
            "Lcom/iflytek/greenplug/client/TaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/iflytek/greenplug/client/GPTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskQueueWaitLock:Ljava/lang/Object;

.field private mWaitLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/iflytek/greenplug/client/PluginManager;

    invoke-direct {v0}, Lcom/iflytek/greenplug/client/PluginManager;-><init>()V

    sput-object v0, Lcom/iflytek/greenplug/client/PluginManager;->mInstance:Lcom/iflytek/greenplug/client/PluginManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskListenerMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskQueueWaitLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 82
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mParsed:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    .line 390
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/client/PluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/iflytek/greenplug/client/PluginManager;->handleTaskQueue()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/greenplug/client/PluginManager;)Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/greenplug/client/PluginManager;Lcom/iflytek/greenplug/client/GPTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/PluginManager;
    .param p1, "x1"    # Lcom/iflytek/greenplug/client/GPTask;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/PluginManager;->runAsyncTask(Lcom/iflytek/greenplug/client/GPTask;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/iflytek/greenplug/client/PluginManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/iflytek/greenplug/client/PluginManager;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/iflytek/greenplug/client/PluginManager;->mInstance:Lcom/iflytek/greenplug/client/PluginManager;

    return-object v0
.end method

.method private handleBlacklistPackages()V
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/iflytek/greenplug/common/Env;->PACKAGES_BLACK_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 386
    sget-object v1, Lcom/iflytek/greenplug/common/Env;->PACKAGES_BLACK_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/client/PluginManager;->deletePackage(Ljava/lang/String;)I

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method private handleTaskQueue()V
    .locals 9

    .prologue
    .line 313
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/greenplug/client/GPTask;

    .local v4, "task":Lcom/iflytek/greenplug/client/GPTask;
    if-eqz v4, :cond_0

    .line 314
    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask;->getTaskResult()Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v5

    .line 315
    .local v5, "taskResultCODE":I
    sget-object v6, Lcom/iflytek/greenplug/client/PluginManager$7;->a:[I

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask;->getTaskType()Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 352
    :goto_1
    :pswitch_0
    invoke-virtual {v4, v5}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 356
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskQueueWaitLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    :try_start_2
    iget-object v6, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskQueueWaitLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 358
    const-string/jumbo v6, "PluginManager"

    const-string/jumbo v8, "handleTaskQueue mTaskQueueWaitLock notifyAll success."

    invoke-static {v6, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "PluginManager"

    const-string/jumbo v7, "handleTaskQueue mTaskQueueWaitLock notifyAll error:"

    invoke-static {v6, v7, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "task":Lcom/iflytek/greenplug/client/GPTask;
    .end local v5    # "taskResultCODE":I
    :catch_1
    move-exception v1

    .line 366
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PluginManager"

    const-string/jumbo v7, "handleTaskQueue error"

    invoke-static {v6, v7, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 320
    .restart local v4    # "task":Lcom/iflytek/greenplug/client/GPTask;
    .restart local v5    # "taskResultCODE":I
    :pswitch_1
    :try_start_5
    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask;->getTaskParam()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v0, v6, v7

    check-cast v0, Ljava/lang/String;

    .line 321
    .local v0, "apkfile":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/iflytek/greenplug/client/PluginManager;->installPackage(Ljava/lang/String;)I

    move-result v5

    .line 322
    goto :goto_1

    .line 325
    .end local v0    # "apkfile":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask;->getTaskParam()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 326
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/iflytek/greenplug/client/PluginManager;->deletePackage(Ljava/lang/String;)I

    move-result v5

    .line 327
    goto :goto_1

    .line 330
    .end local v3    # "packageName":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask;->getTaskParam()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 331
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/iflytek/greenplug/client/PluginManager;->startPackage(Ljava/lang/String;)I

    move-result v5

    .line 332
    goto :goto_1

    .line 335
    .end local v3    # "packageName":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask;->getTaskParam()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v2, v6, v7

    check-cast v2, Landroid/content/Intent;

    .line 336
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/iflytek/greenplug/client/PluginManager;->startActivity(Landroid/content/Intent;)I

    move-result v5

    .line 337
    goto :goto_1

    .line 340
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask;->getTaskParam()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v2, v6, v7

    check-cast v2, Landroid/content/Intent;

    .line 341
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/iflytek/greenplug/client/PluginManager;->startService(Landroid/content/Intent;)I

    move-result v5

    .line 342
    goto :goto_1

    .line 345
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_6
    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask;->getTaskParam()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 346
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/iflytek/greenplug/client/PluginManager;->forceStopPackage(Ljava/lang/String;)I

    move-result v5

    .line 347
    goto/16 :goto_1

    .line 364
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "taskResultCODE":I
    :cond_0
    const-string/jumbo v6, "PluginManager"

    const-string/jumbo v7, "handleTaskQueue end..."

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parseInstalledPackages()V
    .locals 8

    .prologue
    .line 201
    :try_start_0
    iget-boolean v5, p0, Lcom/iflytek/greenplug/client/PluginManager;->mParsed:Z

    if-nez v5, :cond_2

    .line 202
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 204
    .local v2, "dirs":[Ljava/io/File;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 205
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 206
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "apk/base-1.apk"

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    invoke-direct {p0, v4}, Lcom/iflytek/greenplug/client/PluginManager;->parsePackage(Ljava/lang/Object;)V

    .line 205
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "dir":Ljava/io/File;
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/iflytek/greenplug/client/PluginManager;->mParsed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v2    # "dirs":[Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 217
    :catch_0
    move-exception v3

    .line 218
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PluginManager"

    const-string/jumbo v6, "scan a apk file error"

    invoke-static {v5, v6, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private parsePackage(Ljava/lang/Object;)V
    .locals 14
    .param p1, "apk"    # Ljava/lang/Object;

    .prologue
    .line 166
    :try_start_0
    instance-of v10, p1, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 167
    new-instance v4, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "apk":Ljava/lang/Object;
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, "apkFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 177
    .local v2, "a":J
    iget-object v10, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 179
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 180
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 181
    .local v9, "packageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    iget-object v10, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 183
    iget-object v10, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    iget-object v10, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 189
    .local v6, "b":J
    const-string/jumbo v10, "PluginManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mInstalledPackageInfoMap cost \uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v2    # "a":J
    .end local v4    # "apkFile":Ljava/io/File;
    .end local v6    # "b":J
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 168
    .restart local p1    # "apk":Ljava/lang/Object;
    :cond_2
    instance-of v10, p1, Ljava/io/File;

    if-eqz v10, :cond_3

    .line 169
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v4    # "apkFile":Ljava/io/File;
    goto :goto_0

    .line 171
    .end local v4    # "apkFile":Ljava/io/File;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "apkFile":Ljava/io/File;
    goto :goto_0

    .line 186
    .end local p1    # "apk":Ljava/lang/Object;
    .restart local v2    # "a":J
    .restart local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 191
    .end local v2    # "a":J
    .end local v4    # "apkFile":Ljava/io/File;
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 192
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PluginManager"

    const-string/jumbo v11, "parsePackage error"

    invoke-static {v10, v11, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private runAsyncTask(Lcom/iflytek/greenplug/client/GPTask;)I
    .locals 6
    .param p1, "task"    # Lcom/iflytek/greenplug/client/GPTask;

    .prologue
    .line 418
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/PluginManager;->connectToService()V

    .line 423
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskQueueWaitLock:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    :try_start_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v3, "runAsyncTask mTaskQueueWaitLock wait."

    invoke-static {v1, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mTaskQueueWaitLock:Ljava/lang/Object;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "runAsyncTask mTaskQueueWaitLock restart."

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/greenplug/client/GPTask;->getTaskResult()Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v1

    return v1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 432
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 681
    :goto_0
    return-void

    .line 676
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "addService fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "addService error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bindStubActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1101
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->bindStubActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1109
    :goto_0
    return-object v1

    .line 1104
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "bindStubActivity fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "bindStubActivity error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bindStubReceiver(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "pluginReceiverInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1177
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->bindStubReceiver(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1185
    :goto_0
    return-object v1

    .line 1180
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "bindStubReceiver fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "bindStubReceiver error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bindStubService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 1139
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->bindStubService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1147
    :goto_0
    return-object v1

    .line 1142
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "bindStubService fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "bindStubService error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Ljava/lang/Object;

    .prologue
    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    new-instance v2, Lcom/iflytek/greenplug/client/PluginManager$6;

    invoke-direct {v2, p0, p2}, Lcom/iflytek/greenplug/client/PluginManager$6;-><init>(Lcom/iflytek/greenplug/client/PluginManager;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->clearApplicationUserData(Ljava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;)V

    .line 808
    :goto_0
    return-void

    .line 803
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "clearApplicationUserData fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "clearApplicationUserData error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public connectToService()V
    .locals 4

    .prologue
    .line 223
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "connectToService begin"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-nez v2, :cond_0

    .line 226
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    const-class v3, Lcom/iflytek/greenplug/server/service/PluginManagerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 228
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "connectToService error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Ljava/lang/Object;

    .prologue
    .line 984
    return-void
.end method

.method public deletePackage(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 504
    const-string/jumbo v7, "PluginManager"

    const-string/jumbo v8, "deletePackage start."

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/ProcessUtils;->isMainThread()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 507
    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_CALL_IN_MAINTHREAD:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v5

    .line 542
    :cond_0
    :goto_0
    return v5

    .line 510
    :cond_1
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v7, :cond_3

    .line 511
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v7, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->deletePackage(Ljava/lang/String;)I

    move-result v5

    .line 513
    .local v5, "result":I
    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 514
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    .end local v5    # "result":I
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PluginManager"

    const-string/jumbo v8, "deletePackage error"

    invoke-static {v7, v8, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-nez v7, :cond_4

    .line 529
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "pluginInstallDir":Ljava/lang/String;
    invoke-static {v3}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteDir(Ljava/lang/String;)V

    .line 531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginPendingDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "pluginPendingFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 534
    invoke-static {v1}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 538
    :cond_2
    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS_PARTIAL:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v5

    goto :goto_0

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pluginInstallDir":Ljava/lang/String;
    .end local v4    # "pluginPendingFile":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    :try_start_1
    new-array v2, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v2, v7

    .line 521
    .local v2, "params":[Ljava/lang/Object;
    new-instance v6, Lcom/iflytek/greenplug/client/GPTask;

    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->DELETE_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    sget-object v8, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-direct {v6, v7, v2, v8}, Lcom/iflytek/greenplug/client/GPTask;-><init>(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;[Ljava/lang/Object;Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;)V

    .line 522
    .local v6, "task":Lcom/iflytek/greenplug/client/GPTask;
    invoke-direct {p0, v6}, Lcom/iflytek/greenplug/client/PluginManager;->runAsyncTask(Lcom/iflytek/greenplug/client/GPTask;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_0

    .line 542
    .end local v2    # "params":[Ljava/lang/Object;
    .end local v6    # "task":Lcom/iflytek/greenplug/client/GPTask;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v5

    goto/16 :goto_0
.end method

.method public deletePackageAsync(Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/greenplug/client/TaskListener;

    .prologue
    .line 546
    const-string/jumbo v0, "PluginManager"

    const-string/jumbo v1, "deletePackageAsync start."

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/greenplug/client/PluginManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/greenplug/client/PluginManager$5;-><init>(Lcom/iflytek/greenplug/client/PluginManager;Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 589
    const-string/jumbo v0, "PluginManager"

    const-string/jumbo v1, "deletePackageAsync end."

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->forceStopPackage(Ljava/lang/String;)Z

    .line 1057
    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v1

    .line 1065
    :goto_0
    return v1

    .line 1059
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "forceStopPackage fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_1
    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v1

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "forceStopPackage error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .prologue
    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 769
    :goto_0
    return-object v1

    .line 764
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getActivityInfo fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getActivityInfo error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
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

    .prologue
    .line 946
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v3, :cond_1

    .line 947
    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v3, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getAllPackageInfos(I)Ljava/util/List;

    move-result-object v1

    .line 966
    :cond_0
    :goto_0
    return-object v1

    .line 949
    :cond_1
    if-nez p1, :cond_2

    .line 950
    invoke-direct {p0}, Lcom/iflytek/greenplug/client/PluginManager;->parseInstalledPackages()V

    .line 952
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 953
    .local v1, "listPackageInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 954
    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 955
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 963
    .end local v1    # "listPackageInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PluginManager"

    const-string/jumbo v4, "getAllPackageInfos error"

    invoke-static {v3, v4, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 966
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 960
    :cond_2
    :try_start_1
    const-string/jumbo v3, "PluginManager"

    const-string/jumbo v4, "getAllPackageInfos error: \u65e0\u6cd5\u5728\u672a\u8fde\u63a5PMS\u72b6\u6001\u4e0b\uff0c\u83b7\u53d6\u5305\u542bflags\u9644\u52a0\u5185\u5bb9\u7684\u5305\u4fe1\u606f"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v1

    .line 860
    :goto_0
    return-object v1

    .line 855
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getAllPermissionGroups fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getAllPermissionGroups error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 782
    :goto_0
    return-object v1

    .line 777
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getApplicationInfo fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getApplicationInfo error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getBindingPluginServiceComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "stubServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getBindingPluginServiceComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1160
    :goto_0
    return-object v1

    .line 1155
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getBindingPluginServiceComponent fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getBindingPluginServiceComponent error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getBindingStubActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1114
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getBindingStubActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1122
    :goto_0
    return-object v1

    .line 1117
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getBindingStubActivityName fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getBindingStubActivityName error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 979
    :goto_0
    return-object v1

    .line 974
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getInstalledApplications fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getInstalledApplications"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1234
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1242
    :goto_0
    return-object v1

    .line 1237
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getLaunchIntentForPackage fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getLaunchIntentForPackage error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 941
    :goto_0
    return-object v1

    .line 930
    :cond_0
    if-nez p2, :cond_1

    .line 931
    invoke-direct {p0}, Lcom/iflytek/greenplug/client/PluginManager;->parseInstalledPackages()V

    .line 933
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 935
    :cond_1
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getPackageInfo error: \u65e0\u6cd5\u5728\u672a\u8fde\u63a5PMS\u72b6\u6001\u4e0b\uff0c\u83b7\u53d6\u5305\u542bflags\u9644\u52a0\u5185\u5bb9\u7684\u5305\u4fe1\u606f"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getPackageInfo error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getPackageNameByPid(I)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getPackageNameByPid(I)Ljava/util/List;

    move-result-object v1

    .line 1078
    :goto_0
    return-object v1

    .line 1073
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getPackageNameByPid fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getPackageNameByPid error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    .line 847
    :goto_0
    return-object v1

    .line 842
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getPermissionGroupInfo fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getPermissionGroupInfo error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 821
    :goto_0
    return-object v1

    .line 816
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getPermissionInfo fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getPermissionInfo fail"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getProcessNameByPid(I)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 1083
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1091
    :goto_0
    return-object v1

    .line 1086
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getProcessNameByPid fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getProcessNameByPid error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .prologue
    .line 865
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 987
    if-nez p1, :cond_0

    .line 999
    :goto_0
    return-object v1

    .line 991
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 992
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v2, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_0

    .line 994
    :cond_1
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "getReceiverInfo fail, PluginManagerService not be connect"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "getReceiverInfo error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getReceiverIntentFilter(Landroid/content/pm/ActivityInfo;)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 1017
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getReceiverIntentFilter(Landroid/content/pm/ActivityInfo;)Ljava/util/List;

    move-result-object v1

    .line 1025
    :goto_0
    return-object v1

    .line 1020
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getReceiverIntentFilter fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getReceiverIntentFilter error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getReceivers(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 1004
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getReceivers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1012
    :goto_0
    return-object v1

    .line 1007
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getReceivers fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getReceivers error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 668
    :goto_0
    return-object v1

    .line 663
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getService fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getService error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .prologue
    .line 728
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 736
    :goto_0
    return-object v1

    .line 731
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getServiceInfo fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "getServiceInfo error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public hasInstalledInnerPackage()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "gpplugins"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "files":[Ljava/lang/String;
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 147
    .local v1, "file":Ljava/lang/String;
    const-string/jumbo v6, ".apk"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    const/4 v3, 0x1

    .line 155
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 146
    .restart local v1    # "file":Ljava/lang/String;
    .restart local v2    # "files":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PluginManager"

    const-string/jumbo v5, "scan assets file error"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public hasInstalledPackage()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInstalledPackageInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInstalledPackageByPkgName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 594
    const-string/jumbo v7, "PluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasInstalledPackageByPkgName begin, pkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v6, 0x0

    .line 599
    .local v6, "result":Z
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 601
    .local v3, "dirs":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v7, v3

    if-lez v7, :cond_0

    .line 602
    array-length v8, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v3, v7

    .line 603
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 604
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "dirName":Ljava/lang/String;
    const-string/jumbo v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hasInstalledPackageByPkgName, plugin dirName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 607
    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "apk/base-1.apk"

    invoke-direct {v5, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 608
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 609
    const/4 v6, 0x1

    .line 619
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "dirName":Ljava/lang/String;
    .end local v3    # "dirs":[Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    const-string/jumbo v7, "PluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasInstalledPackageByPkgName end, result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return v6

    .line 602
    .restart local v0    # "baseDir":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "dirs":[Ljava/io/File;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 616
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "dirs":[Ljava/io/File;
    :catch_0
    move-exception v4

    .line 617
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PluginManager"

    const-string/jumbo v8, "scan a apk file error"

    invoke-static {v7, v8, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/greenplug/client/InitListener;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/iflytek/greenplug/client/InitListener;
    .param p3, "flagForceStartPMS"    # Z

    .prologue
    const/4 v4, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/iflytek/greenplug/R$string;->versionName:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "versionName":Ljava/lang/String;
    const-string/jumbo v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GreenPlug init begin\uff0cGP version is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInitListener:Lcom/iflytek/greenplug/client/InitListener;

    .line 103
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/greenplug/common/utils/ProcessUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mRealProcessName:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mRealProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsPluginProcess:Z

    .line 112
    :cond_0
    :goto_0
    const-string/jumbo v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRealProcessName is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mRealProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsPluginProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsPluginProcess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | mIsHostProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsHostProcess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsPluginProcess:Z

    if-eqz v1, :cond_6

    .line 116
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/HookFactory;->getInstance()Lcom/iflytek/greenplug/client/hook/HookFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/greenplug/client/hook/HookFactory;->installHooks(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/HookFactory;->getInstance()Lcom/iflytek/greenplug/client/hook/HookFactory;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/iflytek/greenplug/client/hook/HookFactory;->setHooksEnable(Z)V

    .line 123
    :cond_1
    :goto_1
    if-nez p3, :cond_3

    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsHostProcess:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/PluginManager;->hasInstalledPackage()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsPluginProcess:Z

    if-eqz v1, :cond_7

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/PluginManager;->connectToService()V

    .line 137
    :goto_2
    return-void

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mRealProcessName:Ljava/lang/String;

    const-string/jumbo v2, ":GreenPlugin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    iput-boolean v4, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsPluginProcess:Z

    goto :goto_0

    .line 109
    :cond_5
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mRealProcessName:Ljava/lang/String;

    const-string/jumbo v2, ":GreenPlugin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iput-boolean v4, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsHostProcess:Z

    goto :goto_0

    .line 118
    :cond_6
    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsHostProcess:Z

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/iflytek/greenplug/client/PluginManager;->parseInstalledPackages()V

    goto :goto_1

    .line 131
    :cond_7
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInitListener:Lcom/iflytek/greenplug/client/InitListener;

    if-eqz v1, :cond_8

    .line 132
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInitListener:Lcom/iflytek/greenplug/client/InitListener;

    invoke-interface {v1}, Lcom/iflytek/greenplug/client/InitListener;->onInitSuccess()V

    .line 134
    :cond_8
    iput-boolean v4, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInited:Z

    .line 135
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "GreenPlug init end!"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public installPackage(Ljava/lang/String;)I
    .locals 6
    .param p1, "apkfile"    # Ljava/lang/String;

    .prologue
    .line 444
    const-string/jumbo v4, "PluginManager"

    const-string/jumbo v5, "installPackag start."

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/ProcessUtils;->isMainThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_CALL_IN_MAINTHREAD:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v2

    .line 467
    :cond_0
    :goto_0
    return v2

    .line 450
    :cond_1
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v4, :cond_2

    .line 451
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v4, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->installPackage(Ljava/lang/String;)I

    move-result v2

    .line 453
    .local v2, "result":I
    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 454
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/PluginManager;->parsePackage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PluginManager"

    const-string/jumbo v5, "installPackage error"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v2

    goto :goto_0

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    .line 460
    .local v1, "params":[Ljava/lang/Object;
    new-instance v3, Lcom/iflytek/greenplug/client/GPTask;

    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->INSTALL_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    sget-object v5, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-direct {v3, v4, v1, v5}, Lcom/iflytek/greenplug/client/GPTask;-><init>(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;[Ljava/lang/Object;Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;)V

    .line 461
    .local v3, "task":Lcom/iflytek/greenplug/client/GPTask;
    invoke-direct {p0, v3}, Lcom/iflytek/greenplug/client/PluginManager;->runAsyncTask(Lcom/iflytek/greenplug/client/GPTask;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public installPackageAsync(Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V
    .locals 2
    .param p1, "apkfile"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/iflytek/greenplug/client/TaskListener;

    .prologue
    .line 471
    const-string/jumbo v0, "PluginManager"

    const-string/jumbo v1, "installPackageAsync start."

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/greenplug/client/PluginManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/greenplug/client/PluginManager$4;-><init>(Lcom/iflytek/greenplug/client/PluginManager;Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 500
    const-string/jumbo v0, "PluginManager"

    const-string/jumbo v1, "installPackageAsync end."

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 624
    const-string/jumbo v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPluginPackage begin, packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    :goto_0
    return v1

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v2, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/iflytek/greenplug/client/PluginManager;->hasInstalledPackageByPkgName(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "isPluginPackage error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isPluginRunning(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 643
    const-string/jumbo v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPluginRunning begin, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->isPluginRunning(Ljava/lang/String;)Z

    move-result v1

    .line 655
    :goto_0
    return v1

    .line 649
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "isPluginRunning fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "isPluginRunning error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public killApplicationProcess(Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginPackageName"    # Ljava/lang/String;

    .prologue
    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->killApplicationProcess(Ljava/lang/String;)Z

    .line 1038
    :goto_0
    return-void

    .line 1033
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "killApplicationProcess fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "killApplicationProcess error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginPackageName"    # Ljava/lang/String;

    .prologue
    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->killBackgroundProcesses(Ljava/lang/String;)Z

    .line 1050
    :goto_0
    return-void

    .line 1045
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "killBackgroundProcesses fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "killBackgroundProcesses error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 238
    :try_start_0
    const-string/jumbo v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected begin! mRealProcessName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mRealProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mRealProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "mRealProcessName is null, registerApplicationCallback fail, GreenPlug init fail"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 295
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    :try_start_2
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 297
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v3, "PluginManager notifyAll success:"

    invoke-static {v1, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    monitor-exit v2

    .line 305
    :goto_0
    return-void

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "PluginManager notifyAll error:"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_4
    invoke-static {p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    .line 251
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mRealProcessName:Ljava/lang/String;

    new-instance v3, Lcom/iflytek/greenplug/client/PluginManager$1;

    invoke-direct {v3, p0}, Lcom/iflytek/greenplug/client/PluginManager$1;-><init>(Lcom/iflytek/greenplug/client/PluginManager;)V

    invoke-interface {v1, v2, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->registerApplicationCallback(Ljava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;)Z

    .line 260
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/iflytek/greenplug/client/PluginManager$2;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/greenplug/client/PluginManager$2;-><init>(Lcom/iflytek/greenplug/client/PluginManager;Landroid/content/ComponentName;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 268
    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mIsPluginProcess:Z

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/iflytek/greenplug/client/PluginManager$3;

    invoke-direct {v2, p0}, Lcom/iflytek/greenplug/client/PluginManager$3;-><init>(Lcom/iflytek/greenplug/client/PluginManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 277
    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mOnceConnected:Z

    if-nez v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/iflytek/greenplug/client/PluginManager;->handleBlacklistPackages()V

    .line 284
    :cond_1
    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInited:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mOnceConnected:Z

    if-nez v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInitListener:Lcom/iflytek/greenplug/client/InitListener;

    if-eqz v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInitListener:Lcom/iflytek/greenplug/client/InitListener;

    invoke-interface {v1}, Lcom/iflytek/greenplug/client/InitListener;->onInitSuccess()V

    .line 288
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mInited:Z

    .line 289
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mOnceConnected:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 295
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 296
    :try_start_6
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 297
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v3, "PluginManager notifyAll success:"

    invoke-static {v1, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 303
    :goto_1
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "onServiceConnected OK!"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "GreenPlug init end! PMS connected!"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 299
    :catch_1
    move-exception v0

    .line 300
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "PluginManager notifyAll error:"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "linkToDeath error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 295
    :try_start_a
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 296
    :try_start_b
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 297
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v3, "PluginManager notifyAll success:"

    invoke-static {v1, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 299
    :catch_3
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "PluginManager notifyAll error:"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    .line 295
    :try_start_d
    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 296
    :try_start_e
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 297
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v4, "PluginManager notifyAll success:"

    invoke-static {v2, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 301
    :goto_2
    throw v1

    .line 298
    :catchall_4
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 299
    :catch_4
    move-exception v0

    .line 300
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "PluginManager notifyAll error:"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 372
    const-string/jumbo v0, "PluginManager"

    const-string/jumbo v1, "onServiceDisconnected disconnected!"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    .line 376
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/PluginManager;->connectToService()V

    .line 377
    return-void
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 878
    :goto_0
    return-object v1

    .line 873
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "queryIntentActivities fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "queryIntentActivities error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 891
    :goto_0
    return-object v1

    .line 886
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "queryIntentReceivers fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "queryIntentReceivers error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 917
    :goto_0
    return-object v1

    .line 912
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "queryIntentServices fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "queryIntentServices error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 834
    :goto_0
    return-object v1

    .line 829
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "queryPermissionsByGroup fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "queryPermissionsByGroup error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v2, :cond_1

    .line 742
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 756
    :goto_0
    return-object v2

    .line 745
    :cond_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 746
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    .line 747
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 751
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "resolveActivityInfo fail, PluginManagerService not be connect"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "resolveActivityInfo error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "targetAuthority"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 703
    :goto_0
    return-object v1

    .line 698
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "resolveIntent fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "resolveIntent error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # Ljava/lang/Integer;

    .prologue
    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 904
    :goto_0
    return-object v1

    .line 899
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "resolveService fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "resolveService error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v2, :cond_1

    .line 709
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 710
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 723
    :goto_0
    return-object v2

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/PluginManager;->mHostContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 713
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_2

    .line 714
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 718
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "resolveServiceInfo fail, PluginManagerService not be connect"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "resolveServiceInfo error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public selectStubProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 1096
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActivity(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1206
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->startActivity(Landroid/content/Intent;)I

    move-result v1

    .line 1215
    :goto_0
    return v1

    .line 1209
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "startActivity fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :goto_1
    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v1

    goto :goto_0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "startActivity error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1190
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v2, :cond_0

    .line 1191
    invoke-virtual {p0, p1}, Lcom/iflytek/greenplug/client/PluginManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1192
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1193
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/client/PluginManager;->startActivity(Landroid/content/Intent;)I

    move-result v2

    .line 1201
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1195
    :cond_0
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "startPackage fail, PluginManagerService not be connect"

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :goto_1
    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v2}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v2

    goto :goto_0

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginManager"

    const-string/jumbo v3, "startPackage error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startService(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1220
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->startService(Landroid/content/Intent;)I

    move-result v1

    .line 1229
    :goto_0
    return v1

    .line 1223
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "startService fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_1
    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v1

    goto :goto_0

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "startService error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public unBindStubActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "pluginActivityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1127
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->unBindStubActivity(Landroid/content/pm/ActivityInfo;)V

    .line 1135
    :goto_0
    return-void

    .line 1130
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "unBindStubActivity fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "unBindStubActivity error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unBindStubService(Landroid/content/pm/ServiceInfo;)V
    .locals 3
    .param p1, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 1165
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_0

    .line 1166
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mPluginManager:Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    invoke-interface {v1, p1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;->unBindStubService(Landroid/content/pm/ServiceInfo;)V

    .line 1173
    :goto_0
    return-void

    .line 1168
    :cond_0
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "unBindStubService fail, PluginManagerService not be connect"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "unBindStubService error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public waitForConnected(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/PluginManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 402
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_1

    .line 404
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 408
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :goto_2
    const-string/jumbo v1, "PluginManager"

    const-string/jumbo v2, "waitForConnected finish"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
