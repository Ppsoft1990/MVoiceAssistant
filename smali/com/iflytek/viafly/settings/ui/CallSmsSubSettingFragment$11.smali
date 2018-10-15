.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$11;
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


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$11;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$11;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 2081
    return-void
.end method
