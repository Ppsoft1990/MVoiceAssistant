.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "IActivityManagerHook.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->mOldObj:Ljava/lang/Object;

    return-object v0
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
    .line 109
    return-void
.end method

.method public createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onInstall()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 39
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_3

    .line 40
    const-class v11, Landroid/app/ActivityManager;

    const-string/jumbo v12, "IActivityManagerSingleton"

    invoke-static {v11, v12}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 41
    .local v10, "singleton":Ljava/lang/Object;
    const-string/jumbo v11, "mInstance"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 42
    .local v6, "obj1":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 43
    invoke-static {v10}, Lcom/iflytek/greenplug/common/utils/compat/SingletonCompat;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v11, "mInstance"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 46
    :cond_0
    invoke-virtual {p0, v6}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->setOldObj(Ljava/lang/Object;)V

    .line 47
    iget-object v11, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 48
    .local v7, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v7}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 49
    .local v4, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/Class;

    invoke-interface {v4, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Class;

    move-object v3, v11

    .line 50
    .local v3, "ifs":[Ljava/lang/Class;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v11, v3, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    .line 51
    .local v9, "proxiedActivityManager":Ljava/lang/Object;
    const-string/jumbo v11, "mInstance"

    invoke-static {v10, v11, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .end local v6    # "obj1":Ljava/lang/Object;
    .end local v7    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "proxiedActivityManager":Ljava/lang/Object;
    .end local v10    # "singleton":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    .line 49
    .end local v3    # "ifs":[Ljava/lang/Class;
    .restart local v6    # "obj1":Ljava/lang/Object;
    .restart local v7    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "singleton":Ljava/lang/Object;
    :cond_2
    new-array v3, v13, [Ljava/lang/Class;

    goto :goto_0

    .line 55
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v6    # "obj1":Ljava/lang/Object;
    .end local v7    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "singleton":Ljava/lang/Object;
    :cond_3
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "cls":Ljava/lang/Class;
    const-string/jumbo v11, "gDefault"

    invoke-static {v0, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 57
    .local v5, "obj":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 58
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;->getDefault()Ljava/lang/Object;

    .line 59
    const-string/jumbo v11, "gDefault"

    invoke-static {v0, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 62
    :cond_4
    invoke-static {v5}, Lcom/iflytek/greenplug/common/utils/compat/IActivityManagerCompat;->isIActivityManager(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 63
    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->setOldObj(Ljava/lang/Object;)V

    .line 64
    iget-object v11, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 65
    .restart local v7    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v7}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 66
    .restart local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/Class;

    invoke-interface {v4, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Class;

    move-object v3, v11

    .line 67
    .restart local v3    # "ifs":[Ljava/lang/Class;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v11, v3, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    .line 68
    .restart local v9    # "proxiedActivityManager":Ljava/lang/Object;
    const-string/jumbo v11, "gDefault"

    invoke-static {v0, v11, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    sget-object v11, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Install ActivityManager Hook 1 old="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",new="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    .end local v3    # "ifs":[Ljava/lang/Class;
    .end local v9    # "proxiedActivityManager":Ljava/lang/Object;
    :cond_5
    new-array v3, v13, [Ljava/lang/Class;

    goto :goto_2

    .line 70
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v7    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-static {v5}, Lcom/iflytek/greenplug/common/utils/compat/SingletonCompat;->isSingleton(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 71
    const-string/jumbo v11, "mInstance"

    invoke-static {v5, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 72
    .restart local v6    # "obj1":Ljava/lang/Object;
    if-nez v6, :cond_7

    .line 73
    invoke-static {v5}, Lcom/iflytek/greenplug/common/utils/compat/SingletonCompat;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v11, "mInstance"

    invoke-static {v5, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 76
    :cond_7
    invoke-virtual {p0, v6}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->setOldObj(Ljava/lang/Object;)V

    .line 77
    iget-object v11, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/greenplug/common/utils/reflect/Utils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 78
    .restart local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/Class;

    invoke-interface {v4, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Class;

    move-object v3, v11

    .line 79
    .restart local v3    # "ifs":[Ljava/lang/Class;
    :goto_3
    iget-object v11, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v11, v3, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v8

    .line 80
    .local v8, "object":Ljava/lang/Object;
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;->getDefault()Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "iam1":Ljava/lang/Object;
    const-string/jumbo v11, "mInstance"

    invoke-static {v5, v11, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string/jumbo v11, "gDefault"

    new-instance v12, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook$1;

    invoke-direct {v12, p0, v8}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook$1;-><init>(Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;Ljava/lang/Object;)V

    invoke-static {v0, v11, v12}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    sget-object v11, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Install ActivityManager Hook 2 old="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IActivityManagerHook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",new="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;->getDefault()Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "iam2":Ljava/lang/Object;
    if-ne v1, v2, :cond_1

    .line 99
    const-string/jumbo v11, "mInstance"

    invoke-static {v5, v11, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 78
    .end local v1    # "iam1":Ljava/lang/Object;
    .end local v2    # "iam2":Ljava/lang/Object;
    .end local v3    # "ifs":[Ljava/lang/Class;
    .end local v8    # "object":Ljava/lang/Object;
    :cond_8
    new-array v3, v13, [Ljava/lang/Class;

    goto :goto_3

    .line 102
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v6    # "obj1":Ljava/lang/Object;
    :cond_9
    new-instance v11, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v12, "Can not install IActivityManagerNative hook"

    invoke-direct {v11, v12}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
