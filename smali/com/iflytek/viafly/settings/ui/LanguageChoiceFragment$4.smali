.class Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;
.super Ljava/lang/Object;
.source "LanguageChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->showTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

.field final synthetic val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 327
    const-string/jumbo v0, "LanguageChoiceFragment"

    const-string/jumbo v2, "\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce"

    invoke-static {v0, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v2, "LanguageChoiceFragment"

    new-instance v3, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4$1;-><init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;)V

    invoke-virtual {v0, v2, v3}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 395
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    .line 396
    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->language_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v5, Lasc;->a:Lasc;

    move v3, v1

    .line 395
    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 398
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->access$300(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 403
    return-void
.end method
