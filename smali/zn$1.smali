.class Lzn$1;
.super Ljava/lang/Object;
.source "CAFNotificationManager.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzn;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzn;


# direct methods
.method constructor <init>(Lzn;)V
    .locals 0
    .param p1, "this$0"    # Lzn;

    .prologue
    .line 99
    iput-object p1, p0, Lzn$1;->a:Lzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 3
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 102
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "alarm triggered."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lzn$1;->a:Lzn;

    invoke-static {v0}, Lzn;->a(Lzn;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.viafly.cafnotification.ACTION_UPDATE_TIME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
