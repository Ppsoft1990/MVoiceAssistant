.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;
.super Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "bd"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 1641
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;-><init>(Landroid/content/Context;)V

    .line 1644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;->a:Ljava/lang/Object;

    .line 1642
    return-void
.end method


# virtual methods
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
    .line 1666
    instance-of v1, p4, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v0, p4

    .line 1667
    check-cast v0, Ljava/lang/Boolean;

    .line 1668
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1669
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "afterInvoke unbindService, remove ServiceConnection binding"

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    .end local v0    # "result":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;->a:Ljava/lang/Object;

    .line 1674
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1675
    return-void
.end method

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
    .line 1650
    invoke-virtual {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;->a(Ljava/lang/reflect/Method;)I

    move-result v0

    .line 1651
    .local v0, "index":I
    if-eqz p3, :cond_0

    array-length v2, p3

    if-le v2, v0, :cond_0

    .line 1652
    aget-object v2, p3, v0

    if-eqz v2, :cond_0

    aget-object v2, p3, v0

    instance-of v2, v2, Landroid/app/IServiceConnection;

    if-eqz v2, :cond_0

    .line 1653
    aget-object v2, p3, v0

    iput-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;->a:Ljava/lang/Object;

    .line 1654
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1655
    .local v1, "proxyConnection":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1656
    aput-object v1, p3, v0

    .line 1657
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "beforeInvoke unbindService,find proxyConnection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    .end local v1    # "proxyConnection":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
