.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;
.super Landroid/os/Handler;
.source "SmsShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 660
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 709
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 664
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 667
    :pswitch_2
    const-string/jumbo v1, "SmsShowActivity"

    const-string/jumbo v2, "handleMessage | MSG_READ_ERROR"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 669
    .local v0, "tip":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->k(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 674
    .end local v0    # "tip":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 677
    :pswitch_4
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->l(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    .line 678
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 679
    const-string/jumbo v1, "SmsShowActivity"

    const-string/jumbo v2, "null == mReadBtn"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsBroadcastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v1

    const-string/jumbo v2, "statelist.sms_dlg_btn_read_hz"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 689
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v1

    const-string/jumbo v2, "statelist.sms_dlg_btn_no_read_hz"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 697
    :pswitch_5
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/viafly/mms/ui/SmsGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;I)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto/16 :goto_0

    .line 700
    :pswitch_6
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->k(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c03a8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 701
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    goto/16 :goto_0

    .line 704
    :pswitch_7
    const-string/jumbo v1, "SmsShowActivity"

    const-string/jumbo v2, "handleMessage | MSG_CATCH_HOME"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    goto/16 :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
