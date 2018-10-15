.class public Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IContentProviderInvokeHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$m;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$h;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$o;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$e;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$f;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$d;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$k;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$l;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$p;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$g;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$j;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$i;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$n;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;
    }
.end annotation


# instance fields
.field private final mLocalProvider:Z

.field private final mStubProvider:Landroid/content/pm/ProviderInfo;

.field private final mTargetProvider:Landroid/content/pm/ProviderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;Z)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;
    .param p2, "stubProvider"    # Landroid/content/pm/ProviderInfo;
    .param p3, "targetProvider"    # Landroid/content/pm/ProviderInfo;
    .param p4, "localProvider"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mStubProvider:Landroid/content/pm/ProviderInfo;

    .line 27
    iput-object p3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mTargetProvider:Landroid/content/pm/ProviderInfo;

    .line 28
    iput-boolean p4, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mLocalProvider:Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mLocalProvider:Z

    return v0
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mStubProvider:Landroid/content/pm/ProviderInfo;

    return-object v0
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "query"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$n;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$n;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getType"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$i;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$i;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "insert"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$j;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$j;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "bulkInsert"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$c;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "delete"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$g;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$g;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "update"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$p;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$p;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "openFile"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$l;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$l;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "openAssetFile"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$k;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$k;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "applyBatch"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$b;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "call"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$d;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$d;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "createCancellationSignal"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$f;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$f;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "canonicalize"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$e;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$e;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "uncanonicalize"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$o;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$o;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getStreamTypes"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$h;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$h;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "openTypedAssetFile"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$m;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$m;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
