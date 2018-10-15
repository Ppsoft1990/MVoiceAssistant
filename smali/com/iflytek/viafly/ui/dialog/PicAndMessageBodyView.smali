.class public Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;
.super Landroid/widget/LinearLayout;
.source "PicAndMessageBodyView.java"


# instance fields
.field private imageView:Lcom/iflytek/base/skin/customView/XImageView;

.field private textView:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x0

    const/16 v10, 0x6c

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 30
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 32
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->setOrientation(I)V

    .line 35
    new-instance v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "contentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v3

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "70"

    const-string/jumbo v6, "30"

    const-string/jumbo v7, "70"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 41
    invoke-virtual {v0, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 44
    new-instance v3, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->imageView:Lcom/iflytek/base/skin/customView/XImageView;

    .line 45
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->imageView:Lcom/iflytek/base/skin/customView/XImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v10}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    .line 46
    invoke-static {p1, v10}, Lazk;->b(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->imageView:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 51
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v3

    const-string/jumbo v4, "30"

    sget-object v5, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 54
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v11}, Lcom/iflytek/base/skin/customView/XTextView;->setIncludeFontPadding(Z)V

    .line 55
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setLineSpacing(FF)V

    .line 56
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "style_dialog_content_text_new"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 57
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-static {p1, v10}, Lazk;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setMinHeight(I)V

    .line 59
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->addView(Landroid/view/View;)V

    .line 62
    return-void
.end method


# virtual methods
.method public setImageViewSrc(Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->imageView:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method public setTextViewText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;->textView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
