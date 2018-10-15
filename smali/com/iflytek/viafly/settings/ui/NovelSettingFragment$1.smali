.class Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$1;
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
    .line 196
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$1;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$1;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 205
    return-void
.end method
