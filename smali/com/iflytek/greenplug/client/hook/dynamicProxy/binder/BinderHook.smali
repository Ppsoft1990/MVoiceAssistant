.class public abstract Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "BinderHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BinderHook"

.field private static mProxiedServiceObjCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mProxiedObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->mProxiedServiceObjCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method protected static addProxiedServiceObj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "servicename"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    sget-object v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->mProxiedServiceObjCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public static getProxiedServiceObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "servicename"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-object v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->mProxiedServiceObjCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
    .line 67
    return-void
.end method

.method protected abstract getOldServiceObjByIBinder(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getServiceName()Ljava/lang/String;
.end method

.method public onInstall()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->getServiceName()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "serviceName":Ljava/lang/String;
    const-string/jumbo v7, "BinderHook"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInstall begin, serviceName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v6}, Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 49
    .local v3, "oldServiceIBinder":Landroid/os/IBinder;
    invoke-virtual {p0, v3}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->getOldServiceObjByIBinder(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, "oldServiceObj":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->setOldObj(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 54
    .local v2, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Class;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    move-object v1, v7

    .line 55
    .local v1, "ifs":[Ljava/lang/Class;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v7, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->mProxiedObj:Ljava/lang/Object;

    .line 56
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->mProxiedObj:Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->addProxiedServiceObj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    new-instance v5, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;

    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->mHostContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->mProxiedObj:Ljava/lang/Object;

    invoke-direct {v5, v7, v6, v8}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .local v5, "serviceIBinderHook":Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;
    invoke-virtual {v5}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->onInstall()V

    .line 61
    const-string/jumbo v7, "BinderHook"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInstall end, serviceName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 54
    .end local v1    # "ifs":[Ljava/lang/Class;
    .end local v5    # "serviceIBinderHook":Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;
    :cond_0
    const/4 v7, 0x0

    new-array v1, v7, [Ljava/lang/Class;

    goto :goto_0
.end method
