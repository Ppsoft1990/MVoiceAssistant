.class public abstract Lcom/iflytek/greenplug/client/stub/StubReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StubReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StubReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string/jumbo v0, "StubReceiver"

    const-string/jumbo v1, "StubReceiver onReceive, check hook now"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/HookFactory;->getInstance()Lcom/iflytek/greenplug/client/hook/HookFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/greenplug/client/hook/HookFactory;->checkHook()V

    .line 22
    return-void
.end method
