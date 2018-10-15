.class public Ljy;
.super Ljava/lang/Object;
.source "WakeProxy.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendData([BI)I
    .locals 1
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public resetCache()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public start(Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 38
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
