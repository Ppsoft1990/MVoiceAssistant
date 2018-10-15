.class Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IContentServiceHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 9
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 41
    if-eqz p3, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 43
    .local v1, "index":I
    array-length v6, p3

    if-le v6, v8, :cond_0

    aget-object v6, p3, v8

    instance-of v6, v6, Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 44
    aget-object v5, p3, v8

    check-cast v5, Landroid/net/Uri;

    .line 45
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "authority":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/iflytek/greenplug/client/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 47
    .local v4, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_1

    .line 48
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/iflytek/greenplug/client/PluginManager;->selectStubProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 49
    .local v2, "info":Landroid/content/pm/ProviderInfo;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 50
    .local v3, "newUri":Landroid/net/Uri$Builder;
    const-string/jumbo v6, "content"

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    const-string/jumbo v6, "TargetAuthority"

    invoke-virtual {v3, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, p3, v8

    .line 62
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "info":Landroid/content/pm/ProviderInfo;
    .end local v3    # "newUri":Landroid/net/Uri$Builder;
    .end local v4    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 58
    .restart local v0    # "authority":Ljava/lang/String;
    .restart local v1    # "index":I
    .restart local v4    # "provider":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getContentProvider,fake fail 2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
