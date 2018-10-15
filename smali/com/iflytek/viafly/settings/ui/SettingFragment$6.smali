.class Lcom/iflytek/viafly/settings/ui/SettingFragment$6;
.super Landroid/os/Handler;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 975
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$6;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 978
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 988
    :goto_0
    return-void

    .line 980
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$6;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V

    .line 981
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$6;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->access$400(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V

    .line 982
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$6;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->notifyDataSetChanged()V

    goto :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
