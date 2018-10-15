.class Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$2;
.super Landroid/os/Handler;
.source "PersonalizedRingtoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$2;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$2;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$2;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;I)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
