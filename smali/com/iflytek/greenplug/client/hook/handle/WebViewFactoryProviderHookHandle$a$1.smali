.class Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a$1;
.super Ljava/lang/Object;
.source "WebViewFactoryProviderHookHandle.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a$1;->b:Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a$1;->a:Ljava/lang/Object;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "invoke":Ljava/lang/Object;
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a$1;->b:Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;

    iget-object v1, v1, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->access$000(Landroid/content/Context;)V

    .line 103
    return-object v0
.end method
