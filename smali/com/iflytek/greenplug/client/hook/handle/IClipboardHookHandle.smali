.class public Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IClipboardHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$e;,
        Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$g;,
        Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$f;,
        Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$d;,
        Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$h;,
        Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setPrimaryClip"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$h;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$h;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPrimaryClip"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$c;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPrimaryClipDescription"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$d;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$d;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "hasPrimaryClip"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$f;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$f;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "addPrimaryClipChangedListener"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$b;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "removePrimaryClipChangedListener"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$g;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$g;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "hasClipboardText"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$e;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$e;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
