.class Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$2;
.super Ljava/lang/Object;
.source "CallPrivacySettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 174
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$400(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "selectedName"

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .line 181
    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$500(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    return-void
.end method
