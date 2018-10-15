.class public final Lcom/iflytek/framework/plugin/internal/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;


# instance fields
.field private mCreateTimeStamp:J

.field private mPluginAbilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/plugin/IPluginAbility;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginBundle:Lcom/iflytek/yd/plugin/AbsPluginBundle;

.field private mPluginClassLoader:Ljava/lang/ClassLoader;

.field private mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "createTimeStamp"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mCreateTimeStamp:J

    .line 36
    return-void
.end method


# virtual methods
.method public finalizePlugin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    iput-object v2, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginBundle:Lcom/iflytek/yd/plugin/AbsPluginBundle;

    .line 111
    iput-object v2, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    .line 112
    iput-object v2, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginAbilities:Ljava/util/List;

    .line 114
    :cond_0
    return-void
.end method

.method public getIsAPkPlugin()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    invoke-interface {v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 76
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getIsApk()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 80
    .end local v0    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return v1

    .restart local v0    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :cond_0
    move v1, v2

    .line 77
    goto :goto_0

    .end local v0    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :cond_1
    move v1, v2

    .line 80
    goto :goto_0
.end method

.method public getPluginAbilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/plugin/IPluginAbility;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginAbilities:Ljava/util/List;

    return-object v0
.end method

.method public getPluginBundle()Lcom/iflytek/yd/plugin/AbsPluginBundle;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginBundle:Lcom/iflytek/yd/plugin/AbsPluginBundle;

    return-object v0
.end method

.method public getPluginCreateTime()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mCreateTimeStamp:J

    return-wide v0
.end method

.method public getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    return-object v0
.end method

.method public getPluginKind()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 148
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getKind()Ljava/lang/String;

    move-result-object v1

    .line 153
    .end local v0    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getPluginLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getPluginPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 120
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .end local v0    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPluginState()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginBundle:Lcom/iflytek/yd/plugin/AbsPluginBundle;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginBundle:Lcom/iflytek/yd/plugin/AbsPluginBundle;

    invoke-virtual {v0}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->getPluginState()I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPluginType()I
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 65
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v1

    .line 69
    .end local v0    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPluginVersion()I
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 137
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v1

    .line 141
    .end local v0    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPluginAbilities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/plugin/IPluginAbility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "pluginAbilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginAbilities:Ljava/util/List;

    .line 105
    return-void
.end method

.method public setPluginBundle(Lcom/iflytek/yd/plugin/AbsPluginBundle;)V
    .locals 0
    .param p1, "pluginBundle"    # Lcom/iflytek/yd/plugin/AbsPluginBundle;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginBundle:Lcom/iflytek/yd/plugin/AbsPluginBundle;

    .line 95
    return-void
.end method

.method public setPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;)V
    .locals 0
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginInfo:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    .line 100
    return-void
.end method

.method protected setPluginLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/Plugin;->mPluginClassLoader:Ljava/lang/ClassLoader;

    .line 59
    return-void
.end method
