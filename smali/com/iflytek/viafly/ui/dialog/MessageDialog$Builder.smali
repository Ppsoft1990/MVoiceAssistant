.class public Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
.super Ljava/lang/Object;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

.field private isSingleButton:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

.field private mIsCanceledOnTouchOutside:Z

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private message:Ljava/lang/CharSequence;

.field private negativeButtonListener:Landroid/view/View$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private neutralButtonListener:Landroid/view/View$OnClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private postiveButtonListener:Landroid/view/View$OnClickListener;

.field private postiveButtonText:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mIsCanceledOnTouchOutside:Z

    .line 29
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 30
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 31
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->isSingleButton:Z

    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public create()Lcom/iflytek/viafly/ui/dialog/MessageDialog;
    .locals 6

    .prologue
    .line 39
    new-instance v3, Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->isSingleButton:Z

    invoke-direct {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/MessageDialogView;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    .line 40
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageDialogView;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageDialogView;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    iget-boolean v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->isSingleButton:Z

    if-eqz v3, :cond_2

    .line 43
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/MessageDialogView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 49
    :goto_0
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "dialog":Lcom/iflytek/viafly/ui/dialog/MessageDialog;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 51
    .local v1, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->setCancelable(Z)V

    .line 53
    iget-boolean v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mIsCanceledOnTouchOutside:Z

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 63
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 64
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 66
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 68
    return-object v0

    .line 45
    .end local v0    # "dialog":Lcom/iflytek/viafly/ui/dialog/MessageDialog;
    .end local v1    # "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->postiveButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->postiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/MessageDialogView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dialogView:Lcom/iflytek/viafly/ui/dialog/MessageDialogView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->negativeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/MessageDialogView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->dismiss()V

    .line 129
    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->isShowing()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 180
    return-object p0
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 185
    return-object p0
.end method

.method public setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "isCanceledOnTouchOutside"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mIsCanceledOnTouchOutside:Z

    .line 190
    return-object p0
.end method

.method public setIsSingleButton(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "isSingleButton"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->isSingleButton:Z

    .line 172
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 149
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 160
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 161
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->neutralButtonText:Ljava/lang/CharSequence;

    .line 166
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->neutralButtonListener:Landroid/view/View$OnClickListener;

    .line 167
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->postiveButtonText:Ljava/lang/CharSequence;

    .line 154
    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->postiveButtonListener:Landroid/view/View$OnClickListener;

    .line 155
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 144
    return-object p0
.end method

.method public show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const/16 v0, 0x51

    invoke-virtual {p0, v0, v1, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    return-object v0
.end method

.method public show(III)Lcom/iflytek/viafly/ui/dialog/MessageDialog;
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 109
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 110
    const/16 p1, 0x33

    .line 112
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 113
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 114
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 116
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog;->show()V

    .line 119
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mDialog:Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    return-object v1
.end method

.method public show(Landroid/view/View;)Lcom/iflytek/viafly/ui/dialog/MessageDialog;
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/view/View;II)Lcom/iflytek/viafly/ui/dialog/MessageDialog;
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 87
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 89
    .local v1, "locationOfViewOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 91
    iget-object v5, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 93
    .local v2, "screenHeight":I
    const/16 v0, 0x53

    .line 94
    .local v0, "gravity":I
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int v3, v5, p2

    .line 95
    .local v3, "x":I
    const/4 v5, 0x1

    aget v5, v1, v5

    sub-int v5, v2, v5

    add-int v4, v5, p3

    .line 97
    .local v4, "y":I
    invoke-virtual {p0, v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    move-result-object v5

    return-object v5
.end method
