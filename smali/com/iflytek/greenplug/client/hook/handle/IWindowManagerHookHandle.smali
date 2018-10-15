.class public Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IWindowManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$a;
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
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "openSession"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "overridePendingAppTransition"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$b;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setAppStartingWindow"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$c;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method
