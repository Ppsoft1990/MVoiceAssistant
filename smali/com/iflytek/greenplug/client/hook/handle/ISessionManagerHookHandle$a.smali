.class Lcom/iflytek/greenplug/client/hook/handle/ISessionManagerHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "ISessionManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/ISessionManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/ISessionManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/ISessionManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/ISessionManagerHookHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/ISessionManagerHookHandle;

    .line 27
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
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
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "index":I
    if-eqz p3, :cond_0

    array-length v2, p3

    if-le v2, v0, :cond_0

    aget-object v2, p3, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 34
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 35
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/ISessionManagerHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/ISessionManagerHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 39
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
