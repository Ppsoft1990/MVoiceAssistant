.class public Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;
.super Landroid/widget/RelativeLayout;
.source "HotVoiceItem.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lbbb;

.field private q:Landroid/view/animation/RotateAnimation;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Lbbb;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hotRole"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p3, "voiceRoleInterface"    # Lbbb;
    .param p4, "mEntryType"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 61
    iput-object p3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->p:Lbbb;

    .line 62
    iput-object p4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->r:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b()V

    .line 64
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->q:Landroid/view/animation/RotateAnimation;

    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->q:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->q:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 274
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 275
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->q:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 276
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->q:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 67
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300aa

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 70
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 71
    .local v2, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const v3, 0x7f0b047c

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f0b0487

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->d:Landroid/widget/ImageView;

    .line 74
    const v3, 0x7f0b0488

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->e:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 75
    const v3, 0x7f0b047d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->f:Landroid/widget/TextView;

    .line 76
    const v3, 0x7f0b047f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->g:Landroid/widget/TextView;

    .line 77
    const v3, 0x7f0b0480

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->h:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f0b0486

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->i:Landroid/widget/ImageView;

    .line 79
    const v3, 0x7f0b0485

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->j:Landroid/widget/ImageView;

    .line 80
    const v3, 0x7f0b0484

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->k:Landroid/widget/TextView;

    .line 81
    const v3, 0x7f0b0483

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->l:Landroid/widget/ImageView;

    .line 82
    const v3, 0x7f0b047b

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->o:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c:Landroid/widget/TextView;

    new-instance v4, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$1;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$1;-><init>(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->k:Landroid/widget/TextView;

    new-instance v4, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$2;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$2;-><init>(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->l:Landroid/widget/ImageView;

    new-instance v4, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$3;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$3;-><init>(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->d:Landroid/widget/ImageView;

    new-instance v4, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$4;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$4;-><init>(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->i:Landroid/widget/ImageView;

    new-instance v4, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem$5;-><init>(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a()V

    .line 128
    return-void
.end method

.method private b(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 284
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;)Lbbb;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->p:Lbbb;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 247
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a:Landroid/content/Context;

    const v4, 0x7f03015b

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 248
    .local v2, "view":Landroid/widget/LinearLayout;
    const v3, 0x7f0b07af

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    .local v0, "textView":Landroid/widget/TextView;
    const-string/jumbo v3, "0"

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const-string/jumbo v3, "\u7cfb\u7edf\u8bed\u97f3:\u7075\u7280\u4e3b\u53d1\u58f0\u4eba\uff0c\u9002\u7528\u4e8e\u9ea6\u514b\u98ce\u3001\u63d0\u9192\u3001\u901f\u8bb0\u3001\u6765\u7535\u64ad\u62a5(\u5b89\u5353)\u7b49\u529f\u80fd\u6a21\u5757\u3002"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_0
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a:Landroid/content/Context;

    const-wide v4, 0x4060400000000000L    # 130.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 255
    .local v1, "tipPopWindow":Landroid/widget/PopupWindow;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 259
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 260
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 266
    :goto_1
    return-void

    .line 252
    .end local v1    # "tipPopWindow":Landroid/widget/PopupWindow;
    :cond_0
    const-string/jumbo v3, "\u573a\u666f\u8bed\u97f3:\u9002\u7528\u4e8e\u7279\u5b9a\u573a\u666f\u7684\u8bed\u97f3\uff0c\u5305\u62ec\u65e9\u665a\u5b89\u63d0\u9192\u3001\u6765\u7535\u64ad\u62a5(\u5b89\u5353)\u7b49\u3002"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    .restart local v1    # "tipPopWindow":Landroid/widget/PopupWindow;
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a:Landroid/content/Context;

    const-wide v6, 0x405a400000000000L    # 105.0

    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a:Landroid/content/Context;

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    invoke-static {v5, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x6

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 132
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->e:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->getListOptions()Lbcu;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 133
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_4

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v4, "0"

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 142
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c:Landroid/widget/TextView;

    const-string/jumbo v5, "\u7cfb\u7edf\n\u8bed\u97f3"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c:Landroid/widget/TextView;

    const v5, 0x7f02040c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->n:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 145
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->i:Landroid/widget/ImageView;

    const v5, 0x7f0201f4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->o:Landroid/widget/RelativeLayout;

    const v5, 0x7f0201eb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 151
    :goto_1
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v11, :cond_6

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 176
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->k:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 179
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 180
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 184
    :goto_4
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 185
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->l:Landroid/widget/ImageView;

    const v5, 0x7f0201e3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    :goto_5
    return-void

    .line 138
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_4
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 148
    :cond_5
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->i:Landroid/widget/ImageView;

    const v5, 0x7f0201f3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->o:Landroid/widget/RelativeLayout;

    const v5, 0x7f0201ea

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 156
    :cond_6
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->g:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 160
    :cond_7
    const-string/jumbo v4, "1"

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c:Landroid/widget/TextView;

    const-string/jumbo v5, "\u573a\u666f\n\u8bed\u97f3"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->i:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v5, v6}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 163
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->c:Landroid/widget/TextView;

    const v5, 0x7f02040b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 164
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 165
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "show":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_8

    .line 167
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_8
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v2    # "show":Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->h:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 182
    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_a
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_4

    .line 187
    :cond_b
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->l:Landroid/widget/ImageView;

    const v5, 0x7f02042c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 290
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a()V

    .line 291
    return-void
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "statusTv"    # Landroid/widget/ImageView;
    .param p3, "anim"    # Landroid/widget/ImageView;

    .prologue
    const v3, 0x7f02042a

    .line 193
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v0

    .line 194
    .local v0, "status":Lcom/iflytek/viafly/voicerole/model/Status;
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const v1, 0x7f0201f4

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->o:Landroid/widget/RelativeLayout;

    const v2, 0x7f0201eb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 197
    invoke-direct {p0, p3}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Landroid/widget/ImageView;)V

    .line 218
    :goto_0
    return-void

    .line 199
    :cond_0
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_3

    .line 200
    :cond_1
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    invoke-direct {p0, p3}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Landroid/widget/ImageView;)V

    .line 217
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->o:Landroid/widget/RelativeLayout;

    const v2, 0x7f0201ea

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 202
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_4

    .line 203
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    invoke-direct {p0, p3}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 205
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_5

    .line 206
    const v1, 0x7f02042b

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    invoke-direct {p0, p3}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 208
    :cond_5
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_2

    .line 209
    const-string/jumbo v1, "6.0main"

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "ad"

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->r:Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 211
    :cond_6
    const v1, 0x7f0201e8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    :goto_2
    invoke-direct {p0, p3}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->b(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 213
    :cond_7
    const v1, 0x7f0201f3

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public getListOptions()Lbcu;
    .locals 3

    .prologue
    .line 221
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 223
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    const v2, 0x7f0201f6

    .line 225
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 228
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 230
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 232
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public setSelectRingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectRingId"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->m:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setSelectVoiceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectVoiceId"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->n:Ljava/lang/String;

    .line 241
    return-void
.end method
