.class public Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IMmsHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;
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
    .line 67
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/IMmsCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendMessage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "downloadMessage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCarrierConfigValues"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "importTextMessage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "importMultimediaMessage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "deleteStoredMessage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "deleteStoredConversation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "updateStoredMessageStatus"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "archiveStoredConversation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "addTextMessageDraft"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "addMultimediaMessageDraft"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendStoredMessage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setAutoPersisting"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getAutoPersisting"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->addAllMethodFromHookedClass()V

    .line 63
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
    .line 72
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IMmsHookHandle$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
