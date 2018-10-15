.class Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$1;
.super Landroid/os/Handler;
.source "SmsChangeContactInfoToSendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->f(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->g(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->f(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->g(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
