.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$i;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 2228
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 2229
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

    .line 2237
    const/4 v0, 0x0

    .line 2238
    .local v0, "index":I
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 2239
    aget-object v2, p3, v3

    if-eqz v2, :cond_0

    aget-object v2, p3, v3

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2240
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    .line 2241
    .local v1, "targetPkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2242
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/greenplug/client/PluginManager;->forceStopPackage(Ljava/lang/String;)I

    .line 2243
    const/4 v2, 0x1

    .line 2247
    .end local v1    # "targetPkg":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
