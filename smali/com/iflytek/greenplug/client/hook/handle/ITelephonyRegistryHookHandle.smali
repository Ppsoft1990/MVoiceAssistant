.class public Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "ITelephonyRegistryHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;
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
    .line 92
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ITelephonyRegistryCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "addOnSubscriptionsChangedListener"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "removeOnSubscriptionsChangedListener"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "listen"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "listenForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCallState"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCallStateForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyServiceStateForPhoneId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifySignalStrength"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifySignalStrengthForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyMessageWaitingChangedForPhoneId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCallForwardingChanged"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCallForwardingChangedForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyDataActivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyDataActivityForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyDataConnection"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyDataConnectionForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyDataConnectionFailed"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyDataConnectionFailedForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCellLocation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCellLocationForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyOtaspChanged"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCellInfo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyPreciseCallState"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyDisconnectCause"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyPreciseDataConnectionFailed"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCellInfoForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyDataConnectionRealTimeInfo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyVoLteServiceStateChanged"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyOemHookRawEventForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifySubscriptionInfoChanged"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyCarrierNetworkChange"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->addAllMethodFromHookedClass()V

    .line 88
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
    .line 97
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyRegistryHookHandle$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
