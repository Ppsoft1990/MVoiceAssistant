.class Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IWindowManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;

    .line 33
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
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
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "clazz":Ljava/lang/Class;
    new-instance v3, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-direct {v3, v5, p4}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 41
    .local v3, "invocationHandler":Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;->setEnable(Z)V

    .line 42
    invoke-static {v0}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Class;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Class;

    move-object v1, v5

    .line 44
    .local v1, "ifs":[Ljava/lang/Class;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, v1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 45
    .local v4, "newProxy":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$a;->setFakedResult(Ljava/lang/Object;)V

    .line 46
    return-void

    .line 43
    .end local v1    # "ifs":[Ljava/lang/Class;
    .end local v4    # "newProxy":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x0

    new-array v1, v5, [Ljava/lang/Class;

    goto :goto_0
.end method
