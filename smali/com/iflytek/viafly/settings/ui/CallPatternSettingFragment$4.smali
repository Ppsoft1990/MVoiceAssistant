.class Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$4;
.super Ljava/lang/Object;
.source "CallPatternSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 179
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$600(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$400(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XEditText;->setCursorVisible(Z)V

    .line 183
    :cond_0
    return v2
.end method
