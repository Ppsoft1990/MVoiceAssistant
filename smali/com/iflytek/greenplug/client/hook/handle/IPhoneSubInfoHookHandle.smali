.class public Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IPhoneSubInfoHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 17
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
    .line 208
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/IPhoneSubInfoCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDeviceId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getNaiForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDeviceIdForPhone"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getImeiForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDeviceSvn"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDeviceSvnUsingSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getSubscriberId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getSubscriberIdForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getGroupIdLevel1"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getGroupIdLevel1ForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIccSerialNumber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIccSerialNumberForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLine1Number"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLine1NumberForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLine1AlphaTag"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLine1AlphaTagForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getMsisdn"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getMsisdnForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getVoiceMailNumber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getVoiceMailNumberForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCompleteVoiceMailNumber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCompleteVoiceMailNumberForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getVoiceMailAlphaTag"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getVoiceMailAlphaTagForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIsimImpi"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIsimDomain"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIsimImpu"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIsimIst"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIsimPcscf"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIsimChallengeResponse"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIccSimChallengeResponse"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->addAllMethodFromHookedClass()V

    .line 204
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
    .line 213
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IPhoneSubInfoHookHandle$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
