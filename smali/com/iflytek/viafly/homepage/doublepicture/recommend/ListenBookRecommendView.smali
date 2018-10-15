.class public Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "ListenBookRecommendView.java"

# interfaces
.implements Lajk;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/content/Context;

.field private r:Lakr;

.field private s:Lako;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->g()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Lako;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->s:Lako;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 14
    .param p1, "mListenView"    # Landroid/view/View;

    .prologue
    const-wide/high16 v12, 0x402c000000000000L    # 14.0

    const/4 v10, 0x0

    .line 173
    const v6, 0x7f0b044c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 174
    .local v4, "relativeLayout1":Landroid/widget/RelativeLayout;
    const v6, 0x7f0b044e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 175
    .local v5, "relativeLayout2":Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-static {v6}, Lhl;->f(Landroid/content/Context;)I

    move-result v0

    .line 176
    .local v0, "aWidth":I
    if-lez v0, :cond_0

    .line 178
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    const-wide/high16 v8, 0x4047000000000000L    # 46.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    sub-int/2addr v0, v6

    .line 179
    div-int/lit8 v0, v0, 0x2

    .line 180
    const-string/jumbo v6, "ListenBookRecommendView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    int-to-double v6, v0

    const-wide v8, 0x3ffee147ae147ae1L    # 1.93

    div-double/2addr v6, v8

    double-to-int v1, v6

    .line 182
    .local v1, "aheight":I
    const-string/jumbo v6, "ListenBookRecommendView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v2, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-static {v6, v12, v13}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {v2, v6, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 185
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v3, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-static {v7, v12, v13}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    invoke-virtual {v3, v6, v10, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .end local v1    # "aheight":I
    .end local v2    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v6, 0x7f0b044d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->o:Landroid/widget/ImageView;

    .line 191
    const v6, 0x7f0b044f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->p:Landroid/widget/ImageView;

    .line 192
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->o:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->p:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 60
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300a4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 63
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a(Landroid/view/View;)V

    .line 64
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->r:Lakr;

    invoke-virtual {v0}, Lakr;->g()V

    .line 76
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 85
    const-string/jumbo v0, "ListenBookRecommendView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$2;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a()V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->r:Lakr;

    invoke-virtual {v0, p1}, Lakr;->a(Ljava/lang/String;)Lako;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->s:Lako;

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->s:Lako;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;-><init>(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->k()V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->k()V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lakr;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lakr;-><init>(Lajk;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->r:Lakr;

    .line 56
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a(Landroid/widget/LinearLayout;)V

    .line 57
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public getListOptions()Lbcu;
    .locals 3

    .prologue
    .line 197
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 199
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    const v2, 0x7f0202ab

    .line 202
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 204
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 206
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 207
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 137
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    const-string/jumbo v5, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 165
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string/jumbo v4, "content"

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->d(Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->q:Landroid/content/Context;

    invoke-static {v4}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v4

    const-string/jumbo v5, "LX_100122"

    invoke-virtual {v4, v5}, Lwz;->a(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 145
    :pswitch_1
    const/4 v2, 0x0

    .line 147
    .local v2, "oneItemResult":Lakp;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lakp;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->r:Lakr;

    invoke-virtual {v4, v2, v6}, Lakr;->a(Lakp;I)V

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ListenBookRecommendView"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "oneItemResult":Lakp;
    :pswitch_2
    const/4 v3, 0x0

    .line 156
    .local v3, "recommendItemResult":Lakp;
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lakp;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :goto_2
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->r:Lakr;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lakr;->a(Lakp;I)V

    goto :goto_0

    .line 157
    :catch_1
    move-exception v1

    .line 158
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ListenBookRecommendView"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b044d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->r:Lakr;

    invoke-virtual {v0, p1}, Lakr;->a(Lail;)V

    .line 81
    return-void
.end method
