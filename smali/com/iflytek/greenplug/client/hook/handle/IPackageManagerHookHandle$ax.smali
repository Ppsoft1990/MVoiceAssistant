.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$ax;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ax"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$ax;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 259
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 260
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "invokeResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 266
    if-eqz p3, :cond_0

    instance-of v6, p4, Ljava/util/List;

    if-eqz v6, :cond_0

    .line 267
    const/4 v2, 0x0

    .local v2, "index0":I
    const/4 v3, 0x1

    .line 268
    .local v3, "index1":I
    array-length v6, p3

    if-le v6, v7, :cond_0

    aget-object v6, p3, v8

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    aget-object v6, p3, v7

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 269
    aget-object v1, p3, v8

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, "group":Ljava/lang/String;
    aget-object v6, p3, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 271
    .local v0, "flags":I
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Lcom/iflytek/greenplug/client/PluginManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 272
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    move-object v5, p4

    .line 273
    check-cast v5, Ljava/util/List;

    .line 274
    .local v5, "old":Ljava/util/List;
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    .end local v0    # "flags":I
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "index0":I
    .end local v3    # "index1":I
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v5    # "old":Ljava/util/List;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    return-void
.end method
