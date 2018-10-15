.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "IPackageManagerHook.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static fixContextPackageManager(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "currentActivityThread":Ljava/lang/Object;
    const-string/jumbo v5, "sPackageManager"

    invoke-static {v0, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    .local v3, "newPm":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 55
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "mPM"

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "mPM":Ljava/lang/Object;
    if-eq v2, v3, :cond_0

    .line 57
    const-string/jumbo v5, "mPM"

    invoke-static {v4, v5, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "currentActivityThread":Ljava/lang/Object;
    .end local v2    # "mPM":Ljava/lang/Object;
    .end local v3    # "newPm":Ljava/lang/Object;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkInstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onInstall()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "currentActivityThread":Ljava/lang/Object;
    const-string/jumbo v7, "sPackageManager"

    invoke-static {v0, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;->setOldObj(Ljava/lang/Object;)V

    .line 37
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 38
    .local v1, "iPmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 39
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Class;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    move-object v2, v7

    .line 40
    .local v2, "ifs":[Ljava/lang/Class;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v7, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    .local v5, "newPm":Ljava/lang/Object;
    const-string/jumbo v7, "sPackageManager"

    invoke-static {v0, v7, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IPackageManagerHook;->mHostContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 43
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v7, "mPM"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    .local v4, "mPM":Ljava/lang/Object;
    if-eq v4, v5, :cond_0

    .line 45
    const-string/jumbo v7, "mPM"

    invoke-static {v6, v7, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void

    .line 39
    .end local v2    # "ifs":[Ljava/lang/Class;
    .end local v4    # "mPM":Ljava/lang/Object;
    .end local v5    # "newPm":Ljava/lang/Object;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v7, 0x0

    new-array v2, v7, [Ljava/lang/Class;

    goto :goto_0
.end method
