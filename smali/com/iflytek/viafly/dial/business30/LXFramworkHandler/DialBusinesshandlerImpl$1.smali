.class Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;
.super Landroid/os/Handler;
.source "DialBusinesshandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-static {v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$000(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Landroid/content/Context;

    move-result-object v2

    .line 128
    .local v2, "context":Landroid/content/Context;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-static {v2}, Lhl;->d(Landroid/content/Context;)I

    move-result v5

    .line 131
    .local v5, "screenWidth":I
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    invoke-direct {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    const-string/jumbo v6, "\u6b63\u5728\u83b7\u53d6..."

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .line 134
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$102(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .line 135
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-static {v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$100(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setCancelable(Z)V

    .line 136
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-static {v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$100(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 137
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070192

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 138
    .local v4, "padding":I
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-static {v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$100(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sub-int v7, v5, v4

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 139
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-static {v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$100(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 140
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 141
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v6, 0x3f333333    # 0.7f

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 142
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-static {v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$100(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 143
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    goto :goto_0

    .line 146
    .end local v0    # "builder":Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "padding":I
    .end local v5    # "screenWidth":I
    :pswitch_1
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-static {v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$100(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->dismiss()V

    .line 147
    iget-object v6, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-virtual {v6}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 148
    .local v1, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sub_tel_his.updateUI(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$1;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .line 150
    invoke-static {v8}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$200(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
