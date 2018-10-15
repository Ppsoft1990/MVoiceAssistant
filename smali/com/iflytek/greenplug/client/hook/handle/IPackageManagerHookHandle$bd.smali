.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$bd;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bd"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$bd;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 1116
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 1117
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1131
    if-eqz p3, :cond_0

    .line 1132
    if-nez p4, :cond_0

    .line 1133
    const/4 v1, 0x0

    .local v1, "index0":I
    const/4 v2, 0x1

    .line 1134
    .local v2, "index1":I
    array-length v5, p3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    aget-object v5, p3, v7

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    aget-object v5, p3, v8

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 1135
    aget-object v4, p3, v7

    check-cast v4, Ljava/lang/String;

    .line 1136
    .local v4, "name":Ljava/lang/String;
    aget-object v0, p3, v8

    check-cast v0, Ljava/lang/Integer;

    .line 1137
    .local v0, "flags":Ljava/lang/Integer;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/iflytek/greenplug/client/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 1138
    .local v3, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v3, :cond_0

    .line 1139
    invoke-virtual {p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$bd;->setFakedResult(Ljava/lang/Object;)V

    .line 1144
    .end local v0    # "flags":Ljava/lang/Integer;
    .end local v1    # "index0":I
    .end local v2    # "index1":I
    .end local v3    # "info":Landroid/content/pm/ProviderInfo;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1145
    return-void
.end method

.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
