.class public Lbbc;
.super Landroid/widget/BaseAdapter;
.source "SpeakerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc$a;
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

.field private c:Lbbh;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lbbh;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lbbh;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;",
            "Lbbh;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "speakers":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object p1, p0, Lbbc;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lbbc;->b:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lbbc;->c:Lbbh;

    .line 51
    iput p4, p0, Lbbc;->e:I

    .line 52
    return-void
.end method

.method static synthetic a(Lbbc;)Lbbh;
    .locals 1
    .param p0, "x0"    # Lbbc;

    .prologue
    .line 36
    iget-object v0, p0, Lbbc;->c:Lbbh;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lbbc;->f:Landroid/view/animation/RotateAnimation;

    .line 241
    iget-object v0, p0, Lbbc;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 242
    iget-object v0, p0, Lbbc;->f:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 243
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 244
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    iget-object v0, p0, Lbbc;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 245
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lbbc;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    :cond_0
    return-void
.end method

.method private b(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 252
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    return-void
.end method


# virtual methods
.method public a()Lbcu;
    .locals 3

    .prologue
    .line 200
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 202
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    const v2, 0x7f0201f6

    .line 204
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 207
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 209
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 211
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 1
    .param p1, "speaker"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc;->d:Ljava/lang/String;

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "statusTv"    # Landroid/widget/ImageView;
    .param p3, "anim"    # Landroid/widget/ImageView;

    .prologue
    const v2, 0x7f02042a

    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->c()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v0

    .line 220
    .local v0, "status":Lcom/iflytek/viafly/voicerole/model/Status;
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_2

    .line 221
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    invoke-direct {p0, p3}, Lbbc;->b(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 223
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_4

    .line 224
    :cond_3
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    invoke-direct {p0, p3}, Lbbc;->b(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 226
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_5

    .line 227
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    invoke-direct {p0, p3}, Lbbc;->b(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 229
    :cond_5
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_6

    .line 230
    const v1, 0x7f02042b

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    invoke-direct {p0, p3}, Lbbc;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 232
    :cond_6
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v0, v1, :cond_0

    .line 233
    const v1, 0x7f0201e8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    invoke-direct {p0, p3}, Lbbc;->b(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbbc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lbbc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    iget-object v6, p0, Lbbc;->b:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 74
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez p2, :cond_3

    .line 75
    new-instance v5, Lbbc$a;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lbbc$a;-><init>(Lbbc$1;)V

    .line 76
    .local v5, "wrapper":Lbbc$a;
    iget-object v6, p0, Lbbc;->a:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03012f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "rootView":Landroid/view/View;
    const v6, 0x7f0b06cf

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lbbc$a;->a:Landroid/widget/LinearLayout;

    .line 78
    const v6, 0x7f0b06d4

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lbbc$a;->j:Landroid/widget/TextView;

    .line 79
    const v6, 0x7f0b06d3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lbbc$a;->i:Landroid/view/View;

    .line 80
    const v6, 0x7f0b06d0

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v6, v5, Lbbc$a;->b:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 81
    const v6, 0x7f0b06d1

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lbbc$a;->c:Landroid/widget/TextView;

    .line 82
    const v6, 0x7f0b06d2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lbbc$a;->d:Landroid/widget/TextView;

    .line 83
    const v6, 0x7f0b06d5

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lbbc$a;->e:Landroid/widget/ImageView;

    .line 84
    const v6, 0x7f0b06d7

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lbbc$a;->f:Landroid/widget/ImageView;

    .line 85
    const v6, 0x7f0b06d9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lbbc$a;->g:Landroid/widget/ImageView;

    .line 86
    const v6, 0x7f0b06ce

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lbbc$a;->h:Landroid/widget/ImageView;

    .line 87
    const v6, 0x7f0b06d8

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v5, Lbbc$a;->k:Landroid/widget/RelativeLayout;

    .line 88
    move-object p2, v2

    .line 89
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    .end local v2    # "rootView":Landroid/view/View;
    :goto_0
    const/4 v6, 0x2

    iget v7, p0, Lbbc;->e:I

    if-ne v6, v7, :cond_4

    .line 95
    iget-object v6, v5, Lbbc$a;->k:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object v6, v5, Lbbc$a;->i:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v6, v5, Lbbc$a;->j:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v6, v5, Lbbc$a;->f:Landroid/widget/ImageView;

    new-instance v7, Lbbc$1;

    invoke-direct {v7, p0, v4}, Lbbc$1;-><init>(Lbbc;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_0
    :goto_1
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v6

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lbbc$a;->b:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {p0}, Lbbc;->a()Lbcu;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 132
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 133
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_6

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "name":Ljava/lang/String;
    iget-object v6, v5, Lbbc$a;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_7

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "tag":Ljava/lang/String;
    iget-object v6, v5, Lbbc$a;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object v6, v5, Lbbc$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 149
    .local v0, "animaition":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 150
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 155
    :goto_4
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lbbc;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 156
    iget-object v6, v5, Lbbc$a;->f:Landroid/widget/ImageView;

    const v7, 0x7f0201f4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    :goto_5
    iget-object v6, v5, Lbbc$a;->a:Landroid/widget/LinearLayout;

    new-instance v7, Lbbc$3;

    invoke-direct {v7, p0, v4}, Lbbc$3;-><init>(Lbbc;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-object p2

    .line 91
    .end local v0    # "animaition":Landroid/graphics/drawable/AnimationDrawable;
    .end local v5    # "wrapper":Lbbc$a;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbbc$a;

    .restart local v5    # "wrapper":Lbbc$a;
    goto/16 :goto_0

    .line 105
    :cond_4
    const/4 v6, 0x1

    iget v7, p0, Lbbc;->e:I

    if-ne v6, v7, :cond_0

    .line 106
    iget-object v6, v5, Lbbc$a;->f:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 109
    iget-object v6, v5, Lbbc$a;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_5
    iget-object v6, v5, Lbbc$a;->g:Landroid/widget/ImageView;

    new-instance v7, Lbbc$2;

    invoke-direct {v7, p0, v4}, Lbbc$2;-><init>(Lbbc;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v6, v5, Lbbc$a;->g:Landroid/widget/ImageView;

    iget-object v7, v5, Lbbc$a;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v6, v7}, Lbbc;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 137
    :cond_6
    iget-object v6, v5, Lbbc$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 145
    :cond_7
    iget-object v6, v5, Lbbc$a;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 152
    .restart local v0    # "animaition":Landroid/graphics/drawable/AnimationDrawable;
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_4

    .line 158
    :cond_9
    iget-object v6, v5, Lbbc$a;->f:Landroid/widget/ImageView;

    const v7, 0x7f02042d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method
