.class public Lcom/iflytek/base/mms/SmsSendReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsSendReceiver.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/base/mms/SmsSendReceiver;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/iflytek/base/mms/SmsSendReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/iflytek/base/mms/SmsSendReceiver;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 42
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v0, "com.iflytek.cmcc.SMS_SEND_THREAD_ID"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 43
    .local v2, "threadId":J
    const-string/jumbo v0, "com.iflytek.cmcc.SMS_SEND_MSG_ID"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 45
    .local v4, "msgId":J
    cmp-long v0, v4, v8

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/base/mms/SmsSendReceiver;->a:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/iflytek/base/mms/SmsSendReceiver;->a:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.android.apps.action.SMS_SEND_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/base/mms/SmsSendReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 51
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "message send SUCCESS"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x2

    invoke-static {p1, v6, v0}, Lib$b;->a(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 53
    invoke-static {p1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SMS_SEND_SUCCESS"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    if-eqz v6, :cond_3

    .line 57
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "message send failed"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x5

    invoke-static {p1, v6, v0}, Lib$b;->a(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 60
    sget-object v0, Lcom/iflytek/base/mms/SmsSendReceiver;->a:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object v0, p1

    .line 60
    invoke-static/range {v0 .. v5}, Laoz;->a(Landroid/content/Context;IJJ)V

    .line 65
    :goto_1
    invoke-static {p1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SMS_SEND_FAILURE"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "message send failed | not notify"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.android.apps.action.SMS_DELIVERRED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/base/mms/SmsSendReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 71
    :pswitch_1
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "message deliverred success"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :pswitch_2
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "message deliverred failure"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :pswitch_3
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "message deliverred ERROR_RADIO_OFF"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :pswitch_4
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "message deliverred ERROR_NULL_PDU"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_5
    const-string/jumbo v0, "com.iflytek.android.apps.action.SMS_DATA_SEND_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/iflytek/base/mms/SmsSendReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 87
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "data message send SUCCESS"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.DATAMSG_FUNCTION_AVAIABLE"

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lil;->a(Ljava/lang/String;Z)V

    .line 90
    invoke-static {p1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SMS_SEND_SUCCESS"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_6
    const-string/jumbo v0, "SmsSendReceiver"

    const-string/jumbo v1, "data message send FAIL"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SMS_SEND_FAILURE"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
