.class public Lcom/iflytek/viafly/voicerole/MyVoiceActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "MyVoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

.field private o:Z

.field private p:Lpp;

.field private q:Ljava/lang/String;

.field private r:Lic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    .line 80
    const-string/jumbo v0, "my"

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->q:Ljava/lang/String;

    .line 319
    new-instance v0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;-><init>(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->r:Lic;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 97
    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a:Landroid/widget/LinearLayout;

    .line 98
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->c:Landroid/widget/RelativeLayout;

    .line 100
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->d:Landroid/widget/RelativeLayout;

    .line 101
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->e:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->f:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 103
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->g:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->h:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->i:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;-><init>(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    .line 113
    new-instance v0, Lpp;

    invoke-direct {v0, p0}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->p:Lpp;

    .line 114
    invoke-static {p0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->r:Lic;

    invoke-virtual {v0, v1}, Lie;->a(Lic;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/MyVoiceActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    return-void
.end method

.method private b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/widget/RelativeLayout;
    .locals 14
    .param p1, "styleModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x6

    const/4 v11, 0x0

    .line 118
    const v9, 0x7f030168

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 119
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    const v9, 0x7f0b082a

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 120
    .local v4, "styleIcon":Lcom/iflytek/viafly/ui/view/CircleImageView;
    const v9, 0x7f0b082b

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 121
    .local v6, "styleName":Landroid/widget/TextView;
    const v9, 0x7f0b082c

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, "styleDesc":Landroid/widget/TextView;
    const v9, 0x7f0b082d

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    .local v7, "styleSize":Landroid/widget/TextView;
    const v9, 0x7f0b082f

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 124
    .local v5, "styleListen":Landroid/widget/ImageView;
    new-instance v9, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$1;

    invoke-direct {v9, p0, p1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$1;-><init>(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v9

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 131
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_3

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v13, :cond_4

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v8    # "tag":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 148
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_2
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 151
    .local v2, "styleAnimaition":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 152
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 156
    :goto_2
    iget-object v9, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->m:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-object v1

    .line 136
    .end local v2    # "styleAnimaition":Landroid/graphics/drawable/AnimationDrawable;
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    .restart local v2    # "styleAnimaition":Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_2
.end method

.method private b()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/16 v12, 0x8

    const/4 v11, 0x6

    const/4 v10, 0x0

    .line 161
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    invoke-virtual {v7}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 162
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    invoke-virtual {v7}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 163
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    invoke-virtual {v7}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "jiajia"

    .line 164
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v8

    invoke-virtual {v8}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 165
    :cond_0
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    invoke-virtual {v7}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v7

    iput-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 168
    :cond_1
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-nez v7, :cond_5

    .line 169
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 191
    :cond_3
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    :cond_4
    return-void

    .line 171
    :cond_5
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    iget-object v9, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->f:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v7, v8, v9}, Lbbi;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Landroid/widget/ImageView;)V

    .line 172
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 173
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_7

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 181
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v13, :cond_8

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "tag":Ljava/lang/String;
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 177
    .end local v4    # "tag":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->g:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 185
    :cond_8
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->h:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 193
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->l:Ljava/util/List;

    .line 194
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->m:Ljava/util/List;

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 196
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 197
    .local v6, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-direct {p0, v6}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 198
    .local v3, "relativeLayout":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->l:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_a

    .line 202
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 204
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f0a001c

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic b(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->e()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)Lpp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->p:Lpp;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 212
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v5, :cond_0

    .line 213
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 214
    .local v3, "systemAnimaition":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 221
    .end local v3    # "systemAnimaition":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->l:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 223
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 224
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->m:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 225
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 226
    .local v2, "styleAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 227
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 222
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "i":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "styleAnimation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v4    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .restart local v3    # "systemAnimaition":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 229
    .end local v3    # "systemAnimaition":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v0    # "i":I
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    .restart local v2    # "styleAnimation":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v4    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_2

    .line 233
    .end local v0    # "i":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "styleAnimation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v4    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_3
    return-void
.end method

.method private c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 5
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v4, 0x3

    .line 290
    if-nez p1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lbbl;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    const v1, 0x7f0c02b1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 307
    :cond_2
    iget-boolean v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 310
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    .line 311
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 313
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 314
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 263
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-nez v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->q:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lbbl;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 276
    :cond_1
    iget-boolean v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 279
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 282
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 285
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    const v1, 0x7f0c02b1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->c()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 404
    iput-boolean v3, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    .line 405
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 410
    .local v0, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    goto :goto_0

    .line 413
    .end local v0    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 414
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 519
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    const-string/jumbo v2, "note"

    invoke-virtual {v1, v2}, Lbbl;->d(Ljava/lang/String;)V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 523
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 529
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    const-string/jumbo v2, "broadcast"

    invoke-virtual {v1, v2}, Lbbl;->d(Ljava/lang/String;)V

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.CALL_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 533
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 539
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Lbbl;->d(Ljava/lang/String;)V

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 543
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "voice"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    .line 544
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 5
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v4, 0x1

    .line 418
    iput-boolean v4, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    .line 419
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->j:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 426
    .local v0, "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 427
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    goto :goto_0

    .line 430
    .end local v0    # "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 431
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 348
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendMessage(Landroid/os/Message;)Z

    .line 351
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 240
    :sswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->h()V

    goto :goto_0

    .line 243
    :sswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->g()V

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->d()V

    goto :goto_0

    .line 249
    :sswitch_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->finish()V

    goto :goto_0

    .line 253
    :sswitch_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "otherEntrance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90202"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 257
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->f()V

    goto :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x7f0b004c -> :sswitch_3
        0x7f0b0052 -> :sswitch_2
        0x7f0b0054 -> :sswitch_0
        0x7f0b0057 -> :sswitch_1
        0x7f0b005a -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->setContentView(I)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "VOICE_ROLE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->k:Ljava/util/List;

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a()V

    .line 92
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b()V

    .line 93
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->c()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 507
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 508
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 512
    iput-object v2, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    .line 513
    return-void
.end method

.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 499
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 500
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 503
    :cond_0
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 446
    const-string/jumbo v1, "MyVoiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlayCompletedCallBack errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "toastText":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 451
    const v1, 0xc3508

    if-ne v1, p1, :cond_1

    .line 452
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 457
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->e()V

    .line 459
    return-void

    .line 454
    :cond_1
    const-string/jumbo v0, "\u64ad\u653e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 437
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStop()V

    .line 492
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->n:Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 495
    :cond_0
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 479
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method
