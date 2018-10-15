.class public Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;
.super Ljava/lang/Object;
.source "ActivityThreadCompat.java"


# static fields
.field private static sActivityThread:Ljava/lang/Object;

.field private static sClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    sput-object p0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sActivityThread:Ljava/lang/Object;

    return-object p0
.end method

.method public static final activityThreadClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 35
    const-string/jumbo v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sClass:Ljava/lang/Class;

    .line 37
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static final declared-synchronized currentActivityThread()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 24
    const-class v1, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sActivityThread:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->activityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sActivityThread:Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sActivityThread:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread2()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sActivityThread:Ljava/lang/Object;

    .line 30
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sActivityThread:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static currentActivityThread2()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    .local v1, "sLock":Ljava/lang/Object;
    new-instance v2, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;

    invoke-direct {v2, v1}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    sget-object v2, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->sActivityThread:Ljava/lang/Object;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 59
    monitor-enter v1

    .line 61
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 66
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 64
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 62
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getInstrumentation()Landroid/app/Instrumentation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "obj":Ljava/lang/Object;
    const-string/jumbo v1, "getInstrumentation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation;

    return-object v1
.end method

.method public static getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Ljava/lang/Object;
    .locals 6
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "activityThreadObject":Ljava/lang/Object;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 78
    const-string/jumbo v2, "getPackageInfoNoCheck"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/CompatibilityInfoCompat;->DEFAULT_COMPATIBILITY_INFO()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "loadedApk":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 80
    .end local v1    # "loadedApk":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "getPackageInfoNoCheck"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "loadedApk":Ljava/lang/Object;
    goto :goto_0
.end method
