.class public Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "StarSystemOfflineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbbb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lbbm;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

.field private g:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/iflytek/base/skin/customView/XImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:I

.field private r:Landroid/view/animation/Animation;

.field private s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 56
    iput v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->n:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->o:I

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->p:I

    .line 59
    iput v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->q:I

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->r:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;Lbbo;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;
    .param p1, "x1"    # Lbbo;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b(Lbbo;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
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
    .local p1, "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    const/16 v1, 0x8

    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    const/4 v0, 0x1

    iget v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b:I

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u79bb\u7ebf\u8bed\u97f3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->c:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->f:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->f:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b:I

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7cfb\u7edf\u8bed\u97f3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    new-instance v0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->c:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->g:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->g:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b(Lbbo;)V
    .locals 2
    .param p1, "voiceRoleModel"    # Lbbo;

    .prologue
    .line 161
    const/4 v0, 0x1

    iget v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b:I

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->d:Lbbm;

    invoke-virtual {v0, p1}, Lbbm;->f(Lbbo;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e:Ljava/util/List;

    .line 166
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a(Ljava/util/List;)V

    .line 167
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b:I

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->d:Lbbm;

    invoke-virtual {v0, p1}, Lbbm;->e(Lbbo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->f()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "it":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->r:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "OFFLINE_SYSTEM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b:I

    .line 107
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "STAR_ENTRY_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->c:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "VOICE_ROLE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e:Ljava/util/List;

    .line 111
    :cond_0
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100094"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->k:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e:Ljava/util/List;

    if-nez v2, :cond_4

    .line 117
    new-instance v2, Lbbm;

    invoke-direct {v2, p0, p0}, Lbbm;-><init>(Landroid/content/Context;Lbbb;)V

    iput-object v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->d:Lbbm;

    .line 118
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->d:Lbbm;

    invoke-virtual {v2}, Lbbm;->a()Lbbo;

    move-result-object v1

    .line 119
    .local v1, "voiceRoleModel":Lbbo;
    if-eqz v1, :cond_2

    .line 121
    iget v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->q:I

    if-nez v2, :cond_0

    .line 122
    iput v4, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->q:I

    .line 124
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "message":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 126
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->sendMessage(Landroid/os/Message;)Z

    .line 143
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "voiceRoleModel":Lbbo;
    :cond_1
    :goto_0
    return-void

    .line 130
    .restart local v1    # "voiceRoleModel":Lbbo;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->sendEmptyMessage(I)Z

    .line 131
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->d:Lbbm;

    invoke-virtual {v2}, Lbbm;->b()V

    goto :goto_0

    .line 134
    :cond_3
    iget v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->q:I

    if-eq v2, v4, :cond_1

    .line 135
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 141
    .end local v1    # "voiceRoleModel":Lbbo;
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private f()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 316
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 317
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 318
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 319
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 320
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 267
    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->q:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->q:I

    if-ne v0, v1, :cond_1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->sendEmptyMessage(I)Z

    .line 270
    iput v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->q:I

    .line 272
    :cond_1
    return-void
.end method

.method public a(Lbbo;)V
    .locals 2
    .param p1, "voiceRoleModel"    # Lbbo;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 179
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->sendMessage(Landroid/os/Message;)Z

    .line 182
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 307
    return-void
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 287
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 329
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->sendMessage(Landroid/os/Message;)Z

    .line 332
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    .line 277
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 312
    return-void
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 292
    return-void
.end method

.method public c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 297
    return-void
.end method

.method public d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 302
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 188
    :sswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->c()V

    .line 189
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->finish()V

    goto :goto_0

    .line 192
    :sswitch_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const v1, 0x7f0c02b1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->sendEmptyMessage(I)Z

    .line 197
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e()V

    goto :goto_0

    .line 200
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "settingIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x7f0b007d -> :sswitch_0
        0x7f0b0082 -> :sswitch_1
        0x7f0b0083 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->setContentView(I)V

    .line 67
    new-instance v0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;-><init>(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->s:Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;

    .line 68
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->h:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->i:Landroid/widget/LinearLayout;

    .line 71
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->j:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->k:Lcom/iflytek/base/skin/customView/XImageView;

    .line 73
    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->l:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->m:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 79
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->d()V

    .line 80
    const/4 v0, 0x1

    iget v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b:I

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u79bb\u7ebf\u8bed\u97f3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbl;->c(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e()V

    .line 88
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b:I

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7cfb\u7edf\u8bed\u97f3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbl;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->g:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->g:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->e()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->f:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->f:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->e()V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 262
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 263
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->c()V

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->g:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->g:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->d()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->f:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->f:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->d()V

    .line 250
    :cond_1
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 251
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method
