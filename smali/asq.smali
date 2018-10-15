.class public abstract Lasq;
.super Ljava/lang/Object;
.source "BasePluginItem.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ltf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lasq;",
        ">;",
        "Ltf;"
    }
.end annotation


# instance fields
.field protected a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field protected b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field protected c:Lcom/iflytek/base/skin/customView/XImageView;

.field protected d:Lcom/iflytek/base/skin/customView/XImageView;

.field protected e:Lcom/iflytek/base/skin/customView/XTextView;

.field protected f:Lcom/iflytek/base/skin/customView/XTextView;

.field protected g:Lcom/iflytek/base/skin/customView/XTextView;

.field protected h:Lcom/iflytek/base/skin/customView/XImageView;

.field protected i:Lcom/iflytek/base/skin/customView/XTextView;

.field protected j:Lcom/iflytek/base/skin/customView/XImageView;

.field protected k:Landroid/content/Context;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasq;->l:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasq;->l:Z

    .line 66
    iput-object p1, p0, Lasq;->k:Landroid/content/Context;

    .line 68
    invoke-virtual {p0, p1}, Lasq;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 243
    iget-object v1, p0, Lasq;->j:Lcom/iflytek/base/skin/customView/XImageView;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v2, p0, Lasq;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lasq;->j:Lcom/iflytek/base/skin/customView/XImageView;

    .line 245
    iget-object v1, p0, Lasq;->j:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v2, "image.little_red_dot"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 247
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 248
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lasq;->k:Landroid/content/Context;

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 249
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 251
    iget-object v1, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v2, p0, Lasq;->j:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lasq;->j:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 254
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lasq;->j:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lasq;->j:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lasq;)I
    .locals 2
    .param p1, "another"    # Lasq;

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lasq;->d()I

    move-result v0

    invoke-virtual {p1}, Lasq;->d()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 121
    invoke-virtual {p0}, Lasq;->f()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 123
    const-string/jumbo v0, ""

    .line 127
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lasq;->k:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v13, 0xf

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, -0x2

    .line 72
    new-instance v5, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v5, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lasq;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 73
    iget-object v5, p0, Lasq;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const-string/jumbo v6, "statelist.plugin_list_item_states"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 74
    iget-object v5, p0, Lasq;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {p0}, Lasq;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 77
    new-instance v5, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v5, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 78
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    .local v0, "containnerParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lasq;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v6, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v5, v6, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v5, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v5

    const-string/jumbo v6, "120"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 83
    new-instance v5, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v5, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 84
    iget-object v5, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    const v6, 0x4000001

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setId(I)V

    .line 85
    invoke-virtual {p0}, Lasq;->e()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "iconPath":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 87
    const-string/jumbo v5, "image."

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "statelist."

    .line 88
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    :cond_0
    iget-object v5, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v2, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 92
    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v3, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    iget-object v5, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v6, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v5, v6, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v5, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v1

    .line 96
    .local v1, "helper":Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    const-string/jumbo v5, "68"

    invoke-virtual {v1, v5}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinWidth(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v5, "68"

    invoke-virtual {v1, v5}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v5, "30"

    sget-object v6, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v1, v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 99
    const-string/jumbo v5, "24"

    sget-object v6, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v1, v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 100
    iget-object v5, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    new-instance v5, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v5, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    .line 104
    iget-object v5, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    const v6, 0x4000002

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setId(I)V

    .line 105
    iget-object v5, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v6, "style_menu_item_text"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 106
    iget-object v5, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine()V

    .line 107
    iget-object v5, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 108
    iget-object v5, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    new-array v6, v12, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 110
    iget-object v5, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lasq;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v5, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v5

    const-string/jumbo v6, "-4"

    sget-object v7, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 113
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v4, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XImageView;->getId()I

    move-result v5

    invoke-virtual {v4, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 115
    invoke-virtual {v4, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 116
    iget-object v5, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v6, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5, v6, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x2

    const/16 v5, 0xf

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v3, p0, Lasq;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    .line 138
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_menu_item_sub_text"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 139
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine()V

    .line 140
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setMaxEms(I)V

    .line 142
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "END"

    invoke-static {v3}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    iget-object v3, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XImageView;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 145
    iget-object v2, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    iget-object v2, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v3, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 148
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v2

    const-string/jumbo v3, "-5"

    sget-object v4, Lcom/iflytek/base/skin/space/SpaceType;->BOTTOM:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 150
    iget-object v2, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    .local v1, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    const/4 v2, 0x6

    iget-object v3, p0, Lasq;->d:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 154
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lasq;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    .restart local v1    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    .end local v1    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .restart local v1    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 221
    if-eqz p1, :cond_2

    .line 222
    iget-object v1, p0, Lasq;->h:Lcom/iflytek/base/skin/customView/XImageView;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v2, p0, Lasq;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lasq;->h:Lcom/iflytek/base/skin/customView/XImageView;

    .line 224
    iget-object v1, p0, Lasq;->h:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v2, "image.ic_subpage_list_arrow"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 226
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lasq;->k:Landroid/content/Context;

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 228
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 230
    iget-object v1, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v2, p0, Lasq;->h:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lasq;->c(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lasq;->h:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    iget-object v1, p0, Lasq;->h:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lasq;->h:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lasq;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    return-object v0
.end method

.method public b(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 317
    const-string/jumbo v0, "BasePluginItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "----------->>>showPluginIndicator() count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-lez p1, :cond_0

    .line 320
    invoke-direct {p0}, Lasq;->h()V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasq;->l:Z

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-direct {p0}, Lasq;->i()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasq;->l:Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    iget-object v1, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v2, p0, Lasq;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    .line 174
    iget-object v1, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "style_menu_item_test"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 176
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 179
    iget-object v1, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 180
    iget-object v1, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v2, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v1, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v1

    const-string/jumbo v2, "16"

    sget-object v3, Lcom/iflytek/base/skin/space/SpaceType;->LEFT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 183
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    new-array v2, v4, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v1, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lasq;->i:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lasq;->e:Lcom/iflytek/base/skin/customView/XTextView;

    new-array v2, v4, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    const/4 v4, -0x2

    .line 263
    iput-boolean p1, p0, Lasq;->l:Z

    .line 264
    if-eqz p1, :cond_2

    .line 265
    iget-object v1, p0, Lasq;->c:Lcom/iflytek/base/skin/customView/XImageView;

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v2, p0, Lasq;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lasq;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 267
    iget-object v1, p0, Lasq;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v2, "image.menu_new_plugin"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 269
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v0, "lpIcon":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 272
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 273
    iget-object v1, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v2, p0, Lasq;->c:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .end local v0    # "lpIcon":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lasq;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    iget-object v1, p0, Lasq;->c:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lasq;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract c()V
.end method

.method public c(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    iget-object v1, p0, Lasq;->g:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v2, p0, Lasq;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lasq;->g:Lcom/iflytek/base/skin/customView/XTextView;

    .line 202
    iget-object v1, p0, Lasq;->g:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "style_menu_item_install_tip"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 204
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 205
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lasq;->k:Landroid/content/Context;

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 206
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 207
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 208
    iget-object v1, p0, Lasq;->b:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iget-object v2, p0, Lasq;->g:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lasq;->g:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0, v6}, Lasq;->a(Z)V

    .line 212
    iget-object v1, p0, Lasq;->g:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v1, p0, Lasq;->g:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lasq;->g:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lasq;

    invoke-virtual {p0, p1}, Lasq;->a(Lasq;)I

    move-result v0

    return v0
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    instance-of v0, p1, Lasq;

    if-nez v0, :cond_1

    .line 296
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 298
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lasq;->d()I

    move-result v0

    check-cast p1, Lasq;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lasq;->d()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()V
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lasq;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
