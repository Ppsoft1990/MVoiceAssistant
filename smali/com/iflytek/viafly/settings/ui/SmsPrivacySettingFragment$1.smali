.class Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$1;
.super Ljava/lang/Object;
.source "SmsPrivacySettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "selectedName"

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .line 166
    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    return-void
.end method
