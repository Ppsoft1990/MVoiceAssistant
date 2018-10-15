.class public Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;
.super Landroid/widget/LinearLayout;
.source "MessageWithCheckboxDialogBodyView.java"


# instance fields
.field private bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

.field private checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

.field private checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

.field private isSelected:Z

.field private settingItem:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 24
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    .line 25
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->isSelected:Z

    .line 27
    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->settingItem:Ljava/lang/CharSequence;

    .line 31
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->isSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->isSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->settingItem:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 35
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setOrientation(I)V

    .line 38
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v2, "sv":Landroid/widget/ScrollView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 42
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 47
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v3

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "61"

    const-string/jumbo v6, "30"

    const-string/jumbo v7, "13"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v4, 0x54

    invoke-static {p1, v4}, Lazk;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setMinHeight(I)V

    .line 50
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setLineSpacing(FF)V

    .line 51
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "style_dialog_content_text_new"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 53
    new-instance v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "checkBoxLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v3

    const-string/jumbo v4, "30"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "30"

    const-string/jumbo v7, "65"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 57
    invoke-virtual {v0, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 59
    new-instance v3, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

    .line 60
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v3

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "0"

    const-string/jumbo v6, "16"

    const-string/jumbo v7, "0"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v4, "image.ic_checkbox_carmode_nor_new"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 63
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

    new-instance v4, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;-><init>(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    .line 81
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v11}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 83
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "style_dialog_content_checkbox_tips"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 84
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setIncludeFontPadding(Z)V

    .line 86
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxImageView:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getSelectedState()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->isSelected:Z

    return v0
.end method

.method public setCheckBoxSetting(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "settingItem"    # Ljava/lang/CharSequence;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->settingItem:Ljava/lang/CharSequence;

    .line 115
    :cond_0
    return-void
.end method

.method public setCheckBoxTips(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->checkBoxTips:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
