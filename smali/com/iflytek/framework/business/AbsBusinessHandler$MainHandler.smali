.class Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;
.super Landroid/os/Handler;
.source "AbsBusinessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/AbsBusinessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/business/AbsBusinessHandler;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/business/AbsBusinessHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/business/AbsBusinessHandler;
    .param p2, "x1"    # Lcom/iflytek/framework/business/AbsBusinessHandler$1;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;-><init>(Lcom/iflytek/framework/business/AbsBusinessHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 517
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 519
    :pswitch_0
    const-string/jumbo v1, "Business_AbsBusinessHandler"

    const-string/jumbo v2, "MSG_ADD_DISPLAY"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;

    if-eqz v1, :cond_0

    .line 521
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;

    .line 522
    .local v0, "resultMessage":Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    iget-object v2, v0, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;->mComponent:Lcom/iflytek/framework/ui/DisplayComponent;

    invoke-static {v1, v2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->access$200(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/ui/DisplayComponent;)V

    goto :goto_0

    .line 526
    .end local v0    # "resultMessage":Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    :pswitch_1
    const-string/jumbo v1, "Business_AbsBusinessHandler"

    const-string/jumbo v2, "MSG_TTS_SPEAK"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;

    if-eqz v1, :cond_0

    .line 528
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;

    .line 529
    .restart local v0    # "resultMessage":Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-static {v1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->access$300(Lcom/iflytek/framework/business/AbsBusinessHandler;)Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->setComponentListener(Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;)V

    .line 531
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-static {v1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->access$300(Lcom/iflytek/framework/business/AbsBusinessHandler;)Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v1

    iget-object v2, v0, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;->mTtsContent:Ljava/lang/String;

    iget-object v3, v0, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;->mTtsParams:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 536
    .end local v0    # "resultMessage":Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    :pswitch_2
    const-string/jumbo v1, "Business_AbsBusinessHandler"

    const-string/jumbo v2, "MSG_TTS_STOP"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->this$0:Lcom/iflytek/framework/business/AbsBusinessHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->stop()V

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
