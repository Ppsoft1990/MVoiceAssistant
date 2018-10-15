.class public Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "LibCoreHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$m;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$l;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$k;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$j;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$i;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$h;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$g;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$f;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$e;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$d;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "access"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$b;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "chmod"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$c;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "chown"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$d;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$d;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "execv"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$e;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$e;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "execve"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$f;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$f;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "mkdir"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$g;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$g;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "open"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$h;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$h;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "remove"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$i;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$i;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "rename"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$j;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$j;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$k;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$k;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "statvfs"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$l;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$l;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "symlink"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$m;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$m;-><init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
