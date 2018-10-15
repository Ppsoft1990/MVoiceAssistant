.class public Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IAppOpsServiceHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getHookedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/IAppOpsServiceCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "checkOperation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "noteOperation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startOperation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "finishOperation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startWatchingMode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "stopWatchingMode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getToken"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "permissionToOpCode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "noteProxyOperation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "checkPackage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPackagesForOps"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getOpsForPackage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setUidMode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setMode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "resetAllModes"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "checkAudioOperation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setAudioRestriction"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setUserRestrictions"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "removeUser"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->addAllMethodFromHookedClass()V

    .line 61
    return-void
.end method

.method protected newBaseHandler()Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IAppOpsServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
