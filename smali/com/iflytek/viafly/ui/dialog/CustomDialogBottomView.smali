.class public Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;
.super Landroid/widget/LinearLayout;
.source "CustomDialogBottomView.java"


# instance fields
.field private negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

.field private neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

.field private positiveButton:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSingleButton"    # Z

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 23
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 24
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->initView(Landroid/content/Context;Z)V

    .line 34
    return-void
.end method

.method private initView(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSingleButton"    # Z

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 37
    new-instance v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "bottomView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x5a

    .line 39
    invoke-static {p1, v4}, Lazk;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 41
    const-string/jumbo v2, "image.dlg_bottom_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 42
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v2

    const-string/jumbo v3, "30"

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "30"

    const-string/jumbo v6, "50"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setPadding(IIII)V

    .line 45
    if-eqz p2, :cond_0

    .line 46
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 47
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x294

    invoke-static {p1, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_dialog_neutral_button_text"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 50
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "statelist.dialog_bottom_btn_status"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 51
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 52
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setEnabled(Z)V

    .line 53
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 79
    :goto_0
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->addView(Landroid/view/View;)V

    .line 80
    return-void

    .line 55
    :cond_0
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 56
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x149

    invoke-static {p1, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_dialog_negative_button_text"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 59
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "statelist.dialog_bottom_btn_status"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 60
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 61
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setEnabled(Z)V

    .line 62
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "splitLineView":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const-string/jumbo v2, "#1E000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    .line 70
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x14a

    invoke-static {p1, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_dialog_positive_button_text"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 73
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "statelist.dialog_bottom_btn_status"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 74
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 75
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setEnabled(Z)V

    .line 76
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setNegativeButtonEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->negativeButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setNeutralButtonClickable(Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setClickable(Z)V

    goto :goto_0
.end method

.method public setNeutralButtonEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->neutralButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPositiveButtonClickable(Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setClickable(Z)V

    goto :goto_0
.end method

.method public setPositiveButtonClickableTextColor()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#4282f7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setPositiveButtonEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setPositiveButtonUnClickableTextColor()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->positiveButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#b6b6b6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    goto :goto_0
.end method
