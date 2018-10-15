.class Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;
.super Landroid/os/Handler;
.source "SmsAddContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x3

    const/16 v6, 0x8

    const/4 v8, 0x0

    .line 415
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 416
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 418
    :pswitch_0
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 419
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 420
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 424
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 427
    :pswitch_2
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$600(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 430
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$900(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lhl;->d(Landroid/content/Context;)I

    move-result v2

    .line 431
    .local v2, "screenWidth":I
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    new-instance v6, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$900(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1002(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .line 432
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    move-result-object v5

    const-string/jumbo v6, "\u6b63\u5728\u8bfb\u53d6..."

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .line 433
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1102(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .line 434
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setCancelable(Z)V

    .line 435
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 436
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$900(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070192

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 437
    .local v1, "padding":I
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    sub-int v6, v2, v1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 438
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 439
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 440
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v5, 0x3f333333    # 0.7f

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 441
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 442
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .line 443
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 447
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "padding":I
    .end local v2    # "screenWidth":I
    :pswitch_3
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 448
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 452
    :pswitch_4
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 453
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 456
    :cond_2
    const/4 v4, 0x0

    .line 457
    .local v4, "size":I
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 458
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v5

    invoke-virtual {v5}, Laox;->a()Ljava/util/HashSet;

    move-result-object v3

    .line 459
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 462
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    if-nez v4, :cond_0

    .line 463
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1200(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    .line 464
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 465
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
