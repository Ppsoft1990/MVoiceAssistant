.class public Lagu;
.super Landroid/widget/BaseAdapter;
.source "UserGuideCustomSpeakerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagu$b;,
        Lagu$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lpp;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lagu;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lagu;->c:Ljava/util/List;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lagu;->b:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method

.method static synthetic a(Lagu;I)I
    .locals 0
    .param p0, "x0"    # Lagu;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lagu;->e:I

    return p1
.end method

.method static synthetic a(Lagu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lagu;

    .prologue
    .line 35
    iget-object v0, p0, Lagu;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lagu;)Lpp;
    .locals 1
    .param p0, "x0"    # Lagu;

    .prologue
    .line 35
    iget-object v0, p0, Lagu;->d:Lpp;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lagu;->e:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "selectIndex"    # I

    .prologue
    .line 50
    iput p1, p0, Lagu;->e:I

    .line 51
    return-void
.end method

.method public b()Lbcu;
    .locals 3

    .prologue
    .line 218
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 220
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    const v2, 0x7f0201f6

    .line 223
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 225
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 227
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 229
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lagu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lagu;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    iget-object v6, p0, Lagu;->d:Lpp;

    if-nez v6, :cond_0

    .line 75
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v6

    invoke-virtual {v6}, Lahp;->l()Lpp;

    move-result-object v6

    iput-object v6, p0, Lagu;->d:Lpp;

    .line 77
    :cond_0
    iget-object v6, p0, Lagu;->c:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 79
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez p2, :cond_3

    .line 80
    new-instance v5, Lagu$b;

    invoke-direct {v5}, Lagu$b;-><init>()V

    .line 81
    .local v5, "wrapper":Lagu$b;
    iget-object v6, p0, Lagu;->b:Landroid/view/LayoutInflater;

    const v7, 0x7f030093

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "rootView":Landroid/view/View;
    const v6, 0x7f0b03dd

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v6, v5, Lagu$b;->a:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 83
    const v6, 0x7f0b03de

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lagu$b;->b:Landroid/widget/TextView;

    .line 84
    const v6, 0x7f0b03df

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lagu$b;->c:Landroid/widget/TextView;

    .line 85
    const v6, 0x7f0b03e1

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lagu$b;->d:Landroid/widget/LinearLayout;

    .line 86
    const v6, 0x7f0b03e2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lagu$b;->e:Landroid/widget/ImageView;

    .line 87
    const v6, 0x7f0b03e0

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lagu$b;->f:Landroid/widget/ImageView;

    .line 89
    new-instance v6, Lagu$1;

    invoke-direct {v6, p0}, Lagu$1;-><init>(Lagu;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    move-object p2, v2

    .line 96
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    .end local v2    # "rootView":Landroid/view/View;
    :goto_0
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v6

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lagu$b;->a:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {p0}, Lagu;->b()Lbcu;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 102
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 103
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_4

    .line 104
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

    .line 105
    .local v1, "name":Ljava/lang/String;
    iget-object v6, v5, Lagu$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 111
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_5

    .line 112
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

    .line 113
    .local v3, "tag":Ljava/lang/String;
    iget-object v6, v5, Lagu$b;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    :goto_2
    new-instance v0, Lagu$a;

    iget-object v6, v5, Lagu$b;->e:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v6, v4}, Lagu$a;-><init>(Lagu;Landroid/widget/ImageView;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 119
    .local v0, "listener":Lagu$a;
    iget-object v6, v5, Lagu$b;->d:Landroid/widget/LinearLayout;

    new-instance v7, Lagu$2;

    invoke-direct {v7, p0, v4, v0}, Lagu$2;-><init>(Lagu;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Lagu$a;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v6, v5, Lagu$b;->f:Landroid/widget/ImageView;

    new-instance v7, Lagu$3;

    invoke-direct {v7, p0, p1}, Lagu$3;-><init>(Lagu;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget v6, p0, Lagu;->e:I

    if-ne v6, p1, :cond_6

    .line 145
    iget-object v6, v5, Lagu$b;->f:Landroid/widget/ImageView;

    const v7, 0x7f0201f4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :goto_3
    return-object p2

    .line 98
    .end local v0    # "listener":Lagu$a;
    .end local v5    # "wrapper":Lagu$b;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lagu$b;

    .restart local v5    # "wrapper":Lagu$b;
    goto/16 :goto_0

    .line 107
    :cond_4
    iget-object v6, v5, Lagu$b;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    :cond_5
    iget-object v6, v5, Lagu$b;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 147
    .restart local v0    # "listener":Lagu$a;
    :cond_6
    iget-object v6, v5, Lagu$b;->f:Landroid/widget/ImageView;

    const v7, 0x7f0201f3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
