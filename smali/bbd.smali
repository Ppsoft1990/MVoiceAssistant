.class public Lbbd;
.super Landroid/widget/BaseAdapter;
.source "VoiceCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbd$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lbbb;

.field private f:Landroid/view/animation/RotateAnimation;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lbbb;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callBack"    # Lbbb;
    .param p4, "mEntryType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;",
            "Lbbb;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    iput-object p1, p0, Lbbd;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lbbd;->b:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lbbd;->e:Lbbb;

    .line 62
    iput-object p4, p0, Lbbd;->g:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic a(Lbbd;)Lbbb;
    .locals 1
    .param p0, "x0"    # Lbbd;

    .prologue
    .line 38
    iget-object v0, p0, Lbbd;->e:Lbbb;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lbbd;->f:Landroid/view/animation/RotateAnimation;

    .line 316
    iget-object v0, p0, Lbbd;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 317
    iget-object v0, p0, Lbbd;->f:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 318
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 319
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lbbd;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 320
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lbbd;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 323
    :cond_0
    return-void
.end method

.method static synthetic b(Lbbd;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lbbd;

    .prologue
    .line 38
    iget-object v0, p0, Lbbd;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 327
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    return-void
.end method


# virtual methods
.method public a()Lbcu;
    .locals 3

    .prologue
    .line 299
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 301
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    const v2, 0x7f0201f6

    .line 304
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 306
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 308
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 310
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "statusTv"    # Landroid/widget/ImageView;
    .param p3, "anim"    # Landroid/widget/ImageView;

    .prologue
    const v3, 0x7f02042a

    .line 234
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v0

    .line 235
    .local v0, "status":Lcom/iflytek/viafly/voicerole/model/Status;
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbbd;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const v1, 0x7f0201f4

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    invoke-direct {p0, p3}, Lbbd;->b(Landroid/widget/ImageView;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_3

    .line 239
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    invoke-direct {p0, p3}, Lbbd;->b(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 241
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_4

    .line 242
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    invoke-direct {p0, p3}, Lbbd;->b(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 244
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_5

    .line 245
    const v1, 0x7f02042b

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    invoke-direct {p0, p3}, Lbbd;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 247
    :cond_5
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_0

    .line 248
    const-string/jumbo v1, "6.0main"

    iget-object v2, p0, Lbbd;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "ad"

    iget-object v2, p0, Lbbd;->g:Ljava/lang/String;

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 250
    :cond_6
    const v1, 0x7f0201e8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    :goto_1
    invoke-direct {p0, p3}, Lbbd;->b(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 252
    :cond_7
    const v1, 0x7f0201f3

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectRingId"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lbbd;->c:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    iput-object p1, p0, Lbbd;->b:Ljava/util/List;

    .line 295
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 296
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectVoiceId"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lbbd;->d:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbbd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lbbd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lbbd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    iget-object v8, p0, Lbbd;->b:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 84
    .local v6, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {p0, p1}, Lbbd;->getItemViewType(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 229
    :goto_0
    return-object p2

    .line 86
    :pswitch_0
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 88
    iget-object v8, p0, Lbbd;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030132

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    :try_start_0
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    iget-object v10, p0, Lbbd;->a:Landroid/content/Context;

    invoke-static {v10}, Lhl;->g(Landroid/content/Context;)I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "StarAudio"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v8, p0, Lbbd;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030133

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    const v8, 0x7f0b06db

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 97
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    .end local v5    # "textView":Landroid/widget/TextView;
    :pswitch_1
    if-nez p2, :cond_5

    .line 103
    new-instance v7, Lbbd$a;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lbbd$a;-><init>(Lbbd$1;)V

    .line 104
    .local v7, "wrapper":Lbbd$a;
    iget-object v8, p0, Lbbd;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03012e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 105
    .local v3, "rootView":Landroid/view/View;
    const v8, 0x7f0b03dd

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v8, v7, Lbbd$a;->a:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 106
    const v8, 0x7f0b03e2

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lbbd$a;->g:Landroid/widget/ImageView;

    .line 107
    const v8, 0x7f0b03e0

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lbbd$a;->h:Landroid/widget/ImageView;

    .line 108
    const v8, 0x7f0b06ce

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lbbd$a;->i:Landroid/widget/ImageView;

    .line 109
    const v8, 0x7f0b03de

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lbbd$a;->b:Landroid/widget/TextView;

    .line 110
    const v8, 0x7f0b03df

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lbbd$a;->c:Landroid/widget/TextView;

    .line 111
    const v8, 0x7f0b06ca

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lbbd$a;->d:Landroid/widget/TextView;

    .line 112
    const v8, 0x7f0b06cb

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lbbd$a;->e:Landroid/widget/TextView;

    .line 113
    const v8, 0x7f0b06cc

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lbbd$a;->f:Landroid/widget/TextView;

    .line 114
    const v8, 0x7f0b06cd

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lbbd$a;->j:Landroid/widget/ImageView;

    .line 115
    move-object p2, v3

    .line 116
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    .end local v3    # "rootView":Landroid/view/View;
    :goto_1
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v8

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lbbd$a;->a:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {p0}, Lbbd;->a()Lbcu;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 122
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 123
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-le v8, v9, :cond_6

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "name":Ljava/lang/String;
    iget-object v8, v7, Lbbd$a;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string/jumbo v8, "0"

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 131
    iget-object v8, v7, Lbbd$a;->d:Landroid/widget/TextView;

    const-string/jumbo v9, "\u7cfb\u7edf\u8bed\u97f3"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v8, v7, Lbbd$a;->i:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v8, v7, Lbbd$a;->d:Landroid/widget/TextView;

    const v9, 0x7f02040c

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    iget-object v8, p0, Lbbd;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lbbd;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 135
    iget-object v8, v7, Lbbd$a;->h:Landroid/widget/ImageView;

    const v9, 0x7f0201f4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :goto_3
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 140
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_8

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0xa

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "tag":Ljava/lang/String;
    iget-object v8, v7, Lbbd$a;->c:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    :goto_4
    iget-object v8, v7, Lbbd$a;->e:Landroid/widget/TextView;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3
    :goto_5
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 166
    iget-object v8, v7, Lbbd$a;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_4
    iget-object v8, v7, Lbbd$a;->f:Landroid/widget/TextView;

    new-instance v9, Lbbd$1;

    invoke-direct {v9, p0, v6}, Lbbd$1;-><init>(Lbbd;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v8, v7, Lbbd$a;->j:Landroid/widget/ImageView;

    new-instance v9, Lbbd$2;

    invoke-direct {v9, p0, v6}, Lbbd$2;-><init>(Lbbd;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v8, v7, Lbbd$a;->g:Landroid/widget/ImageView;

    new-instance v9, Lbbd$3;

    invoke-direct {v9, p0, v6}, Lbbd$3;-><init>(Lbbd;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v8, v7, Lbbd$a;->d:Landroid/widget/TextView;

    new-instance v9, Lbbd$4;

    invoke-direct {v9, p0, v6}, Lbbd$4;-><init>(Lbbd;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v8, v7, Lbbd$a;->h:Landroid/widget/ImageView;

    new-instance v9, Lbbd$5;

    invoke-direct {v9, p0, v6}, Lbbd$5;-><init>(Lbbd;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v8, v7, Lbbd$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 217
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 218
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 222
    :goto_6
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 223
    iget-object v8, v7, Lbbd$a;->j:Landroid/widget/ImageView;

    const v9, 0x7f0201e3

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v7    # "wrapper":Lbbd$a;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbbd$a;

    .restart local v7    # "wrapper":Lbbd$a;
    goto/16 :goto_1

    .line 127
    :cond_6
    iget-object v8, v7, Lbbd$a;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 137
    :cond_7
    iget-object v8, v7, Lbbd$a;->h:Landroid/widget/ImageView;

    const v9, 0x7f0201f3

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 144
    :cond_8
    iget-object v8, v7, Lbbd$a;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 148
    :cond_9
    const-string/jumbo v8, "1"

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 149
    iget-object v8, v7, Lbbd$a;->d:Landroid/widget/TextView;

    const-string/jumbo v9, "\u573a\u666f\u8bed\u97f3"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v8, v7, Lbbd$a;->h:Landroid/widget/ImageView;

    iget-object v9, v7, Lbbd$a;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v8, v9}, Lbbd;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 151
    iget-object v8, v7, Lbbd$a;->d:Landroid/widget/TextView;

    const v9, 0x7f02040b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 152
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 153
    iget-object v8, v7, Lbbd$a;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_a
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 156
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    if-le v8, v9, :cond_b

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    .restart local v4    # "tag":Ljava/lang/String;
    iget-object v8, v7, Lbbd$a;->c:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 160
    .end local v4    # "tag":Ljava/lang/String;
    :cond_b
    iget-object v8, v7, Lbbd$a;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 220
    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_6

    .line 225
    :cond_d
    iget-object v8, v7, Lbbd$a;->j:Landroid/widget/ImageView;

    const v9, 0x7f02042c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x2

    return v0
.end method
