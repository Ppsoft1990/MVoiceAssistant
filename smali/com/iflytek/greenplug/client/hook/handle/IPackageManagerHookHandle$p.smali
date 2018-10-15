.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$p;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$p;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 1396
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 1397
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 5
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1406
    const/4 v1, 0x0

    .line 1407
    .local v1, "index":I
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    aget-object v2, p3, v4

    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 1408
    aget-object v0, p3, v4

    check-cast v0, Landroid/content/ComponentName;

    .line 1409
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1410
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$p;->setFakedResult(Ljava/lang/Object;)V

    .line 1411
    const/4 v2, 0x1

    .line 1414
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
