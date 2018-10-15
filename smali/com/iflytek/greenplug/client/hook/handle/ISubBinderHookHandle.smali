.class public Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "ISubBinderHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;
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
    .line 193
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ISubCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getAllSubInfoList"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getAllSubInfoCount"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActiveSubscriptionInfo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActiveSubscriptionInfoForIccId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActiveSubscriptionInfoForSimSlotIndex"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActiveSubscriptionInfoList"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActiveSubInfoCountMax"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "addSubInfoRecord"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setIconTint"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setDisplayName"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setDisplayNameUsingSrc"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setDisplayNumber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setDataRoaming"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getSlotId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDefaultSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "clearSubInfo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPhoneId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDefaultDataSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "etDefaultDataSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDefaultVoiceSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setDefaultVoiceSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDefaultSmsSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setDefaultSmsSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "clearDefaultsForInactiveSubIds"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActiveSubIdList"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setSubscriptionProperty"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getSubscriptionProperty"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getSimStateForSlotIdx"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isActiveSubId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->addAllMethodFromHookedClass()V

    .line 189
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
    .line 198
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/ISubBinderHookHandle$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
