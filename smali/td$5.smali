.class Ltd$5;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltd;


# direct methods
.method constructor <init>(Ltd;)V
    .locals 0
    .param p1, "this$0"    # Ltd;

    .prologue
    .line 960
    iput-object p1, p0, Ltd$5;->a:Ltd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 963
    const-string/jumbo v3, "ApplicationLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive | action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 967
    const-string/jumbo v3, "com.iflytek.cmcc.CALL_STATE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "callState":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "IDLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 969
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_call:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 971
    iget-object v3, p0, Ltd$5;->a:Ltd;

    invoke-static {v3}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Call_Coming:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    .line 972
    invoke-interface {v3, v4}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 973
    iget-object v3, p0, Ltd$5;->a:Ltd;

    invoke-static {v3}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.STOP_READ"

    .line 974
    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 975
    invoke-static {v6}, Ltd;->b(Z)Z

    .line 995
    .end local v1    # "callState":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 977
    .restart local v1    # "callState":Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Ltd;->b(Z)Z

    goto :goto_0

    .line 981
    .end local v1    # "callState":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "com.iflytek.cmcc.action_test_record_file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 982
    const-string/jumbo v3, "ext_test_record_file"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, "file":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lpu;->a(Ljava/lang/String;I)I

    goto :goto_0

    .line 986
    .end local v2    # "file":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "com.iflytek.cmcc.action_manual_test_mode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 987
    invoke-static {v7}, Lpu;->c(Z)V

    goto :goto_0

    .line 990
    :cond_4
    const-string/jumbo v3, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 991
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/business/entities/SystemEvent;->incoming_sms:Lcom/iflytek/framework/business/entities/SystemEvent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 993
    iget-object v3, p0, Ltd$5;->a:Ltd;

    invoke-static {v3}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Sms_Coming:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    invoke-interface {v3, v4}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    goto :goto_0
.end method
