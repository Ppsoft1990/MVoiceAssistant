.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# instance fields
.field private a:Landroid/content/pm/ProviderInfo;

.field private b:Landroid/content/pm/ProviderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 661
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 664
    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    .line 665
    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    .line 662
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fromObj"    # Ljava/lang/Object;
    .param p2, "toObj"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 753
    const-string/jumbo v0, "connection"

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "fromObj"    # Ljava/lang/Object;
    .param p2, "toObj"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-static {p1, p3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "invokeResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 700
    if-eqz p4, :cond_3

    .line 701
    const-string/jumbo v2, "info"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ProviderInfo;

    .line 702
    .local v12, "stubProvider2":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_6

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 704
    move-object/from16 v8, p4

    .line 705
    .local v8, "fromObj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    invoke-static {v2}, Lcom/iflytek/greenplug/common/utils/compat/ContentProviderHolderCompat;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 707
    .local v13, "toObj":Ljava/lang/Object;
    const-string/jumbo v2, "provider"

    invoke-direct {p0, v8, v13, v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 710
    invoke-direct {p0, v8, v13}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 714
    :cond_0
    const-string/jumbo v2, "noReleaseNeeded"

    invoke-direct {p0, v8, v13, v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    const-string/jumbo v2, "provider"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 717
    .local v3, "provider":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 718
    const-string/jumbo v2, "provider"

    invoke-static {v13, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v6, 0x1

    .line 719
    .local v6, "localProvider":Z
    :goto_0
    new-instance v1, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->mHostContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;Z)V

    .line 720
    .local v1, "invocationHandler":Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->setEnable(Z)V

    .line 721
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 722
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v7}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 723
    .local v10, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Class;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    move-object v9, v2

    .line 724
    .local v9, "ifs":[Ljava/lang/Class;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v9, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v11

    .line 725
    .local v11, "proxyprovider":Ljava/lang/Object;
    const-string/jumbo v2, "provider"

    move-object/from16 v0, p4

    invoke-static {v0, v2, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    const-string/jumbo v2, "provider"

    invoke-static {v13, v2, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    .end local v1    # "invocationHandler":Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;
    .end local v6    # "localProvider":Z
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "ifs":[Ljava/lang/Class;
    .end local v10    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v11    # "proxyprovider":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v13}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->setFakedResult(Ljava/lang/Object;)V

    .line 742
    .end local v3    # "provider":Ljava/lang/Object;
    .end local v8    # "fromObj":Ljava/lang/Object;
    .end local v13    # "toObj":Ljava/lang/Object;
    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    .line 743
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    .line 745
    .end local v12    # "stubProvider2":Landroid/content/pm/ProviderInfo;
    :cond_3
    return-void

    .line 718
    .restart local v3    # "provider":Ljava/lang/Object;
    .restart local v8    # "fromObj":Ljava/lang/Object;
    .restart local v12    # "stubProvider2":Landroid/content/pm/ProviderInfo;
    .restart local v13    # "toObj":Ljava/lang/Object;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 723
    .restart local v1    # "invocationHandler":Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;
    .restart local v6    # "localProvider":Z
    .restart local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_5
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Class;

    goto :goto_1

    .line 729
    .end local v1    # "invocationHandler":Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;
    .end local v3    # "provider":Ljava/lang/Object;
    .end local v6    # "localProvider":Z
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fromObj":Ljava/lang/Object;
    .end local v10    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v13    # "toObj":Ljava/lang/Object;
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_2

    .line 730
    const-string/jumbo v2, "provider"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 731
    .restart local v3    # "provider":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 732
    const-string/jumbo v2, "provider"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v6, 0x1

    .line 733
    .restart local v6    # "localProvider":Z
    :goto_3
    new-instance v1, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->mHostContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;Z)V

    .line 734
    .restart local v1    # "invocationHandler":Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->setEnable(Z)V

    .line 735
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 736
    .restart local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v7}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 737
    .restart local v10    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Class;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    move-object v9, v2

    .line 738
    .restart local v9    # "ifs":[Ljava/lang/Class;
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v9, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v11

    .line 739
    .restart local v11    # "proxyprovider":Ljava/lang/Object;
    const-string/jumbo v2, "provider"

    move-object/from16 v0, p4

    invoke-static {v0, v2, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 732
    .end local v1    # "invocationHandler":Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;
    .end local v6    # "localProvider":Z
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "ifs":[Ljava/lang/Class;
    .end local v10    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v11    # "proxyprovider":Ljava/lang/Object;
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 737
    .restart local v1    # "invocationHandler":Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;
    .restart local v6    # "localProvider":Z
    .restart local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_8
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Class;

    goto :goto_4
.end method

.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 7
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 669
    if-eqz p3, :cond_0

    .line 670
    const/4 v0, 0x1

    .line 671
    .local v0, "index":I
    array-length v3, p3

    if-le v3, v5, :cond_0

    aget-object v3, p3, v5

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 672
    aget-object v2, p3, v5

    check-cast v2, Ljava/lang/String;

    .line 673
    .local v2, "name":Ljava/lang/String;
    iput-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    .line 674
    iput-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    .line 676
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->mHostContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 677
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/iflytek/greenplug/client/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    .line 680
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 681
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/greenplug/client/PluginManager;->selectStubProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    .line 684
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_1

    .line 685
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->a:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    aput-object v3, p3, v5

    .line 695
    .end local v0    # "index":I
    .end local v1    # "info":Landroid/content/pm/ProviderInfo;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 687
    .restart local v0    # "index":I
    .restart local v1    # "info":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getContentProvider,fake fail 1"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_2
    iput-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;->b:Landroid/content/pm/ProviderInfo;

    .line 691
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getContentProvider,fake fail 2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
