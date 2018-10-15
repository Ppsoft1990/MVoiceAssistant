.class public interface abstract Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;
.super Ljava/lang/Object;
.source "IPluginManager.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginRegistManager;


# virtual methods
.method public abstract checkApkPluginExist(Ljava/lang/String;)Z
.end method

.method public abstract checkNeedUpdatePlugin(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;Ljava/lang/String;)Z
.end method

.method public abstract checkNetPluginUpdate(Ljava/util/List;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract checkPluginGrayControl(I)Z
.end method

.method public abstract enterPlugin(I)I
.end method

.method public abstract getLocalPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
.end method

.method public abstract getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
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

.method public abstract getPluginEntryType(I)I
.end method

.method public abstract getPluginSkinClass(I)Ljava/lang/String;
.end method

.method public abstract getPluginState(I)I
.end method

.method public abstract getPlugins(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleAppChanged(ILjava/lang/String;)V
.end method

.method public abstract installExistApkPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
.end method

.method public abstract installPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
.end method

.method public abstract isLoadFinish()Z
.end method

.method public abstract loadAllPlugins(Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
.end method

.method public abstract startPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
.end method

.method public abstract stopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
.end method

.method public abstract syncLoadPlugin(I)I
.end method

.method public abstract uninstallPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
.end method
