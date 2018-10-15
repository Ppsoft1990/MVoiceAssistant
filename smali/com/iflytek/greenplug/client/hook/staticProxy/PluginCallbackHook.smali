.class public Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "PluginCallbackHook.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public checkInstall()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v5

    .line 64
    .local v5, "target":Ljava/lang/Object;
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->activityThreadClass()Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, "ActivityThreadClass":Ljava/lang/Class;
    const-string/jumbo v6, "mH"

    invoke-static {v0, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 68
    .local v3, "mHField":Ljava/lang/reflect/Field;
    invoke-static {v3, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 69
    .local v1, "handler":Landroid/os/Handler;
    const-class v6, Landroid/os/Handler;

    const-string/jumbo v7, "mCallback"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 71
    .local v2, "mCallbackField":Ljava/lang/reflect/Field;
    invoke-static {v2, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    .local v4, "mOldCallback":Ljava/lang/Object;
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    if-eq v6, v4, :cond_0

    .line 75
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    invoke-static {v2, v1, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    sget-object v6, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkInstall PluginCallbackHook success, old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v6, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkInstall PluginCallbackHook end, PluginCallbackHook is ok"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInstall()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v5

    .line 43
    .local v5, "target":Ljava/lang/Object;
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->activityThreadClass()Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "ActivityThreadClass":Ljava/lang/Class;
    const-string/jumbo v6, "mH"

    invoke-static {v0, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 47
    .local v3, "mHField":Ljava/lang/reflect/Field;
    invoke-static {v3, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 48
    .local v1, "handler":Landroid/os/Handler;
    const-class v6, Landroid/os/Handler;

    const-string/jumbo v7, "mCallback"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 50
    .local v2, "mCallbackField":Ljava/lang/reflect/Field;
    invoke-static {v2, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 51
    .local v4, "mOldCallback":Ljava/lang/Object;
    const-class v6, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 52
    if-eqz v4, :cond_0

    new-instance v7, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mHostContext:Landroid/content/Context;

    move-object v6, v4

    check-cast v6, Landroid/os/Handler$Callback;

    invoke-direct {v7, v8, v1, v6}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    move-object v6, v7

    :goto_0
    iput-object v6, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    .line 53
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->isEnable()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->setEnable(Z)V

    .line 54
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    invoke-static {v2, v1, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    sget-object v6, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Install PluginCallbackHook end, old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_1
    return-void

    .line 52
    :cond_0
    new-instance v6, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mHostContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v1, v8}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    goto :goto_0

    .line 57
    :cond_1
    sget-object v6, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "PluginCallbackHook has installed,skip"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;->setEnable(Z)V

    .line 35
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/PluginCallbackHook;->mPluginCallback:Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginCallback;->setEnable(Z)V

    .line 38
    :cond_0
    return-void
.end method
