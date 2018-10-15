.class public interface abstract Lcom/iflytek/yd/plugin/IPluginContext;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createSpeechHandler()Lcom/iflytek/yd/speech/ISpeechHandler;
.end method

.method public abstract getBluetoothHeadset()Lcom/iflytek/yd/base/IBluetoothHeadset;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDebugLog()Lcom/iflytek/yd/log/IDebugLog;
.end method

.method public abstract getEnviroment()Lcom/iflytek/yd/base/IEnvironment;
.end method

.method public abstract getHandleBlackboard()Lcom/iflytek/yd/util/IHandleBlackboard;
.end method

.method public abstract getLauncher()Lcom/iflytek/yd/ui/ILauncher;
.end method

.method public abstract getOpLog()Lcom/iflytek/yd/business/IOperationLog;
.end method

.method public abstract getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/iflytek/yd/plugin/IPluginAbility;",
            ">;)",
            "Lcom/iflytek/yd/plugin/IPluginAbility;"
        }
    .end annotation
.end method

.method public abstract getPowerManager()Lcom/iflytek/yd/base/IPowerManager;
.end method

.method public abstract getProcessRegist()Lcom/iflytek/yd/base/IProcessRegist;
.end method

.method public abstract getResourceId(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getRingToneManager()Lcom/iflytek/yd/base/IRingToneManager;
.end method

.method public abstract getSettings(Ljava/lang/String;)Lcom/iflytek/yd/util/ISettings;
.end method

.method public abstract getTtsHandler()Lcom/iflytek/yd/speech/ITtsHandler;
.end method
