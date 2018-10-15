.class Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;
.super Landroid/os/Handler;
.source "CallPrivacyAddContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$000(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->showLoadingDialog()V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$100(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$100(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->dismiss()V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$100(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$100(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$200(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$400(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
