.class public Laqt;
.super Ljava/lang/Object;
.source "NovelSettingPopupWindow.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;

.field private c:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private d:Lcom/iflytek/base/skin/customView/XTextView;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "\u8bd5\u8bd5\u4e0d\u540c\u7684\u5c0f\u8bf4\u64ad\u62a5\u98ce\u683c"

    iput-object v0, p0, Laqt;->e:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Laqt;->a:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Laqt;->b()V

    .line 41
    invoke-direct {p0}, Laqt;->c()V

    .line 42
    return-void
.end method

.method static synthetic a(Laqt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laqt;

    .prologue
    .line 28
    iget-object v0, p0, Laqt;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 45
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Laqt;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laqt;->b:Landroid/widget/PopupWindow;

    .line 46
    iget-object v1, p0, Laqt;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 47
    iget-object v1, p0, Laqt;->b:Landroid/widget/PopupWindow;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 49
    iget-object v1, p0, Laqt;->b:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 50
    new-instance v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v2, p0, Laqt;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 51
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "param":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Laqt;->b:Landroid/widget/PopupWindow;

    iget-object v2, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object v1, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v1

    const-string/jumbo v2, "30"

    const-string/jumbo v3, "25"

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "25"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinPaddings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Laqt;->b:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method private c()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 59
    iget-object v6, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v6, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 60
    iget-object v6, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 61
    iget-object v6, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v7, "color.black"

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 62
    iget-object v6, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x99

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 64
    new-instance v6, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v7, p0, Laqt;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Laqt;->d:Lcom/iflytek/base/skin/customView/XTextView;

    .line 65
    iget-object v6, p0, Laqt;->d:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v7, "style_novel_setting_popupWondow_tip_text"

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 66
    iget-object v6, p0, Laqt;->d:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v7, p0, Laqt;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    iget-object v6, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v7, p0, Laqt;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v6, v7, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v4, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v6, p0, Laqt;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .local v4, "setButton":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Laqt;->a:Landroid/content/Context;

    const/16 v7, 0x6e

    invoke-static {v6, v7}, Lazk;->a(Landroid/content/Context;I)I

    move-result v6

    iget-object v7, p0, Laqt;->a:Landroid/content/Context;

    const/16 v8, 0x2f

    invoke-static {v7, v8}, Lazk;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v3, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Laqt;->a:Landroid/content/Context;

    const/16 v7, 0x18

    invoke-static {v6, v7}, Lazk;->a(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 75
    invoke-virtual {v4, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 77
    const-string/jumbo v6, "image.btn_novel_setting_popup_window_jump"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v6, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 78
    new-instance v5, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v6, p0, Laqt;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v5, "setButtonText":Lcom/iflytek/base/skin/customView/XTextView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const-string/jumbo v6, "\u53bb\u8bbe\u7f6e"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const-string/jumbo v6, "style_novel_setting_popupWondow_setting_btn_text"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 82
    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v6, Laqt$1;

    invoke-direct {v6, p0}, Laqt$1;-><init>(Laqt;)V

    invoke-virtual {v4, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v6, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v6, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v6, p0, Laqt;->a:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "closeButton":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v6, p0, Laqt;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v6, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v6, p0, Laqt;->a:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "closeButtonImg":Lcom/iflytek/base/skin/customView/XImageView;
    const-string/jumbo v6, "image.btn_novel_setting_popup_window_close"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v6, v7}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 101
    new-instance v6, Laqt$2;

    invoke-direct {v6, p0}, Laqt$2;-><init>(Laqt;)V

    invoke-virtual {v1, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 126
    const-string/jumbo v0, "NovelSettingPopupWindow"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Laqt;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqt;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Laqt;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 130
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v1, p0, Laqt;->b:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Laqt;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 118
    .local v0, "height":I
    iget-object v1, p0, Laqt;->b:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    neg-int v3, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 120
    .end local v0    # "height":I
    :cond_0
    return-void
.end method
