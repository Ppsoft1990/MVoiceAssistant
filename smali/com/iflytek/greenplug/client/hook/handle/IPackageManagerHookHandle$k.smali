.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$k;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$k;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 1497
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 1498
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 8
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1504
    if-eqz p3, :cond_0

    .line 1505
    const/4 v0, 0x0

    .local v0, "index0":I
    const/4 v1, 0x1

    .line 1506
    .local v1, "index1":I
    array-length v5, p3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    aget-object v5, p3, v7

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    aget-object v5, p3, v4

    invoke-static {v5}, Lcom/iflytek/greenplug/common/utils/compat/IPackageDataObserverCompat;->isIPackageDataObserver(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1507
    aget-object v3, p3, v7

    check-cast v3, Ljava/lang/String;

    .line 1508
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1509
    aget-object v2, p3, v4

    .line 1510
    .local v2, "observer":Ljava/lang/Object;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lcom/iflytek/greenplug/client/PluginManager;->deleteApplicationCacheFiles(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1515
    .end local v0    # "index0":I
    .end local v1    # "index1":I
    .end local v2    # "observer":Ljava/lang/Object;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method
