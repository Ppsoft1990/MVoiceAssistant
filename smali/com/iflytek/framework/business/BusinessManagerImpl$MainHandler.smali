.class Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;
.super Landroid/os/Handler;
.source "BusinessManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/BusinessManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/business/BusinessManagerImpl;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/BusinessManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/business/BusinessManagerImpl;
    .param p2, "x1"    # Lcom/iflytek/framework/business/BusinessManagerImpl$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;-><init>(Lcom/iflytek/framework/business/BusinessManagerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 346
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 348
    :pswitch_1
    const-string/jumbo v2, "BusinessManagerImpl"

    const-string/jumbo v3, "handleMessage MSG_EVENT"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;

    if-eqz v2, :cond_0

    .line 350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;

    .line 351
    .local v0, "eventObj":Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;
    iget-object v3, p0, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;

    iget-object v2, v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;->mEvent:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/framework/business/entities/UIEvent;

    iget-object v4, v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;->mObjects:[Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/iflytek/framework/business/BusinessManagerImpl;->access$200(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    .end local v0    # "eventObj":Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;
    :pswitch_2
    const-string/jumbo v2, "BusinessManagerImpl"

    const-string/jumbo v3, "handleMessage MSG_SYSTEM_EVENT"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;

    if-eqz v2, :cond_0

    .line 357
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;

    .line 358
    .restart local v0    # "eventObj":Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;
    iget-object v3, p0, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;

    iget-object v2, v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;->mEvent:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/framework/business/entities/SystemEvent;

    iget-object v4, v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;->mObjects:[Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/iflytek/framework/business/BusinessManagerImpl;->access$300(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    .end local v0    # "eventObj":Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;
    :pswitch_3
    const-string/jumbo v2, "BusinessManagerImpl"

    const-string/jumbo v3, "handleMessage MSG_INIT"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;

    invoke-static {v2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->access$400(Lcom/iflytek/framework/business/BusinessManagerImpl;)V

    goto :goto_0

    .line 366
    :pswitch_4
    const-string/jumbo v2, "BusinessManagerImpl"

    const-string/jumbo v3, "handleMessage MSG_DATA_UPDATE"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;

    if-eqz v2, :cond_0

    .line 368
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;

    .line 369
    .local v1, "obj":Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;
    iget-object v2, p0, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;

    iget-object v3, v1, Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;->mFocus:Ljava/lang/String;

    iget-object v4, v1, Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;->mUpdateDataType:Lcom/iflytek/framework/business/entities/UpdateDataType;

    invoke-static {v2, v3, v4}, Lcom/iflytek/framework/business/BusinessManagerImpl;->access$500(Lcom/iflytek/framework/business/BusinessManagerImpl;Ljava/lang/String;Lcom/iflytek/framework/business/entities/UpdateDataType;)V

    goto :goto_0

    .line 373
    .end local v1    # "obj":Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    if-eqz v2, :cond_0

    .line 374
    iget-object v3, p0, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-static {v3, v2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->access$600(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto/16 :goto_0

    .line 378
    :pswitch_6
    const-string/jumbo v2, "BusinessManagerImpl"

    const-string/jumbo v3, "handleMessage MSG_REGISTPLUGIN"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v2, :cond_0

    .line 380
    iget-object v3, p0, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->this$0:Lcom/iflytek/framework/business/BusinessManagerImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-static {v3, v2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->access$700(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    goto/16 :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
