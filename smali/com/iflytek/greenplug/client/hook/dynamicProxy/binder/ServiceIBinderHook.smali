.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "ServiceIBinderHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceIBinderHook"


# instance fields
.field private mProxiedObj:Ljava/lang/Object;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "proxiedObj"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->mServiceName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->mProxiedObj:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->setEnable(Z)V

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->mProxiedObj:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public checkInstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->mHostContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;-><init>(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;Landroid/content/Context;Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$1;)V

    return-object v0
.end method

.method public onInstall()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;->Class()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "sCache"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 38
    .local v6, "sCacheObj":Ljava/lang/Object;
    instance-of v7, v6, Ljava/util/Map;

    if-eqz v7, :cond_0

    .line 39
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->mServiceName:Ljava/lang/String;

    invoke-static {v7}, Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 40
    .local v3, "oldServiceIBinder":Landroid/os/IBinder;
    invoke-virtual {p0, v3}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->setOldObj(Ljava/lang/Object;)V

    .line 42
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Class;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    move-object v1, v7

    .line 46
    .local v1, "ifs":[Ljava/lang/Class;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v7, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .local v4, "proxyServiceIBinder":Landroid/os/IBinder;
    move-object v5, v6

    .line 49
    check-cast v5, Ljava/util/Map;

    .line 50
    .local v5, "sCache":Ljava/util/Map;
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->mServiceName:Ljava/lang/String;

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "ifs":[Ljava/lang/Class;
    .end local v2    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "oldServiceIBinder":Landroid/os/IBinder;
    .end local v4    # "proxyServiceIBinder":Landroid/os/IBinder;
    .end local v5    # "sCache":Ljava/util/Map;
    :cond_0
    const-string/jumbo v7, "ServiceIBinderHook"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInstall end, serviceName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->mServiceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", sCacheObj:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 45
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v2    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v3    # "oldServiceIBinder":Landroid/os/IBinder;
    :cond_1
    const/4 v7, 0x0

    new-array v1, v7, [Ljava/lang/Class;

    goto :goto_0
.end method
