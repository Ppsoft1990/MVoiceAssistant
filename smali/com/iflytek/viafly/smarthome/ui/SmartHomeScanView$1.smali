.class Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;
.super Landroid/os/Handler;
.source "SmartHomeScanView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 253
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 256
    .local v0, "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;->onFound(Lcom/iflytek/viafly/smarthome/base/DeviceItem;)V

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getScanViewBg()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->addDevicesDot(I)V

    goto :goto_0

    .line 265
    .end local v0    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 266
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;->onError(ILjava/lang/String;)V

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->stopScan()V

    .line 270
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    const-string/jumbo v2, "smarthome"

    invoke-virtual {v1, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 271
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_smarthome_scan_view:Lcom/iflytek/framework/business/entities/UIEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :pswitch_2
    const-string/jumbo v1, "SmartHomeScanView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_SCAN_COMPLETE | msg.obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 276
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v2, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;->onCompleted(Z)V

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->stopScan()V

    .line 280
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    const-string/jumbo v2, "smarthome"

    invoke-virtual {v1, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 281
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_smarthome_scan_view:Lcom/iflytek/framework/business/entities/UIEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 283
    const-string/jumbo v1, "true"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c031a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 299
    :pswitch_3
    const-string/jumbo v1, "SmartHomeScanView"

    const-string/jumbo v2, "handleMessage | MSG_SCAN_TIMEOUT"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 301
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;->onError(ILjava/lang/String;)V

    .line 303
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;->this$0:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->stopScan()V

    .line 304
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    const-string/jumbo v2, "smarthome"

    invoke-virtual {v1, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 305
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_smarthome_scan_view:Lcom/iflytek/framework/business/entities/UIEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
