.class abstract Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "LibCoreHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "data/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->a:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getContextDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "tarDir"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 84
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 89
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const-string/jumbo v2, "%s/PluginPackageInfo/%s/data/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 97
    .end local v0    # "index":I
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a([Ljava/lang/Object;I)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 68
    if-eqz p1, :cond_0

    array-length v2, p1

    if-le v2, p2, :cond_0

    aget-object v2, p1, p2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 69
    aget-object v1, p1, p2

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "newPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    aput-object v0, p1, p2

    .line 75
    .end local v0    # "newPath":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "index":I
    invoke-virtual {p0, p3, v0}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->a([Ljava/lang/Object;I)V

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
