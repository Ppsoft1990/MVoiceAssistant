.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ad;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ad"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 1803
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 1804
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

    .line 1811
    const/4 v0, 0x0

    .line 1812
    .local v0, "index":I
    if-eqz p3, :cond_0

    array-length v3, p3

    if-lez v3, :cond_0

    .line 1813
    aget-object v3, p3, v4

    if-eqz v3, :cond_0

    aget-object v3, p3, v4

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1814
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    .line 1815
    .local v1, "processName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1816
    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v4

    .line 1817
    .local v2, "targetPkg":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1818
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/greenplug/client/PluginManager;->killApplicationProcess(Ljava/lang/String;)V

    .line 1819
    const/4 v3, 0x1

    .line 1824
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "targetPkg":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method
