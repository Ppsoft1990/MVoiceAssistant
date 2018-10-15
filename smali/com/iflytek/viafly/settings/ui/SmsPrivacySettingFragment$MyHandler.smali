.class public Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$MyHandler;
.super Landroid/os/Handler;
.source "SmsPrivacySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 687
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 688
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 689
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 693
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .line 694
    .local v0, "theActivity":Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
    if-nez v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 698
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 700
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->hideAuditionText(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V

    goto :goto_0

    .line 703
    :pswitch_1
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$702(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;I)I

    .line 704
    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$902(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;I)I

    .line 705
    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1002(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Z)Z

    .line 706
    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$1100(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->hideAuditionText(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
