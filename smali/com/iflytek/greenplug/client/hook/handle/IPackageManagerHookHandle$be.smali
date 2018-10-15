.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$be;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "be"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$be;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 629
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 630
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 11
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 638
    if-eqz p3, :cond_3

    .line 639
    const/4 v1, 0x0

    .local v1, "index0":I
    const/4 v2, 0x1

    .local v2, "index1":I
    const/4 v3, 0x2

    .line 640
    .local v3, "index2":I
    const/4 v5, 0x0

    .line 641
    .local v5, "intent":Landroid/content/Intent;
    array-length v8, p3

    if-lez v8, :cond_0

    .line 642
    aget-object v8, p3, v9

    instance-of v8, v8, Landroid/content/Intent;

    if-eqz v8, :cond_0

    .line 643
    aget-object v5, p3, v9

    .end local v5    # "intent":Landroid/content/Intent;
    check-cast v5, Landroid/content/Intent;

    .line 647
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v6, 0x0

    .line 648
    .local v6, "resolvedType":Ljava/lang/String;
    array-length v8, p3

    if-le v8, v7, :cond_1

    .line 649
    aget-object v8, p3, v7

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 650
    aget-object v6, p3, v7

    .end local v6    # "resolvedType":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 654
    .restart local v6    # "resolvedType":Ljava/lang/String;
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 655
    .local v0, "flags":Ljava/lang/Integer;
    array-length v8, p3

    if-le v8, v10, :cond_2

    .line 656
    aget-object v8, p3, v10

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 657
    aget-object v0, p3, v10

    .end local v0    # "flags":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 661
    .restart local v0    # "flags":Ljava/lang/Integer;
    :cond_2
    if-eqz v5, :cond_3

    .line 662
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v5, v6, v9}, Lcom/iflytek/greenplug/client/PluginManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 663
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_3

    .line 664
    invoke-virtual {p0, v4}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$be;->setFakedResult(Ljava/lang/Object;)V

    .line 670
    .end local v0    # "flags":Ljava/lang/Integer;
    .end local v1    # "index0":I
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "resolvedType":Ljava/lang/String;
    :goto_0
    return v7

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
.end method
