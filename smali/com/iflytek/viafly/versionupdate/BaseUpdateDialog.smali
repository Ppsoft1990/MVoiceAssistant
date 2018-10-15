.class public abstract Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;
.super Lcom/iflytek/viafly/ui/activity/BaseDialog;
.source "BaseUpdateDialog.java"

# interfaces
.implements Lyn;


# instance fields
.field protected a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

.field protected b:Lyd;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/ProgressBar;

.field protected g:Landroid/widget/LinearLayout;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/LinearLayout;

.field protected j:Landroid/widget/CheckBox;

.field protected k:Landroid/widget/ImageView;

.field protected l:Landroid/widget/ImageView;

.field protected m:Z

.field protected n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->n:Z

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(IIILjava/lang/Object;)V
.end method

.method protected abstract a(IILjava/lang/Object;)V
.end method

.method protected abstract a(ILjava/lang/String;)V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorContent"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    :cond_5
    return-void
.end method

.method protected abstract b()V
.end method

.method protected b(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    const v4, 0x7f0c0038

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :cond_1
    const/16 v0, 0x384

    if-ne p1, v0, :cond_4

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->m:Z

    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->e:Landroid/widget/TextView;

    const v1, 0x7f0c02e9

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getMainTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    const v1, 0x7f0c0037

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setRightConfirmStatus()V

    .line 190
    :cond_3
    :goto_0
    return-void

    .line 175
    :cond_4
    const v0, 0xc3c09

    if-ne p1, v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->e:Landroid/widget/TextView;

    const v1, 0x7f0c0300

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    goto :goto_0

    .line 182
    :cond_5
    const v0, 0xc3c0a

    if-ne p1, v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->e:Landroid/widget/TextView;

    const v1, 0x7f0c0308

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    goto :goto_0
.end method

.method protected c(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 211
    invoke-static {p0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    invoke-virtual {v0, p1}, Lno;->a(I)I

    move-result v0

    return v0
.end method

.method protected abstract c()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->c()V

    .line 61
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v1

    const-string/jumbo v2, "image.setting_item_normal"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->b()V

    .line 63
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p5, p2}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->a(IIILjava/lang/Object;)V

    .line 225
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onStop()V

    .line 218
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->finish()V

    .line 219
    return-void
.end method

.method protected registerListener()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
