.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "LibCoreHook.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private getAllInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 9
    .param p1, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, "re":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 34
    .local v1, "ifss":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v1, v5

    .line 35
    .local v0, "ifs":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "ifs":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 41
    .local v4, "superclass":Ljava/lang/Class;
    :goto_1
    if-eqz v4, :cond_4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 43
    .local v3, "sifss":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v3

    move v5, v6

    :goto_2
    if-ge v5, v7, :cond_3

    aget-object v0, v3, v5

    .line 44
    .restart local v0    # "ifs":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 45
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 48
    .end local v0    # "ifs":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 49
    goto :goto_1

    .line 50
    .end local v3    # "sifss":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Class;

    return-object v5
.end method

.method private installHook1()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 62
    :try_start_0
    const-string/jumbo v8, "libcore.io.Libcore"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "LibCore":Ljava/lang/Class;
    const-string/jumbo v8, "os"

    invoke-static {v0, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "LibCoreOs":Ljava/lang/Object;
    const-string/jumbo v8, "os"

    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 65
    .local v2, "Posix":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->setOldObj(Ljava/lang/Object;)V

    .line 66
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 67
    .local v3, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v3}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->getAllInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v5

    .line 68
    .local v5, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v8, v5, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    .line 69
    .local v6, "proxyObj":Ljava/lang/Object;
    const-string/jumbo v8, "os"

    const/4 v9, 0x1

    invoke-static {v1, v8, v6, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "LibCore":Ljava/lang/Class;
    .end local v1    # "LibCoreOs":Ljava/lang/Object;
    .end local v2    # "Posix":Ljava/lang/Object;
    .end local v3    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "proxyObj":Ljava/lang/Object;
    :goto_0
    return v7

    .line 71
    :catch_0
    move-exception v4

    .line 72
    .local v4, "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "installHook2 fail"

    invoke-static {v7, v8, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private installHook2()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v5, "libcore.io.Libcore"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "LibCore":Ljava/lang/Class;
    const-string/jumbo v5, "os"

    invoke-static {v0, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 80
    .local v3, "oldObj":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->setOldObj(Ljava/lang/Object;)V

    .line 81
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 82
    .local v1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->getAllInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v2

    .line 83
    .local v2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 84
    .local v4, "proxyObj":Ljava/lang/Object;
    const-string/jumbo v5, "os"

    invoke-static {v0, v5, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method


# virtual methods
.method public checkInstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onInstall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->installHook1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/LibCoreHook;->installHook2()V

    .line 58
    :cond_0
    return-void
.end method
