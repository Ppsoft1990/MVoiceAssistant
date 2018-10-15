.class public Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IWifiManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$d;,
        Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getScanResults"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$c;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getBatchedScanResults"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$b;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setWifiEnabled"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$d;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$d;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method
