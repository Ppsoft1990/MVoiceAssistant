.class Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "ServiceIBinderHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a$a;->a:Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;

    .line 75
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 76
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
    .line 80
    const-string/jumbo v0, "ServiceIBinderHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryLocalInterface afterInvoke begin\uff0cinvokeResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a$a;->a:Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;->a:Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;

    invoke-static {v0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->access$100(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p4, :cond_0

    .line 82
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a$a;->a:Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;->a:Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;

    invoke-static {v0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;->access$100(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a$a;->setFakedResult(Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method
