.class Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IWifiManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;

    .line 30
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
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
    const/4 v3, 0x0

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "index":I
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    aget-object v2, p3, v3

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 38
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v3

    .line 43
    .end local v0    # "callingPackage":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
