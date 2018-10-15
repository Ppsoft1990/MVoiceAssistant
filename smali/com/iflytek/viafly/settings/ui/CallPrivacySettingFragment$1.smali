.class Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;
.super Landroid/os/Handler;
.source "CallPrivacySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->hideAuditionText(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$002(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;I)I

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$102(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;I)I

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$202(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;Z)Z

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->hideAuditionText(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
