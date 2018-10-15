.class public Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "ISmsHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 18
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
    .line 98
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ISmsCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getAllMessagesFromIccEfForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "updateMessageOnIccEfForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "copyMessageToIccEfForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendDataForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendDataForSubscriberWithSelfPermissions"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendTextForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendTextForSubscriberWithSelfPermissions"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "injectSmsPduForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendMultipartTextForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enableCellBroadcastForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "disableCellBroadcastForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enableCellBroadcastRangeForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "disableCellBroadcastRangeForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPremiumSmsPermission"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPremiumSmsPermissionForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setPremiumSmsPermission"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setPremiumSmsPermissionForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isImsSmsSupportedForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isSmsSimPickActivityNeeded"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPreferredSmsSubscription"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getImsSmsFormatForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isSMSPromptEnabled"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendStoredText"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendStoredMultipartText"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->addAllMethodFromHookedClass()V

    .line 94
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
    .line 103
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/ISmsHookHandle$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
