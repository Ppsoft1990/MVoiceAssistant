.class public Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "ITelephonyHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 15
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
    .line 999
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ITelephonyCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 869
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "dial"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "call"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "endCall"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "endCallForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "answerRingingCall"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "answerRingingCallForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "silenceRinger"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isOffhook"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isOffhookForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isRingingForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isRinging"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isIdle"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isIdleForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isRadioOn"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isRadioOnForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isSimPinEnabled"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "supplyPin"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "supplyPinForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "supplyPuk"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "supplyPukForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "supplyPinReportResult"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "supplyPinReportResultForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "supplyPukReportResult"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "supplyPukReportResultForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "handlePinMmi"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "handlePinMmiForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "toggleRadioOnOff"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "toggleRadioOnOffForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setRadio"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setRadioForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setRadioPower"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "updateServiceLocation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "updateServiceLocationForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enableLocationUpdates"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enableLocationUpdatesForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "disableLocationUpdates"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "disableLocationUpdatesForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enableDataConnectivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "disableDataConnectivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isDataConnectivityPossible"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCellLocation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getNeighboringCellInfo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCallState"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCallStateForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDataActivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDataState"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActivePhoneType"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActivePhoneTypeForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCdmaEriIconIndex"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCdmaEriIconIndexForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCdmaEriIconMode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCdmaEriIconModeForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCdmaEriText"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCdmaEriTextForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "needsOtaServiceProvisioning"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setVoiceMailNumber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getVoiceMessageCount"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getVoiceMessageCountForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getNetworkType"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getNetworkTypeForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDataNetworkType"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDataNetworkTypeForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getVoiceNetworkTypeForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "hasIccCard"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "hasIccCardUsingSlotId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLteOnCdmaMode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLteOnCdmaModeForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getAllCellInfo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setCellInfoListRate"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDefaultSim"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "IccOpenLogicalChannelResponse"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "iccOpenLogicalChannel"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "iccCloseLogicalChannel"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "iccTransmitApduLogicalChannel"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "iccTransmitApduBasicChannel"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "iccExchangeSimIO"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "sendEnvelopeWithStatus"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "nvReadItem"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "nvWriteItem"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "nvWriteCdmaPrl"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "nvResetConfig"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCalculatedPreferredNetworkType"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPreferredNetworkType"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getTetherApnRequired"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setNetworkSelectionModeAutomatic"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCellNetworkScanResults"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setNetworkSelectionModeManual"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setPreferredNetworkType"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setDataEnabled"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDataEnabled"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPcscfAddress"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setImsRegistrationState"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCdmaMdn"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCdmaMin"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCarrierPrivilegeStatus"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "checkCarrierPrivilegesForPackage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "checkCarrierPrivilegesForPackageAnyPhone"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCarrierPackageNamesForIntentAndPhone"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setLine1NumberForDisplayForSubscriber"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLine1NumberForDisplay"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLine1AlphaTagForDisplay"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getMergedSubscriberIds"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setOperatorBrandOverride"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setRoamingOverride"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "invokeOemRilRequestRaw"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "needMobileRadioShutdown"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "shutdownMobileRadios"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setRadioCapability"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getRadioAccessFamily"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enableVideoCalling"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isVideoCallingEnabled"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "canChangeDtmfToneLength"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isWorldPhone"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isTtyModeSupported"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isHearingAidCompatibilitySupported"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isImsRegistered"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isWifiCallingAvailable"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isVolteAvailable"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "isVideoTelephonyAvailable"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getDeviceId"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getSubIdForPhoneAccount"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "factoryReset"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLocaleFromDefaultSim"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getModemActivityInfo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->addAllMethodFromHookedClass()V

    .line 995
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
    .line 1004
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
