.class public Lcom/iflytek/mmp/core/webcore/BrowserCore;
.super Landroid/webkit/WebView;


# static fields
.field private static final ASSET_IMAGE_PATH:Ljava/lang/String; = "image/"

.field public static final MMP_UA_FLAG:Ljava/lang/String; = "iflytek_mmp"

.field public static final RPEFIX:Ljava/lang/String; = "iflytek:"

.field private static lastClickTime:J

.field private static final tag:Ljava/lang/String;


# instance fields
.field protected appHandleBackEvent:Z

.field protected browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

.field protected chromeClient:Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;

.field protected componentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

.field public context:Landroid/content/Context;

.field protected currentUrl:Ljava/lang/String;

.field protected isDestroy:Z

.field protected isHandleFocusChange:Z

.field protected isListenBackKeyEvent:Z

.field protected isSkipTelNumber:Z

.field private mDrawableListForRecycle:Ljava/util/List;

.field private mErrorView:Landroid/view/View;

.field protected webViewClient:Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->lastClickTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isHandleFocusChange:Z

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isListenBackKeyEvent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isSkipTelNumber:Z

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isHandleFocusChange:Z

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isListenBackKeyEvent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isSkipTelNumber:Z

    invoke-direct {p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->initView(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isHandleFocusChange:Z

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isListenBackKeyEvent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isSkipTelNumber:Z

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isHandleFocusChange:Z

    invoke-direct {p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->showErrorView()V

    return-void
.end method

.method static synthetic access$400()J
    .locals 2

    sget-wide v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->lastClickTime:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0

    sput-wide p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->lastClickTime:J

    return-wide p0
.end method

.method private createErrorView()Landroid/view/View;
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4062a00000000000L    # 149.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    const-wide v6, 0x4062a00000000000L    # 149.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v3, "emotion_error.png"

    invoke-direct {p0, v3}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getDrawableFromAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo v3, "#515151"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v3, "\u62b1\u6b49\uff0c\u6253\u4e0d\u5f00\u7f51\u9875\u4e86"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4071000000000000L    # 272.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v3, "#c8c8c8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v3, "browser_circle.png"

    invoke-direct {p0, v3}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getDrawableFromAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    invoke-direct {p0, v8, v9}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v7

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    invoke-direct {p0, v8, v9}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-direct {p0, v8, v9}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo v6, "#515151"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v6, "\u6682\u65f6\u6ca1\u6709\u7f51\u7edc\u4fe1\u53f7\u6216\u6570\u636e\u8fde\u63a5"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v6

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    invoke-direct {p0, v8, v9}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo v3, "#515151"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v3, "\u6b64\u7f51\u9875\u53ef\u80fd\u51fa\u73b0\u4e86\u6545\u969c\u6216\u4e0d\u5b58\u5728"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide v4, 0x4040800000000000L    # 33.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4058800000000000L    # 98.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    const-wide v6, 0x4040800000000000L    # 33.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v5

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v4, "ico_refresh_tryagain.png"

    invoke-direct {p0, v4}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getDrawableFromAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo v4, "#515151"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v4, "\u5237\u65b0\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/iflytek/mmp/core/webcore/BrowserCore$2;

    invoke-direct {v3, p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore$2;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4058800000000000L    # 98.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    const-wide v6, 0x4040800000000000L    # 33.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-direct {p0, v6, v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dip2px(D)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v3, "ico_install_network.png"

    invoke-direct {p0, v3}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getDrawableFromAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo v3, "#515151"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v3, "\u8bbe\u7f6e\u7f51\u7edc"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/iflytek/mmp/core/webcore/BrowserCore$3;

    invoke-direct {v2, p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore$3;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private dip2px(D)I
    .locals 5

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getDrawableFromAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "image/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mDrawableListForRecycle:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mDrawableListForRecycle:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mDrawableListForRecycle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mDrawableListForRecycle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    sget-object v2, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u83b7\u53d6\u8d44\u6e90\u56fe\u7247\u5931\u8d25\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    const-string/jumbo v0, "btn_refresh_tryagain_nor_bg.png"

    invoke-direct {p0, v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getDrawableFromAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "btn_refresh_tryagain_press_bg.png"

    invoke-direct {p0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getDrawableFromAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v3, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private handleKeyBackEvent()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->appHandleBackEvent:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "onBack()"

    invoke-virtual {p0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->goBack()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 9

    const/16 v5, 0x64

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setInitialScale(I)V

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->requestFocusFromTouch()Z

    invoke-virtual {p0, v6}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0, v6}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v2, v4, :cond_0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    :cond_0
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-static {}, Lsx;->a()I

    move-result v2

    const/4 v4, 0x7

    if-lt v2, v4, :cond_1

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "database"

    invoke-virtual {v2, v4, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    const-wide/32 v4, 0x800000

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "cache"

    invoke-virtual {v2, v4, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lsx;->a()I

    move-result v2

    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "setAllowUniversalAccessFromFileURLs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    new-instance v2, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;

    invoke-direct {v2, p0, v8}, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;Lcom/iflytek/mmp/core/webcore/BrowserCore$1;)V

    iput-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->webViewClient:Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;

    new-instance v2, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;

    invoke-direct {v2, p0, v8}, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;Lcom/iflytek/mmp/core/webcore/BrowserCore$1;)V

    iput-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->chromeClient:Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;

    iget-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->webViewClient:Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewClient;

    invoke-virtual {p0, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->chromeClient:Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;

    invoke-virtual {p0, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;-><init>(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    iput-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->componentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v4, "3."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "FLAG_HARDWARE_ACCELERATED"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    new-instance v2, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewDownLoadListener;

    invoke-direct {v2, p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebViewDownLoadListener;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " iflytek_mmp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "browserCore ua is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    sget-object v4, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v5, "reflect setAllowUniversalAccessFromFileURLs fail"

    invoke-static {v4, v5, v2}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    sget-object v2, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v4, "reflect FLAG_HARDWARE_ACCELERATED fail, so set default value"

    invoke-static {v2, v4}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v4, 0x1000000

    const/high16 v5, 0x1000000

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->showErrorView()V

    :cond_0
    return-void
.end method

.method private showErrorView()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->createErrorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->componentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->componentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponentsMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->componentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->getComponentsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public loadJavaScript(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadJavaScript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,current thread is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isDestroy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v1, "webview is destroyed, so not loadJavaScript"

    invoke-static {v0, v1}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/iflytek/mmp/core/webcore/BrowserCore$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore$1;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserCore;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v1, "context is null or is not activity context"

    invoke-static {v0, v1}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadUrl :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v2, "loadUrl error"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isDestroy:Z

    iput-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mDrawableListForRecycle:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mDrawableListForRecycle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mDrawableListForRecycle:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->componentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->onDestroy()V

    const-string/jumbo v0, "onAppExit()"

    invoke-virtual {p0, v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFocusChanged begin, focused is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,isHandleFocusChange is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isHandleFocusChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lsx;->a()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isHandleFocusChange:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string/jumbo v1, "mDefaultScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v2, "onFocusChanged error"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v2, "onFocusChanged error"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v2, "onFocusChanged error"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_1
    const-class v0, Landroid/webkit/WebView;

    const-string/jumbo v1, "mZoomManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "mDefaultScale"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    sget-object v1, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v2, "onFocusChanged error"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onKeyDown begin, keyCode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isListenBackKeyEvent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->handleKeyBackEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v1, "refresh webview"

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->showErrorView()V

    :cond_0
    return-void
.end method

.method public recyleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerComponents, serviceName is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->componentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->addComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    return-void
.end method

.method public reload()V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reload, url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setBrowserCoreListenerListener(Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->browserCoreListener:Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;

    return-void
.end method

.method public setListenBackKeyEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isListenBackKeyEvent:Z

    return-void
.end method

.method public setSkipTelNumber(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->isSkipTelNumber:Z

    return-void
.end method

.method public unRegisterComponents(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unRegisterComponents, serviceName is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore;->componentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->removeComponents(Ljava/lang/String;)V

    return-void
.end method
