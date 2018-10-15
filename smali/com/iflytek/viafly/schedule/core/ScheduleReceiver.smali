.class public Lcom/iflytek/viafly/schedule/core/ScheduleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleReceiver.java"


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
    .line 19
    const-string/jumbo v0, "ScheduleReceiver"

    const-string/jumbo v1, "ScheduleReceiver"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method
