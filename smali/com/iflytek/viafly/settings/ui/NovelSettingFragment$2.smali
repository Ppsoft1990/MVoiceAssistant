.class Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;
.super Ljava/lang/Object;
.source "NovelSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->showSpeakOfflineTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

.field final synthetic val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    const-string/jumbo v0, "NovelSettingFragment"

    const-string/jumbo v1, "\u540c\u610f\u5b89\u88c5-->\u8bf7\u6c42\u5b58\u50a8\u5361\u6743\u9650"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2$1;-><init>(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    .line 228
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$2;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 229
    return-void
.end method
