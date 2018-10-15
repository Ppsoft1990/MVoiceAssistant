.class public Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IMountServiceHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;
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
    .line 22
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "mkdirs"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method
