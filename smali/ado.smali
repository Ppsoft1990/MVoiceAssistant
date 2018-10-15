.class public Lado;
.super Ljava/lang/Object;
.source "SpeechPluginAdapter.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lado;->a:I

    return-void
.end method

.method private static a()I
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    .line 80
    .local v0, "currentPlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    .line 83
    :cond_0
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v1

    .line 84
    .local v1, "currentVersion":I
    goto :goto_0
.end method

.method public static a(I)V
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 28
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1

    .line 29
    sget v0, Lado;->a:I

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lado;->a()I

    move-result v0

    sput v0, Lado;->a:I

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_0

    .line 33
    invoke-static {}, Lado;->a()I

    move-result v0

    sput v0, Lado;->a:I

    goto :goto_0
.end method
