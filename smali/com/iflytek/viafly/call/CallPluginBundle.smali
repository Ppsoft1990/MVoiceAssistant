.class public Lcom/iflytek/viafly/call/CallPluginBundle;
.super Lcom/iflytek/yd/plugin/AbsPluginBundle;
.source "CallPluginBundle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/iflytek/yd/plugin/AbsPluginBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginInstall()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public onPluginStart()V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/call/CallPluginBundle;->getPluginContext()Lcom/iflytek/yd/plugin/IPluginContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/plugin/IPluginContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Landroid/content/Context;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onPluginStop()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onPluginUnInstall()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
