.class public interface abstract Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
.super Ljava/lang/Object;
.source "IPlugin.java"


# virtual methods
.method public abstract finalizePlugin()V
.end method

.method public abstract getIsAPkPlugin()Z
.end method

.method public abstract getPluginAbilities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/plugin/IPluginAbility;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPluginBundle()Lcom/iflytek/yd/plugin/AbsPluginBundle;
.end method

.method public abstract getPluginCreateTime()J
.end method

.method public abstract getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
.end method

.method public abstract getPluginKind()Ljava/lang/String;
.end method

.method public abstract getPluginPackageName()Ljava/lang/String;
.end method

.method public abstract getPluginState()I
.end method

.method public abstract getPluginType()I
.end method

.method public abstract getPluginVersion()I
.end method

.method public abstract setPluginAbilities(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/plugin/IPluginAbility;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPluginBundle(Lcom/iflytek/yd/plugin/AbsPluginBundle;)V
.end method

.method public abstract setPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;)V
.end method
