.class public Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "ISearchManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getSearchableInfo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method
