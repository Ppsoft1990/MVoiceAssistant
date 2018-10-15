.class public Lcom/iflytek/base/alarm/AlarmReceiver;
.super Lcom/iflytek/viafly/AbsBroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/iflytek/viafly/AbsBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 19
    if-eqz p2, :cond_0

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_ALARM_TRIGGER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string/jumbo v2, "module_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "moduleName":Ljava/lang/String;
    const-string/jumbo v2, "alarm_id"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 24
    .local v1, "requestCode":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eq v1, v4, :cond_0

    .line 27
    invoke-static {p1}, Lgo;->a(Landroid/content/Context;)Lgo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lgo;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
