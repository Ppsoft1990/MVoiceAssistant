.class Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleRingToneSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$3;->a:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 329
    const-string/jumbo v1, "ScheduleRingToneSetActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBroadcastReceiver || action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string/jumbo v1, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$3;->a:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->b(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    const-string/jumbo v1, "ScheduleRingToneSetActivity"

    const-string/jumbo v2, "onReceive | CALL_RECEIVE_ACTION"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_STATE"

    .line 338
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "callState":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "IDLE"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$3;->a:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->b(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V

    goto :goto_0

    .line 343
    .end local v0    # "callState":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "com.iflytek.cmccACTION_ALARM_ALERT"

    .line 344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$3;->a:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->b(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V

    goto :goto_0
.end method
