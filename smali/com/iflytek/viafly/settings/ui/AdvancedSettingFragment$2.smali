.class Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 100
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 104
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_CN_SMS_INSTALL_SUCCESS"

    if-ne v2, v3, :cond_0

    .line 107
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_0
    const-string/jumbo v2, "install_result"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "errorCode":I
    const-string/jumbo v2, "install_type"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "type":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 118
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    .end local v0    # "errorCode":I
    .end local v1    # "type":I
    :cond_1
    return-void
.end method
