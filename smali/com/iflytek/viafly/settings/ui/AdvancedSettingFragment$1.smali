.class Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$1;
.super Landroid/os/Handler;
.source "AdvancedSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    move-result-object v0

    const v1, 0x7f0c0180

    .line 86
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->notifyDataSetChanged()V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    move-result-object v0

    const v1, 0x7f0c017f

    .line 89
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
