.class public Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IAlarmManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getHookedMethodHandler(Ljava/lang/reflect/Method;)Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method name is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "set"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$b;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setExact"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$c;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
