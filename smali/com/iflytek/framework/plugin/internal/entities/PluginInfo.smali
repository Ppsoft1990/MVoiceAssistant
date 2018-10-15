.class public final Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;


# instance fields
.field private mPluginInterface:Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

.field private mPluginResource:Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

.field private mPluginSummary:Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginSummary:Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    .line 23
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginInterface()Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginInterface:Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    .line 24
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginResource()Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginResource:Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    .line 25
    return-void
.end method


# virtual methods
.method public getPluginInterface()Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginInterface:Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    return-object v0
.end method

.method public getPluginResource()Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginResource:Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    return-object v0
.end method

.method public getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginSummary:Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    return-object v0
.end method

.method public setPluginInterface(Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;)V
    .locals 0
    .param p1, "pluginInterface"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginInterface:Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    .line 48
    return-void
.end method

.method public setPluginResource(Lcom/iflytek/framework/plugin/internal/entities/PluginResource;)V
    .locals 0
    .param p1, "pluginResource"    # Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginResource:Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    .line 44
    return-void
.end method

.method public setPluginSummary(Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;)V
    .locals 0
    .param p1, "pluginSummary"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->mPluginSummary:Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    .line 52
    return-void
.end method
