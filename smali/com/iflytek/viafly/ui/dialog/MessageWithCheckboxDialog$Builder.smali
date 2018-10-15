.class public Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
.super Ljava/lang/Object;
.source "MessageWithCheckboxDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private checkBoxTips:Ljava/lang/CharSequence;

.field private dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

.field private isSingleButton:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

.field private mIsCanceledOnTouchOutside:Z

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private message:Ljava/lang/CharSequence;

.field private negativeButtonListener:Landroid/view/View$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private neutralButtonListener:Landroid/view/View$OnClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private postiveButtonListener:Landroid/view/View$OnClickListener;

.field private postiveButtonText:Ljava/lang/CharSequence;

.field private settingItem:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->checkBoxTips:Ljava/lang/CharSequence;

    .line 22
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->settingItem:Ljava/lang/CharSequence;

    .line 29
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mIsCanceledOnTouchOutside:Z

    .line 31
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 32
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->isSingleButton:Z

    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public create()Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;
    .locals 6

    .prologue
    .line 40
    new-instance v3, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->isSingleButton:Z

    invoke-direct {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    .line 41
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->checkBoxTips:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->setCheckBoxTips(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->settingItem:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->setCheckBoxSetting(Ljava/lang/CharSequence;)V

    .line 46
    iget-boolean v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->isSingleButton:Z

    if-eqz v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 53
    :goto_0
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "dialog":Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->setCancelable(Z)V

    .line 57
    iget-boolean v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mIsCanceledOnTouchOutside:Z

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 64
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    .line 69
    return-object v0

    .line 49
    .end local v0    # "dialog":Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;
    .end local v1    # "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->postiveButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->postiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->negativeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->dismiss()V

    .line 130
    :cond_0
    return-void
.end method

.method public getSelectedState()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getSelectedState()Z

    move-result v0

    return v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->isShowing()Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 192
    return-object p0
.end method

.method public setCheckBoxSetting(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "settingItem"    # Ljava/lang/CharSequence;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->settingItem:Ljava/lang/CharSequence;

    .line 160
    return-object p0
.end method

.method public setCheckboxTips(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "tips"    # Ljava/lang/CharSequence;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->checkBoxTips:Ljava/lang/CharSequence;

    .line 155
    return-object p0
.end method

.method public setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "isCanceledOnTouchOutside"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mIsCanceledOnTouchOutside:Z

    .line 197
    return-object p0
.end method

.method public setIsSingleButton(Z)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "isSingleButton"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->isSingleButton:Z

    .line 187
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 150
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 175
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 176
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    .line 181
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    .line 182
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->postiveButtonText:Ljava/lang/CharSequence;

    .line 169
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->postiveButtonListener:Landroid/view/View$OnClickListener;

    .line 170
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 145
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 110
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 111
    const/16 p1, 0x33

    .line 113
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 114
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 115
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 117
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;->show()V

    .line 120
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 88
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 90
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 92
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 94
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 95
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 96
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 98
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    move-result-object v5

    return-object v5
.end method
