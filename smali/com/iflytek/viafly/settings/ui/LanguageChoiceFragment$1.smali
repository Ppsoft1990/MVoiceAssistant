.class Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LanguageChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_YUEYU_RES_UNZIP_SUCCSEE"

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->access$000(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;)[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->access$000(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;)[Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->access$102(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;I)I

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XListView;->invalidate()V

    .line 104
    :cond_0
    return-void
.end method
