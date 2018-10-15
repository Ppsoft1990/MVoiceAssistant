.class Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "WebViewFactoryProviderHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 88
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
    .line 93
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;->a:Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->access$000(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 97
    .local v2, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Class;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    move-object v1, v4

    .line 98
    .local v1, "ifs":[Ljava/lang/Class;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v5, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a$1;

    invoke-direct {v5, p0, p4}, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a$1;-><init>(Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;Ljava/lang/Object;)V

    invoke-static {v4, v1, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 106
    .local v3, "newObj":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;->setFakedResult(Ljava/lang/Object;)V

    .line 108
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "ifs":[Ljava/lang/Class;
    .end local v2    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "newObj":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    return-void

    .line 97
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v2    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_1
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Class;

    goto :goto_0
.end method

.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "index":I
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    aget-object v1, p3, v2

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 81
    aget-object v1, p3, v2

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;->a:Landroid/webkit/WebView;

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
