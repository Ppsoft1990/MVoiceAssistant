.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$af;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "af"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$af;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 233
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 234
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

    const/4 v6, 0x1

    .line 240
    if-eqz p3, :cond_0

    .line 241
    const/4 v1, 0x0

    .local v1, "index0":I
    const/4 v2, 0x1

    .line 242
    .local v2, "index1":I
    array-length v5, p3

    if-le v5, v6, :cond_0

    aget-object v5, p3, v7

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    aget-object v5, p3, v6

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 243
    aget-object v3, p3, v7

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "packageName":Ljava/lang/String;
    aget-object v5, p3, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 245
    .local v0, "flags":I
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/iflytek/greenplug/client/PluginManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 246
    .local v4, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {p0, v4}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$af;->setFakedResult(Ljava/lang/Object;)V

    move v5, v6

    .line 253
    .end local v0    # "flags":I
    .end local v1    # "index0":I
    .end local v2    # "index1":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    return v5

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method
