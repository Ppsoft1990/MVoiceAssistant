.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$ab;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ab"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$ab;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 162
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 171
    if-eqz p3, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "index0":I
    const/4 v1, 0x0

    .line 174
    .local v1, "packageName":Ljava/lang/String;
    array-length v2, p3

    if-lez v2, :cond_1

    .line 175
    aget-object v2, p3, v3

    if-eqz v2, :cond_0

    aget-object v2, p3, v3

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 176
    aget-object v1, p3, v3

    .end local v1    # "packageName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 178
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$ab;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v3

    .line 184
    .end local v0    # "index0":I
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
