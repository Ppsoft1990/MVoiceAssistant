.class public Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;
.super Landroid/widget/LinearLayout;
.source "MessageDialogBodyView.java"


# instance fields
.field private bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 22
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->initView(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 26
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setOrientation(I)V

    .line 30
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 31
    .local v1, "sv":Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 34
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 39
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 42
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setLineSpacing(FF)V

    .line 43
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v2

    const-string/jumbo v3, "30"

    const-string/jumbo v4, "61"

    const-string/jumbo v5, "30"

    const-string/jumbo v6, "53"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v3, 0x54

    invoke-static {p1, v3}, Lazk;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setMinHeight(I)V

    .line 45
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_dialog_content_text_new"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 47
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->addView(Landroid/view/View;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->bodyTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
