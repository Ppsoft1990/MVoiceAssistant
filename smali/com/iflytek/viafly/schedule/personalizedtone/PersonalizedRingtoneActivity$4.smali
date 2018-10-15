.class Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "PersonalizedRingtoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$4;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "PersonalizedRingtoneActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-------->> onReceive() | action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$4;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->g(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.ALARM_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$4;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->g(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    goto :goto_0

    .line 341
    :cond_2
    const-string/jumbo v1, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$4;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->g(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    goto :goto_0
.end method
