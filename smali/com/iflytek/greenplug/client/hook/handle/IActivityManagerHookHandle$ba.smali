.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ba;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ba"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 864
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

    .line 871
    if-eqz p3, :cond_0

    array-length v2, p3

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 872
    aget-object v0, p3, v4

    check-cast v0, Landroid/content/ComponentName;

    .line 873
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/iflytek/greenplug/client/PluginManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 875
    .local v1, "pluginServiceInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$700(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    aput-object v2, p3, v4

    .line 878
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "pluginServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
