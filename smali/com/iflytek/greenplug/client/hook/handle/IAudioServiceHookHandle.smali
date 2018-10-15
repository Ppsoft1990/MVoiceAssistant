.class public Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IAudioServiceHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$g;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$h;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$i;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$j;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$d;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$e;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$f;,
        Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "adjustVolume"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$f;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "adjustLocalOrRemoteStreamVolume"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "adjustSuggestedStreamVolume"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$e;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$e;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "adjustStreamVolume"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$d;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$d;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "adjustMasterVolume"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setStreamVolume"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$j;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$j;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setMasterVolume"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$i;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$i;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "requestAudioFocus"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$h;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "registerRemoteControlClient"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$g;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
