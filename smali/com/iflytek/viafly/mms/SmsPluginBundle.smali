.class public Lcom/iflytek/viafly/mms/SmsPluginBundle;
.super Lcom/iflytek/yd/plugin/AbsPluginBundle;
.source "SmsPluginBundle.java"


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
    invoke-static {}, Laop;->a()Laop;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/SmsPluginBundle;->getPluginContext()Lcom/iflytek/yd/plugin/IPluginContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/plugin/IPluginContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Laop;->a(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public onPluginStop()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onPluginUnInstall()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
