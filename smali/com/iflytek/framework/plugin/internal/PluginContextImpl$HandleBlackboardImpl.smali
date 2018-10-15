.class Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;
.super Ljava/lang/Object;
.source "PluginContextImpl.java"

# interfaces
.implements Lcom/iflytek/yd/util/IHandleBlackboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandleBlackboardImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;->this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
    .param p2, "x1"    # Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$HandleBlackboardImpl;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;)V

    return-void
.end method


# virtual methods
.method public getCarmodeLockStatusOpen()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public getLockStatusOpen()Z
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public setWakeHandler(Lcom/iflytek/yd/speech/ISpeechHandler;)V
    .locals 0
    .param p1, "speechHandler"    # Lcom/iflytek/yd/speech/ISpeechHandler;

    .prologue
    .line 516
    return-void
.end method
