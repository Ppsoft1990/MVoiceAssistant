.class final Lcom/iflytek/base/call/CallReceiverService$a;
.super Landroid/os/Handler;
.source "CallReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/call/CallReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/call/CallReceiverService;


# direct methods
.method public constructor <init>(Lcom/iflytek/base/call/CallReceiverService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    invoke-static {v5}, Lcom/iflytek/base/call/CallReceiverService;->a(Lcom/iflytek/base/call/CallReceiverService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "CallReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage msg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 107
    invoke-static {v1}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->getAndPrintIntentExtrasString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {v5, v6, v7}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 112
    .local v2, "number":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/iflytek/base/call/CallReceiverService;->a(Lcom/iflytek/base/call/CallReceiverService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 113
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 114
    .local v4, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-eqz v0, :cond_0

    const-string/jumbo v5, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    iget-object v6, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    invoke-static {v6}, Lcom/iflytek/base/call/CallReceiverService;->b(Lcom/iflytek/base/call/CallReceiverService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/base/call/CallReceiverService;->a(Lcom/iflytek/base/call/CallReceiverService;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    const-string/jumbo v5, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    const-string/jumbo v6, "state"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/base/call/CallReceiverService;->b(Lcom/iflytek/base/call/CallReceiverService;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    :goto_1
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    invoke-static {v6}, Lcom/iflytek/base/call/CallReceiverService;->c(Lcom/iflytek/base/call/CallReceiverService;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    iget-object v8, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    .line 138
    invoke-static {v8}, Lcom/iflytek/base/call/CallReceiverService;->d(Lcom/iflytek/base/call/CallReceiverService;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    invoke-static {v9}, Lcom/iflytek/base/call/CallReceiverService;->b(Lcom/iflytek/base/call/CallReceiverService;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v0, v8, v9}, Lcom/iflytek/base/call/CallReceiverService;->a(Lcom/iflytek/base/call/CallReceiverService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/base/call/PhoneState;

    move-result-object v7

    .line 137
    invoke-virtual {v5, v6, v7, v2, v4}, Lgx;->a(Landroid/content/Intent;Lcom/iflytek/base/call/PhoneState;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v5

    .line 120
    invoke-virtual {v5, v1}, Lgx;->a(Landroid/content/Intent;)Lgy;

    move-result-object v3

    .line 121
    .local v3, "receiveIntent":Lgy;
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    invoke-static {v5, v1}, Lcom/iflytek/base/call/CallReceiverService;->a(Lcom/iflytek/base/call/CallReceiverService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 122
    if-eqz v3, :cond_1

    .line 124
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    invoke-static {v5}, Lcom/iflytek/base/call/CallReceiverService;->a(Lcom/iflytek/base/call/CallReceiverService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.CALL_RECEIVE"

    const-string/jumbo v7, "com.iflytek.cmcc.CALL_STATE"

    iget-object v8, v3, Lgy;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, v3, Lgy;->b:Ljava/lang/String;

    .line 129
    iget-object v0, v3, Lgy;->a:Ljava/lang/String;

    .line 130
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    iget-object v6, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    invoke-static {v6}, Lcom/iflytek/base/call/CallReceiverService;->b(Lcom/iflytek/base/call/CallReceiverService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/base/call/CallReceiverService;->a(Lcom/iflytek/base/call/CallReceiverService;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    iget-object v6, v3, Lgy;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/iflytek/base/call/CallReceiverService;->b(Lcom/iflytek/base/call/CallReceiverService;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    iget-object v4, v3, Lgy;->d:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 135
    :cond_1
    iget-object v5, p0, Lcom/iflytek/base/call/CallReceiverService$a;->a:Lcom/iflytek/base/call/CallReceiverService;

    invoke-static {v5, v1}, Lcom/iflytek/base/call/CallReceiverService;->b(Lcom/iflytek/base/call/CallReceiverService;Landroid/content/Intent;)V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
