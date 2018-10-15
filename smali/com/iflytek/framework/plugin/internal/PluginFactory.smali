.class public final Lcom/iflytek/framework/plugin/internal/PluginFactory;
.super Ljava/lang/Object;
.source "PluginFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->initManager(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public static getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->getInstance()Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static registObservers(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 37
    invoke-static {p0}, Ljx;->a(Landroid/content/Context;)Ljx;

    move-result-object v2

    .line 35
    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->registPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z

    .line 43
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    const/4 v1, 0x5

    .line 45
    invoke-static {}, Lcom/iflytek/common/adaptation/AdaptationManager;->getInstance()Lcom/iflytek/common/adaptation/AdaptationManager;

    move-result-object v2

    .line 43
    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->registPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z

    .line 47
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    const/4 v1, 0x7

    .line 49
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->registPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z

    .line 50
    return-void
.end method
