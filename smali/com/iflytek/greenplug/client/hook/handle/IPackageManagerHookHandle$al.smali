.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$al;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "al"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$al;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 414
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 415
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 9
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 423
    if-eqz p3, :cond_0

    .line 424
    const/4 v2, 0x0

    .local v2, "index0":I
    const/4 v3, 0x1

    .line 425
    .local v3, "index1":I
    array-length v5, p3

    const/4 v7, 0x2

    if-lt v5, v7, :cond_0

    aget-object v5, p3, v8

    instance-of v5, v5, Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    aget-object v5, p3, v6

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 426
    aget-object v0, p3, v8

    check-cast v0, Landroid/content/ComponentName;

    .line 427
    .local v0, "className":Landroid/content/ComponentName;
    aget-object v5, p3, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 428
    .local v1, "flags":I
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/iflytek/greenplug/client/PluginManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 429
    .local v4, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_0

    .line 430
    invoke-virtual {p0, v4}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$al;->setFakedResult(Ljava/lang/Object;)V

    move v5, v6

    .line 435
    .end local v0    # "className":Landroid/content/ComponentName;
    .end local v1    # "flags":I
    .end local v2    # "index0":I
    .end local v3    # "index1":I
    .end local v4    # "info":Landroid/content/pm/ServiceInfo;
    :goto_0
    return v5

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method
