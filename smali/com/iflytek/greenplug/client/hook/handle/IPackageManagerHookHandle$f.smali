.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$f;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$f;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 564
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 565
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

    .line 571
    const/4 v0, 0x0

    .local v0, "index0":I
    const/4 v1, 0x1

    .line 572
    .local v1, "index1":I
    const/4 v3, 0x0

    .local v3, "pkg0":Ljava/lang/String;
    const/4 v4, 0x0

    .line 573
    .local v4, "pkg1":Ljava/lang/String;
    if-eqz p3, :cond_0

    aget-object v7, p3, v8

    if-eqz v7, :cond_0

    aget-object v7, p3, v8

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 574
    aget-object v3, p3, v8

    .end local v3    # "pkg0":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 577
    .restart local v3    # "pkg0":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    aget-object v7, p3, v6

    if-eqz v7, :cond_1

    aget-object v7, p3, v6

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 578
    aget-object v4, p3, v6

    .end local v4    # "pkg1":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 581
    .restart local v4    # "pkg1":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 582
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    .line 583
    .local v2, "instance":Lcom/iflytek/greenplug/client/PluginManager;
    invoke-virtual {v2, v3}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v4}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 584
    invoke-virtual {v2, v3, v4}, Lcom/iflytek/greenplug/client/PluginManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 585
    .local v5, "result":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$f;->setFakedResult(Ljava/lang/Object;)V

    .line 589
    .end local v2    # "instance":Lcom/iflytek/greenplug/client/PluginManager;
    .end local v5    # "result":I
    :goto_0
    return v6

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method
