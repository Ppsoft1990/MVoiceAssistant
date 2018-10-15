.class Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IMountServiceHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle;

    .line 27
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 12
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 32
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_5

    .line 33
    const/4 v3, 0x0

    .line 34
    .local v3, "index":I
    if-eqz p3, :cond_0

    array-length v8, p3

    if-lez v8, :cond_0

    aget-object v8, p3, v10

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 35
    aget-object v0, p3, v10

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "callingPkg":Ljava/lang/String;
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 37
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p3, v10

    .line 42
    .end local v0    # "callingPkg":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    .line 43
    .local v4, "index1":I
    if-eqz p3, :cond_4

    array-length v8, p3

    if-le v8, v11, :cond_4

    aget-object v8, p3, v11

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 44
    aget-object v5, p3, v11

    check-cast v5, Ljava/lang/String;

    .line 46
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_4

    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_4

    .line 47
    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "dirs":[Ljava/lang/String;
    if-eqz v1, :cond_4

    array-length v8, v1

    if-lez v8, :cond_4

    .line 49
    const/4 v6, 0x0

    .line 50
    .local v6, "pluginPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v1

    if-ge v2, v8, :cond_3

    .line 51
    aget-object v7, v1, v2

    .line 52
    .local v7, "str":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 50
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v7}, Lcom/iflytek/greenplug/common/utils/Utils;->validateJavaIdentifier(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 58
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 59
    move-object v6, v7

    .line 63
    .end local v7    # "str":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/Plugin/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    aput-object v5, p3, v11

    .line 102
    .end local v1    # "dirs":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "pluginPackageName":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v8

    return v8

    .line 72
    .end local v4    # "index1":I
    :cond_5
    const/4 v4, 0x0

    .line 73
    .restart local v4    # "index1":I
    if-eqz p3, :cond_4

    array-length v8, p3

    if-lez v8, :cond_4

    aget-object v8, p3, v10

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 74
    aget-object v5, p3, v10

    check-cast v5, Ljava/lang/String;

    .line 76
    .restart local v5    # "path":Ljava/lang/String;
    if-eqz v5, :cond_4

    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_4

    .line 77
    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "dirs":[Ljava/lang/String;
    if-eqz v1, :cond_4

    array-length v8, v1

    if-lez v8, :cond_4

    .line 79
    const/4 v6, 0x0

    .line 80
    .restart local v6    # "pluginPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v8, v1

    if-ge v2, v8, :cond_8

    .line 81
    aget-object v7, v1, v2

    .line 82
    .restart local v7    # "str":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 80
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 85
    :cond_7
    invoke-static {v7}, Lcom/iflytek/greenplug/common/utils/Utils;->validateJavaIdentifier(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 88
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 89
    move-object v6, v7

    .line 93
    .end local v7    # "str":Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_4

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/IMountServiceHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/Plugin/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    aput-object v5, p3, v10

    goto :goto_1
.end method
