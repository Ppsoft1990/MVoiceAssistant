.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "bindService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$MyIServiceConnection;
    }
.end annotation


# instance fields
.field private a:Landroid/content/pm/ServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 1559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    .line 1557
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/reflect/Method;)I
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 1607
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1608
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1609
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1610
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IServiceConnection"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1615
    .end local v0    # "index":I
    :goto_1
    return v0

    .line 1609
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1615
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
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
    .line 1620
    instance-of v0, p4, Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    .line 1622
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->setFakedResult(Ljava/lang/Object;)V

    .line 1625
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    .line 1626
    invoke-super {p0, p1, p2, p3, p4}, Lrt;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1627
    return-void
.end method

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
    .line 1572
    invoke-static {p3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$600([Ljava/lang/Object;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    .line 1573
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_0

    .line 1574
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1575
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    .line 1603
    :goto_0
    return v2

    .line 1579
    :cond_0
    invoke-virtual {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a(Ljava/lang/reflect/Method;)I

    move-result v0

    .line 1580
    .local v0, "index":I
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    .line 1581
    aget-object v1, p3, v0

    .line 1582
    .local v1, "oldIServiceConnection":Ljava/lang/Object;
    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->a:Landroid/content/pm/ServiceInfo;

    invoke-direct {v2, p0, v3, v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;Landroid/content/pm/ServiceInfo;Ljava/lang/Object;)V

    aput-object v2, p3, v0

    .line 1601
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    .end local v1    # "oldIServiceConnection":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
