.class final Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;
.super Landroid/os/Handler;
.source "DialReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/dial/remote/DialReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/dial/remote/DialReceiverService;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/dial/remote/DialReceiverService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;->a:Lcom/iflytek/viafly/dial/remote/DialReceiverService;

    .line 76
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 84
    const-string/jumbo v6, "DialService"

    const-string/jumbo v7, "intent is null"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    const-string/jumbo v6, "com.iflytek.dial.EXTRA_TYPE"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 91
    .local v5, "type":I
    if-ne v9, v5, :cond_2

    .line 92
    const-string/jumbo v6, "com.iflytek.dial.EXTRA_SN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 95
    .local v4, "sn":I
    const-string/jumbo v6, "com.iflytek.dial.EXTRA_VALUE_LINGXI"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 96
    .local v2, "localValue":I
    const-string/jumbo v6, "com.iflytek.dial.EXTRA_VALUE_DIAL"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 97
    .local v3, "remoteValue":I
    const-string/jumbo v6, "com.iflytek.dial.EXTRA_ANSWER_SN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, "answerSN":I
    const-string/jumbo v6, "DialService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "receive localValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", remoteValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",answerSN="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v6

    invoke-virtual {v6, v2}, Ladh;->a(I)V

    .line 102
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v6

    invoke-virtual {v6}, Ladh;->b()Ladi;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/dial/remote/DialReceiverService$a;->a:Lcom/iflytek/viafly/dial/remote/DialReceiverService;

    invoke-static {v7}, Lcom/iflytek/viafly/dial/remote/DialReceiverService;->a(Lcom/iflytek/viafly/dial/remote/DialReceiverService;)Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7}, Ladi;->b(Landroid/content/Context;)I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 104
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v6

    invoke-virtual {v6, v4}, Ladh;->b(I)Z

    .line 106
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v6

    invoke-virtual {v6, v9}, Ladh;->a(Z)V

    goto/16 :goto_0

    .line 109
    :cond_1
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v6

    invoke-virtual {v6, v4}, Ladh;->c(I)Z

    goto/16 :goto_0

    .line 112
    .end local v0    # "answerSN":I
    .end local v2    # "localValue":I
    .end local v3    # "remoteValue":I
    .end local v4    # "sn":I
    :cond_2
    const/4 v6, 0x2

    if-ne v6, v5, :cond_4

    .line 113
    const-string/jumbo v6, "com.iflytek.dial.EXTRA_ANSWER_SN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 115
    .restart local v0    # "answerSN":I
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v6

    invoke-virtual {v6}, Ladh;->e()I

    move-result v6

    if-ne v0, v6, :cond_3

    .line 117
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v6

    invoke-virtual {v6, v9}, Ladh;->a(Z)V

    goto/16 :goto_0

    .line 120
    :cond_3
    const-string/jumbo v6, "DialService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid feedback:type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", answerSN="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mCallSettingBroadcastSenderSN="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 122
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v8

    invoke-virtual {v8}, Ladh;->e()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 120
    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    .end local v0    # "answerSN":I
    :cond_4
    const-string/jumbo v6, "DialService"

    const-string/jumbo v7, "type is illegal"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
