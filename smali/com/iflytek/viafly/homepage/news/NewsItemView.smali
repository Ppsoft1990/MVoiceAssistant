.class public Lcom/iflytek/viafly/homepage/news/NewsItemView;
.super Landroid/widget/RelativeLayout;
.source "NewsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/news/NewsItemView$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lall;

.field private i:Lcom/iflytek/viafly/homepage/news/NewsItemView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lall;Lcom/iflytek/viafly/homepage/news/NewsItemView$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newsModel"    # Lall;
    .param p3, "callBack"    # Lcom/iflytek/viafly/homepage/news/NewsItemView$a;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v0, "NewsItemView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->a:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->b:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->h:Lall;

    .line 46
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->i:Lcom/iflytek/viafly/homepage/news/NewsItemView$a;

    .line 47
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->a()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/news/NewsItemView;)Lcom/iflytek/viafly/homepage/news/NewsItemView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/NewsItemView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->i:Lcom/iflytek/viafly/homepage/news/NewsItemView$a;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 51
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030053

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 54
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 55
    .local v2, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const v3, 0x7f0b02cf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->c:Landroid/widget/ImageView;

    .line 57
    const v3, 0x7f0b02ce

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->d:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f0b02d0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->e:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f0b02d1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->f:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0b02d2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->g:Landroid/widget/LinearLayout;

    .line 61
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->b()V

    .line 62
    new-instance v3, Lcom/iflytek/viafly/homepage/news/NewsItemView$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView$1;-><init>(Lcom/iflytek/viafly/homepage/news/NewsItemView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/news/NewsItemView;)Lall;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/NewsItemView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->h:Lall;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const v3, 0x7f0a002e

    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->h:Lall;

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 79
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->g:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->h:Lall;

    invoke-virtual {v2}, Lall;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->h:Lall;

    invoke-virtual {v2}, Lall;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->h:Lall;

    invoke-virtual {v1}, Lall;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "intervalHour":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->h:Lall;

    invoke-virtual {v2}, Lall;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->getListOptions()Lbcu;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "timeBefore"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 119
    const-string/jumbo v1, ""

    .line 142
    :goto_0
    return-object v1

    .line 121
    :cond_0
    const-string/jumbo v1, ""

    .line 122
    .local v1, "interverTime":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 123
    .local v0, "date":Ljava/util/Date;
    const-string/jumbo v11, "yyyy-MM-dd HH:mm"

    invoke-static {v0, v11}, Lbaa;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "timeNow":Ljava/lang/String;
    invoke-static {p1, v10}, Lbaa;->d(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 125
    .local v6, "intervalTime":J
    const-string/jumbo v11, "NewsItemView"

    const-string/jumbo v12, "getIntervalTimeToNow: "

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-gez v11, :cond_1

    .line 127
    const-string/jumbo v1, ""

    goto :goto_0

    .line 128
    :cond_1
    const-wide/32 v12, 0xea60

    cmp-long v11, v6, v12

    if-gez v11, :cond_2

    .line 129
    const-string/jumbo v1, "\u521a\u521a"

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-wide/32 v12, 0x36ee80

    cmp-long v11, v6, v12

    if-gez v11, :cond_3

    .line 132
    const-wide/32 v12, 0xea60

    div-long v8, v6, v12

    .line 133
    .local v8, "minuteStr":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u5206\u949f\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    goto :goto_0

    .line 135
    .end local v8    # "minuteStr":J
    :cond_3
    const-wide/32 v12, 0x5265c00

    cmp-long v11, v6, v12

    if-gez v11, :cond_4

    .line 136
    const-wide/32 v12, 0x36ee80

    div-long v4, v6, v12

    .line 137
    .local v4, "hourStr":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u5c0f\u65f6\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    goto :goto_0

    .line 140
    .end local v4    # "hourStr":J
    :cond_4
    const-wide/32 v12, 0x5265c00

    div-long v2, v6, v12

    .line 141
    .local v2, "dayStr":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u5929\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    goto/16 :goto_0
.end method

.method public a(Lall;)V
    .locals 1
    .param p1, "newsModel"    # Lall;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView;->h:Lall;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->b()V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->setVisibility(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getListOptions()Lbcu;
    .locals 3

    .prologue
    .line 103
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 105
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 109
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 111
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 113
    .local v0, "options":Lbcu;
    return-object v0
.end method
