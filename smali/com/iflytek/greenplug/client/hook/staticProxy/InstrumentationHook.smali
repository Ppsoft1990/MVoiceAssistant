.class public Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "InstrumentationHook.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public checkInstall()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v3

    .line 63
    .local v3, "target":Ljava/lang/Object;
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->activityThreadClass()Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "ActivityThreadClass":Ljava/lang/Class;
    const-string/jumbo v4, "mInstrumentation"

    invoke-static {v0, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 67
    .local v1, "mInstrumentationField":Ljava/lang/reflect/Field;
    invoke-static {v1, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation;

    .line 68
    .local v2, "mOldInstrumentation":Landroid/app/Instrumentation;
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    if-eq v4, v2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    invoke-static {v1, v3, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    sget-object v4, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkInstall InstrumentationHook success, old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v4, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkInstall InstrumentationHook end, InstrumentationHook is ok"

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInstall()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread()Ljava/lang/Object;

    move-result-object v3

    .line 45
    .local v3, "target":Ljava/lang/Object;
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->activityThreadClass()Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "ActivityThreadClass":Ljava/lang/Class;
    const-string/jumbo v4, "mInstrumentation"

    invoke-static {v0, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 49
    .local v1, "mInstrumentationField":Ljava/lang/reflect/Field;
    invoke-static {v1, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation;

    .line 50
    .local v2, "mOldInstrumentation":Landroid/app/Instrumentation;
    const-class v4, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    new-instance v4, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;-><init>(Landroid/content/Context;Landroid/app/Instrumentation;)V

    iput-object v4, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    .line 52
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->isEnable()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->setEnable(Z)V

    .line 53
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    invoke-static {v1, v3, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    sget-object v4, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Install InstrumentationHook end, old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v4, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Instrumentation has installed,skip"

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;->setEnable(Z)V

    .line 37
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/staticProxy/InstrumentationHook;->mPluginInstrumentation:Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;

    invoke-virtual {v0, p1}, Lcom/iflytek/greenplug/client/hook/handle/PluginInstrumentation;->setEnable(Z)V

    .line 40
    :cond_0
    return-void
.end method
