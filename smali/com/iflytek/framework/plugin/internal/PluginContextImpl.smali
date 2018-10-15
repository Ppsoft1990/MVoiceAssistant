.class final Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
.super Ljava/lang/Object;
.source "PluginContextImpl.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginRegistManager;
.implements Lcom/iflytek/yd/plugin/IPluginContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;,
        Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;,
        Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;,
        Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;,
        Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;,
        Lcom/iflytek/framework/plugin/internal/PluginContextImpl$DebugLogAdapter;
    }
.end annotation


# instance fields
.field private mBluetoothHeadset:Lcom/iflytek/yd/base/IBluetoothHeadset;

.field private mContext:Landroid/content/Context;

.field private mDebugLog:Lcom/iflytek/yd/log/IDebugLog;

.field private mEnvironment:Lcom/iflytek/yd/base/IEnvironment;

.field private mHandleBlackboardImpl:Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;

.field private mLauncher:Lcom/iflytek/yd/ui/ILauncher;

.field private mPluginId:Ljava/lang/String;

.field private mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

.field private mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

.field private mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/yd/util/ISettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/plugin/internal/PluginLoader;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/iflytek/framework/plugin/internal/PluginLoader;
    .param p3, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mSettings:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->getInstance()Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    .line 76
    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    .line 77
    iput-object p3, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginId:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public createSpeechHandler()Lcom/iflytek/yd/speech/ISpeechHandler;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;->newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothHeadset()Lcom/iflytek/yd/base/IBluetoothHeadset;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mBluetoothHeadset:Lcom/iflytek/yd/base/IBluetoothHeadset;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mBluetoothHeadset:Lcom/iflytek/yd/base/IBluetoothHeadset;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mBluetoothHeadset:Lcom/iflytek/yd/base/IBluetoothHeadset;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDebugLog()Lcom/iflytek/yd/log/IDebugLog;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mDebugLog:Lcom/iflytek/yd/log/IDebugLog;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$DebugLogAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$DebugLogAdapter;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mDebugLog:Lcom/iflytek/yd/log/IDebugLog;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mDebugLog:Lcom/iflytek/yd/log/IDebugLog;

    return-object v0
.end method

.method public getEnviroment()Lcom/iflytek/yd/base/IEnvironment;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mEnvironment:Lcom/iflytek/yd/base/IEnvironment;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$EnvironmentAdapter;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mEnvironment:Lcom/iflytek/yd/base/IEnvironment;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mEnvironment:Lcom/iflytek/yd/base/IEnvironment;

    return-object v0
.end method

.method public getHandleBlackboard()Lcom/iflytek/yd/util/IHandleBlackboard;
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mHandleBlackboardImpl:Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mHandleBlackboardImpl:Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mHandleBlackboardImpl:Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;

    return-object v0
.end method

.method public getLauncher()Lcom/iflytek/yd/ui/ILauncher;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mLauncher:Lcom/iflytek/yd/ui/ILauncher;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mLauncher:Lcom/iflytek/yd/ui/ILauncher;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mLauncher:Lcom/iflytek/yd/ui/ILauncher;

    return-object v0
.end method

.method public getOpLog()Lcom/iflytek/yd/business/IOperationLog;
    .locals 2

    .prologue
    .line 549
    new-instance v0, Lwq;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lwq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "abilityClass"    # Ljava/lang/Class;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPowerManager()Lcom/iflytek/yd/base/IPowerManager;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    return-object v0
.end method

.method public getProcessRegist()Lcom/iflytek/yd/base/IProcessRegist;
    .locals 1

    .prologue
    .line 554
    invoke-static {}, Laql;->a()Laql;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRingToneManager()Lcom/iflytek/yd/base/IRingToneManager;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v0

    return-object v0
.end method

.method public getSettings(Ljava/lang/String;)Lcom/iflytek/yd/util/ISettings;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/ISettings;

    .line 124
    :goto_0
    return-object v1

    .line 122
    :cond_0
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$SettingAdapter;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    .local v0, "settings":Lcom/iflytek/yd/util/ISettings;
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mSettings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 124
    goto :goto_0
.end method

.method public getTtsHandler()Lcom/iflytek/yd/speech/ITtsHandler;
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljf;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljf;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public registPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "observer"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->registPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegistPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "observer"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->unRegistPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
