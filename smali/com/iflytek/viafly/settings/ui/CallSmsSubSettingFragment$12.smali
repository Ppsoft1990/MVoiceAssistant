.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;
.super Ljava/lang/Object;
.source "CallSmsSubSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->showDownloadDialog(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2087
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v2, "\u5b89\u88c5\u63d2\u4ef6!"

    invoke-static {v0, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1500(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lari;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .line 2090
    invoke-static {v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    move-result-object v4

    sget-object v5, Lasc;->a:Lasc;

    move v3, v1

    .line 2088
    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 2092
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 2093
    return-void
.end method
