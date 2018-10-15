.class Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$4;
.super Ljava/lang/Object;
.source "AdvancedSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->importContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

.field final synthetic val$mscManager:Lcom/iflytek/common/speech/asr/MscManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;Lcom/iflytek/common/speech/asr/MscManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$4;->val$mscManager:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dlg"    # Landroid/content/DialogInterface;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$4;->val$mscManager:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager$a;)V

    .line 389
    const-string/jumbo v0, "AdvancedSettingFragment"

    const-string/jumbo v1, "mProgressDlg onCancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method
