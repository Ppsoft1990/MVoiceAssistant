.class public Lrt;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "ReplaceCallingPackageHookedMethodHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private static isPackagePlugin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1

    .line 22
    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    .line 23
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 24
    aget-object v2, p3, v0

    if-eqz v2, :cond_0

    aget-object v2, p3, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 25
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 26
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lrt;->isPackagePlugin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    iget-object v2, p0, Lrt;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 23
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "index":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
