.class public Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;
.super Landroid/widget/LinearLayout;
.source "CustomDialogTitleView.java"


# instance fields
.field private textView:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->initView(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 27
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setOrientation(I)V

    .line 30
    new-instance v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 31
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x59

    .line 32
    invoke-static {p1, v3}, Lazk;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v1

    const-string/jumbo v2, "30"

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "0"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "style_dialog_title_text_new"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 35
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 36
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->addView(Landroid/view/View;)V

    .line 39
    new-instance v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "splitLineView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    invoke-virtual {v0, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 41
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v1

    const-string/jumbo v2, "30"

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "0"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, "#1E000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setBackgroundColor(I)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->addView(Landroid/view/View;)V

    .line 45
    return-void
.end method


# virtual methods
.method public setTilte(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
