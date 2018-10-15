.class public Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "ILocationManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$f;,
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$d;,
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$e;,
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$h;,
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$g;,
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$i;,
        Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "requestLocationUpdates"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$i;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$i;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "removeUpdates"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$g;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$g;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "requestGeofence"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$h;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$h;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "removeGeofence"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$e;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$e;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getLastLocation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$d;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$d;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "addGpsStatusListener"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$b;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "removeGpsStatusListener"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$f;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$f;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "geocoderIsPresent"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$c;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method
