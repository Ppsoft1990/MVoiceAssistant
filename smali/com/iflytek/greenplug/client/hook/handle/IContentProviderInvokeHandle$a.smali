.class Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;
.super Lrt;
.source "IContentProviderInvokeHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    .line 54
    invoke-direct {p0, p2}, Lrt;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a([Ljava/lang/Object;)I
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 58
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 60
    aget-object v1, p1, v0

    instance-of v1, v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 65
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 59
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 8
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 70
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "index":I
    if-eqz p3, :cond_0

    array-length v5, p3

    if-lez v5, :cond_0

    aget-object v5, p3, v7

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 73
    aget-object v3, p3, v7

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v7

    .line 79
    .end local v2    # "index":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    invoke-static {v5}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->access$000(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    invoke-static {v5}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->access$100(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 80
    invoke-direct {p0, p3}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;->a([Ljava/lang/Object;)I

    move-result v2

    .line 81
    .restart local v2    # "index":I
    if-ltz v2, :cond_1

    .line 82
    aget-object v4, p3, v2

    check-cast v4, Landroid/net/Uri;

    .line 83
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "authority":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    invoke-static {v5}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->access$100(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 86
    .local v1, "b":Landroid/net/Uri$Builder;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    invoke-static {v5}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;->access$100(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    const-string/jumbo v5, "TargetAuthority"

    invoke-virtual {v1, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    invoke-virtual {v4}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, p3, v2

    .line 97
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "b":Landroid/net/Uri$Builder;
    .end local v2    # "index":I
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method
