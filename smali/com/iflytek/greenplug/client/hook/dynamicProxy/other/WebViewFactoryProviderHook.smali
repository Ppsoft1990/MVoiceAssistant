.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/WebViewFactoryProviderHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "WebViewFactoryProviderHook.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
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
    .line 42
    return-void
.end method

.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/WebViewFactoryProviderHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onInstall()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/WebViewFactoryCompat;->getProvider()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/WebViewFactoryProviderHook;->mOldObj:Ljava/lang/Object;

    .line 32
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/WebViewFactoryProviderHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 34
    .local v2, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Class;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    move-object v1, v4

    .line 35
    .local v1, "ifs":[Ljava/lang/Class;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 36
    .local v3, "newObj":Ljava/lang/Object;
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/WebViewFactoryCompat;->Class()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "sProviderInstance"

    invoke-static {v4, v5, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void

    .line 34
    .end local v1    # "ifs":[Ljava/lang/Class;
    .end local v3    # "newObj":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Class;

    goto :goto_0
.end method
