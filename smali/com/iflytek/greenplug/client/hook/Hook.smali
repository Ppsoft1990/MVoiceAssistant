.class public abstract Lcom/iflytek/greenplug/client/hook/Hook;
.super Ljava/lang/Object;
.source "Hook.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private mEnable:Z

.field public mHookHandles:Lcom/iflytek/greenplug/client/hook/BaseHookHandle;

.field public mHostContext:Landroid/content/Context;

.field public mOldObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mEnable:Z

    .line 23
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mHostContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/Hook;->createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mHookHandles:Lcom/iflytek/greenplug/client/hook/BaseHookHandle;

    .line 25
    return-void
.end method

.method private isMethodDeclaredThrowable(Ljava/lang/reflect/Method;Ljava/lang/Throwable;)Z
    .locals 9
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    instance-of v6, p2, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v4

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v4, v5

    .line 109
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 113
    .local v1, "es":[Ljava/lang/Class;
    if-nez v1, :cond_4

    array-length v6, v1

    if-gtz v6, :cond_4

    move v4, v5

    .line 114
    goto :goto_0

    .line 133
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "methodName":Ljava/lang/String;
    const-string/jumbo v6, "accept"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "sendto"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    move v3, v4

    .line 135
    .local v3, "va":Z
    :goto_1
    instance-of v6, p2, Ljava/net/SocketException;

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "libcore"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gez v6, :cond_0

    .line 142
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "va":Z
    :cond_6
    :goto_2
    array-length v7, v1

    move v6, v5

    :goto_3
    if-ge v6, v7, :cond_8

    aget-object v0, v1, v6

    .line 143
    .local v0, "aClass":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v0    # "aClass":Ljava/lang/Class;
    .restart local v2    # "methodName":Ljava/lang/String;
    :cond_7
    move v3, v5

    .line 134
    goto :goto_1

    .end local v2    # "methodName":Ljava/lang/String;
    :cond_8
    move v4, v5

    .line 147
    goto :goto_0

    .line 138
    :catch_0
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public abstract checkInstall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/Hook;->isEnable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 48
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {p2, v7, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 54
    :goto_0
    return-object v7

    .line 50
    :cond_0
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mHookHandles:Lcom/iflytek/greenplug/client/hook/BaseHookHandle;

    invoke-virtual {v7, p2}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;->getHookedMethodHandler(Ljava/lang/reflect/Method;)Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;

    move-result-object v3

    .line 51
    .local v3, "hookedMethodHandler":Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
    if-eqz v3, :cond_1

    .line 52
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {v3, v7, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->doHookInner(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 54
    :cond_1
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mOldObj:Ljava/lang/Object;

    invoke-virtual {p2, v7, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    goto :goto_0

    .line 55
    .end local v3    # "hookedMethodHandler":Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 57
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    invoke-direct {p0, p2, v0}, Lcom/iflytek/greenplug/client/hook/Hook;->isMethodDeclaredThrowable(Ljava/lang/reflect/Method;Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 58
    throw v0

    .line 59
    :cond_2
    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    .local v5, "runtimeException":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 62
    throw v5

    .line 60
    .end local v5    # "runtimeException":Ljava/lang/RuntimeException;
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v5    # "runtimeException":Ljava/lang/RuntimeException;
    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 66
    throw v5

    .line 64
    .end local v5    # "runtimeException":Ljava/lang/RuntimeException;
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_2

    .line 68
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, " DROIDPLUGIN{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    if-eqz p2, :cond_6

    .line 73
    const-string/jumbo v7, "method["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_3
    if-eqz p3, :cond_7

    .line 78
    const-string/jumbo v7, "args["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_4
    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "message":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v2

    .line 87
    .local v2, "e1":Ljava/lang/Throwable;
    throw v1

    .line 75
    .end local v2    # "e1":Ljava/lang/Throwable;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_2
    const-string/jumbo v7, "method["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 80
    :cond_7
    const-string/jumbo v7, "args["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 89
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Throwable;
    invoke-direct {p0, p2, v1}, Lcom/iflytek/greenplug/client/hook/Hook;->isMethodDeclaredThrowable(Ljava/lang/reflect/Method;Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 91
    throw v1

    .line 93
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v5    # "runtimeException":Ljava/lang/RuntimeException;
    :goto_5
    invoke-virtual {v5, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    throw v5

    .line 93
    .end local v5    # "runtimeException":Ljava/lang/RuntimeException;
    :cond_9
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_5
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mEnable:Z

    return v0
.end method

.method public abstract onInstall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mEnable:Z

    .line 33
    return-void
.end method

.method public setOldObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "oldObj"    # Ljava/lang/Object;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/Hook;->mOldObj:Ljava/lang/Object;

    .line 43
    return-void
.end method
