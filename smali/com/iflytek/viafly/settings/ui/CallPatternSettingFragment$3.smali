.class Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;
.super Ljava/lang/Object;
.source "CallPatternSettingFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 150
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->isUploadedLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->updateUploadedLog()V

    .line 174
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 166
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$400(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$102(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$500(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$600(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$600(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    goto :goto_0
.end method
