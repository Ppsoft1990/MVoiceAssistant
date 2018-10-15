.class Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "ISearchManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle;

    .line 31
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 6
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    if-eqz p3, :cond_0

    array-length v3, p3

    if-lez v3, :cond_0

    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p3, v3

    instance-of v3, v3, Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 37
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    aget-object v0, p3, v3

    check-cast v0, Landroid/content/ComponentName;

    .line 38
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/iflytek/greenplug/client/PluginManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 39
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iflytek/greenplug/client/PluginManager;->getBindingStubActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "stubActivity":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 42
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/ISearchManagerHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, p3, v3

    .line 46
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "stubActivity":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method
