.class public Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;
.super Landroid/widget/LinearLayout;
.source "TwoTextViewBodyView.java"


# instance fields
.field private aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

.field private belowTextView:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->initView(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->setOrientation(I)V

    .line 26
    const/16 v0, 0x54

    invoke-static {p1, v0}, Lazk;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->setMinimumHeight(I)V

    .line 28
    new-instance v0, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine()V

    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v0

    const-string/jumbo v1, "30"

    const-string/jumbo v2, "61"

    const-string/jumbo v3, "30"

    const-string/jumbo v4, "0"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_dialog_content_text_new"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 37
    new-instance v0, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine()V

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v0

    const-string/jumbo v1, "30"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "30"

    const-string/jumbo v4, "53"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_dialog_content_text_new"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->addView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->addView(Landroid/view/View;)V

    .line 48
    return-void
.end method


# virtual methods
.method public setAboveTextViewMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->aboveTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBelowTextViewMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->belowTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
