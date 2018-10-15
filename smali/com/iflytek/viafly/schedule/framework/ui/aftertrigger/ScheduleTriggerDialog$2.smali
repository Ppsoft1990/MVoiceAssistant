.class Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleTriggerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.NEWS_TTS_STOP_OR_START_ANIMATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    const-string/jumbo v1, "isStop"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 213
    .local v0, "isStop":Z
    if-eqz v0, :cond_1

    .line 214
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    .end local v0    # "isStop":Z
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local v0    # "isStop":Z
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->a(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 219
    .end local v0    # "isStop":Z
    :cond_2
    const-string/jumbo v1, "com.iflytek.cmccACTION_PAUSE_ALERT_PLAYING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-static {v1}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v1

    const/4 v2, 0x0

    .line 221
    invoke-interface {v1, v2}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 222
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->finish()V

    goto :goto_0

    .line 224
    :cond_3
    const-string/jumbo v1, "com.iflytek.cmcc.CLOSE_TRIGGER_DIALOG"

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->finish()V

    goto :goto_0
.end method
