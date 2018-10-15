.class public Lcom/iflytek/viafly/ui/CustomToast;
.super Ljava/lang/Object;
.source "CustomToast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomToast"


# instance fields
.field private context:Landroid/content/Context;

.field private popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/CustomToast;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/CustomToast;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/ui/CustomToast;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/CustomToast;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    return-object p1
.end method

.method private show(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 214
    const/16 v2, 0x64

    if-ge p1, v2, :cond_0

    .line 215
    const/16 p1, 0x3e8

    .line 218
    :cond_0
    const/16 v1, 0x64

    .line 219
    .local v1, "sleepTime":I
    div-int/lit8 v0, p1, 0x64

    .line 221
    .local v0, "count":I
    sget-object v2, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/iflytek/viafly/ui/CustomToast$1;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/ui/CustomToast$1;-><init>(Lcom/iflytek/viafly/ui/CustomToast;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method


# virtual methods
.method public makeCreditText(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 80
    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 81
    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 83
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "contentView":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020346

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    .line 90
    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    iget-object v8, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    invoke-static {v8, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v2, "imgParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    const/16 v7, 0x10

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v7

    const-string/jumbo v8, "image.ic_coin_toast"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v3, "labelTv":Lcom/iflytek/base/skin/customView/XTextView;
    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 103
    const-string/jumbo v7, "\u54aa\u5495\u5e01"

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string/jumbo v7, "style_custom_signed_label_toast_text"

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v7, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 105
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v9, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    const/16 v7, 0x10

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 108
    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v6, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v6, "valueTv":Lcom/iflytek/base/skin/customView/XTextView;
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const-string/jumbo v7, "style_custom_signed_value_toast_text"

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 114
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v5, "valueLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x10

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 116
    invoke-virtual {v6, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object v7, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method public makeNormalText(II)V
    .locals 9
    .param p1, "migu"    # I
    .param p2, "growth"    # I

    .prologue
    const/16 v8, 0x21

    const/4 v7, -0x1

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u54aa\u5495\u5e01 +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n\u6210\u957f\u503c +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "value":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 168
    .local v3, "ss":Landroid/text/SpannableString;
    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, "firstIndex":I
    const-string/jumbo v5, "\u6210\u957f\u503c"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "centerIndex":I
    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 171
    .local v2, "lastIndex":I
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 172
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v5, v0, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 173
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/ui/CustomToast;->makeNormalText(Landroid/text/SpannableString;)V

    .line 174
    return-void
.end method

.method public makeNormalText(Landroid/text/SpannableString;)V
    .locals 9
    .param p1, "value"    # Landroid/text/SpannableString;

    .prologue
    const/16 v8, 0x11

    const/4 v5, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 135
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "contentView":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    iget-object v4, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020346

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v3, "valueTv":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v4, "style_custom_signed_value_toast_text"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 142
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v2, "valueLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 144
    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 147
    invoke-virtual {v3, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v1, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v1, v8, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 152
    invoke-virtual {v1, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 153
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 155
    return-void
.end method

.method public makeText(I)V
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/CustomToast;->makeText(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public makeText(Ljava/lang/String;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 59
    iget-object v3, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .line 61
    .local v1, "dx":I
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "contentView":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v0, v1, v6, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 64
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/CustomToast;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v2, "textView":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual {v2, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 68
    invoke-virtual {v2, v6, v1, v6, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 69
    const-string/jumbo v3, "image.authentication_toast_bg"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 70
    const-string/jumbo v3, "style_custom_toast_text"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 71
    invoke-virtual {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v3, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public show(IIII)V
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "duration"    # I

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const/16 p1, 0x33

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 210
    invoke-direct {p0, p4}, Lcom/iflytek/viafly/ui/CustomToast;->show(I)V

    .line 211
    return-void
.end method

.method public show(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchorView"    # Landroid/view/View;

    .prologue
    .line 193
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/16 v0, 0x5dc

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/viafly/ui/CustomToast;->show(Landroid/content/Context;Landroid/view/View;I)V

    .line 196
    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 187
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0, p2, v1, v1, p3}, Lcom/iflytek/viafly/ui/CustomToast;->show(Landroid/view/View;III)V

    .line 190
    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I

    .prologue
    .line 181
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const/16 v0, 0x5dc

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/iflytek/viafly/ui/CustomToast;->show(Landroid/view/View;III)V

    .line 184
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;III)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "duration"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/ui/CustomToast;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 201
    invoke-direct {p0, p4}, Lcom/iflytek/viafly/ui/CustomToast;->show(I)V

    .line 202
    return-void
.end method
