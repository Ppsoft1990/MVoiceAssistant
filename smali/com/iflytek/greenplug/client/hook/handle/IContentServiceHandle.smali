.class public Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IContentServiceHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "registerContentObserver"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "notifyChange"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
