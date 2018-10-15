.class public Lcom/iflytek/viafly/voicerole/StarAudioActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "StarAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbbb;
.implements Lju;
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Z

.field private C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

.field private D:Lpp;

.field private E:Lno;

.field private F:Lbbk;

.field private G:Lbbj;

.field private H:Landroid/view/animation/Animation;

.field private final I:I

.field private final J:I

.field private final K:I

.field private L:I

.field private final M:I

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:I

.field private R:Lic;

.field private final a:Ljava/lang/String;

.field private b:Lbbm;

.field private c:Lbbo;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Lcom/iflytek/base/skin/customView/XImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Lbbd;

.field private z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 76
    const-string/jumbo v0, "StarAudio"

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    .line 135
    iput v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->I:I

    .line 136
    iput v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->J:I

    .line 137
    iput v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->K:I

    .line 138
    iput v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    .line 139
    iput v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->M:I

    .line 141
    iput v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->N:I

    .line 142
    iput v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->O:I

    .line 143
    iput v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->P:I

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->Q:I

    .line 992
    new-instance v0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;-><init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->R:Lic;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/StarAudioActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/StarAudioActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->H:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lpp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->D:Lpp;

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const v4, 0x7f0a0014

    const v3, 0x7f0a000e

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1147
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1152
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1153
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1154
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1155
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1161
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 1162
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1164
    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    const-string/jumbo v1, "STAR_ENTRY_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 167
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbbl;->a(Ljava/lang/String;)V

    .line 171
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100094"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;ZLjava/lang/String;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "showToast"    # Z
    .param p3, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string/jumbo v0, "6.0main"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ad"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    :cond_0
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    const-string/jumbo v0, "broadcast"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    :cond_3
    const-string/jumbo v0, "night"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 390
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_4
    const-string/jumbo v0, "morning"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 395
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    :cond_5
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 400
    invoke-virtual {v0, p1, v1, p3}, Lbbl;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_GLOBAL_ROLE_USAGE_TYPE"

    const-string/jumbo v2, "role"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 406
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbi;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 409
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l()V

    .line 411
    if-eqz p2, :cond_6

    .line 412
    const-string/jumbo v0, "broadcast"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 414
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u8bed\u97f3\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 423
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 417
    :cond_7
    const-string/jumbo v0, "\u79fb\u52a8\u7f51\u7edc\u4e0b\uff0c\u7cfb\u7edf\u8bed\u97f3\u65e0\u6cd5\u64ad\u62a5\uff0c\u8bf7\u4e0b\u8f7d\u79bb\u7ebf\u8bed\u97f3\u5305"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u8bed\u97f3\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/voicerole/model/Status;

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-nez v0, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0, p1, p2}, Lbbo;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 1055
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private b(I)I
    .locals 6
    .param p1, "viewShowCount"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1172
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-nez v1, :cond_0

    move v1, v2

    .line 1195
    :goto_0
    return v1

    .line 1176
    :cond_0
    if-ge p1, v5, :cond_1

    move v1, v2

    .line 1177
    goto :goto_0

    .line 1179
    :cond_1
    add-int/lit8 v1, p1, -0x3

    add-int/lit8 v0, v1, -0x1

    .line 1180
    .local v0, "index":I
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbn;

    invoke-virtual {v1}, Lbbn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    move v1, v3

    .line 1181
    goto :goto_0

    .line 1183
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbn;

    invoke-virtual {v1}, Lbbn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v0, v1, -0x1

    .line 1184
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbn;

    invoke-virtual {v1}, Lbbn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    move v1, v4

    .line 1185
    goto :goto_0

    .line 1187
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbn;

    invoke-virtual {v1}, Lbbn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v0, v1, -0x1

    .line 1188
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbn;

    invoke-virtual {v1}, Lbbn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    move v1, v5

    .line 1189
    goto :goto_0

    .line 1191
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbn;

    invoke-virtual {v1}, Lbbn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v0, v1, -0x1

    .line 1192
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbn;

    invoke-virtual {v1}, Lbbn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1193
    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 1195
    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->j()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/voicerole/StarAudioActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(I)V

    return-void
.end method

.method private c(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1303
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-nez v0, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(I)V

    .line 1308
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1310
    :pswitch_0
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbl;->e(Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1314
    :pswitch_1
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbl;->e(Ljava/lang/String;)V

    .line 1315
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1318
    :pswitch_2
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbl;->e(Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x3

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    .line 1320
    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    .line 1319
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 1323
    :pswitch_3
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbl;->e(Ljava/lang/String;)V

    .line 1324
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x3

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    .line 1325
    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    .line 1326
    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    .line 1324
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 1308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->n()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/voicerole/StarAudioActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(I)V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->k()V

    return-void
.end method

.method private d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z
    .locals 8
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 1018
    if-nez p1, :cond_0

    .line 1019
    const/4 v4, 0x0

    .line 1046
    :goto_0
    return v4

    .line 1021
    :cond_0
    const/4 v4, 0x0

    .line 1023
    .local v4, "unZipResult":Z
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v5, p1}, Lbbk;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1024
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v6, p1}, Lbbk;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v7, p1}, Lbbk;->e(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lbbk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, "fileDir":Ljava/lang/String;
    const-string/jumbo v5, "StarAudio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unzip file fileDir = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1027
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v6, p1}, Lbbk;->e(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, "filePath":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->G:Lbbj;

    invoke-virtual {v5, v3}, Lbbj;->a(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v0

    .line 1029
    .local v0, "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    if-nez v0, :cond_1

    .line 1030
    const-string/jumbo v5, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 1031
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v5, p1}, Lbbk;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1043
    .end local v0    # "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    .end local v2    # "fileDir":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "StarAudio"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1033
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    .restart local v2    # "fileDir":Ljava/lang/String;
    .restart local v3    # "filePath":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;)V

    .line 1034
    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h(Ljava/lang/String;)V

    .line 1035
    const/4 v4, 0x1

    goto :goto_0

    .line 1038
    .end local v0    # "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v5, p1}, Lbbk;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1041
    .end local v2    # "fileDir":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v5, p1}, Lbbk;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method private e(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 2
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 428
    const-string/jumbo v0, "broadcast"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l()V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    const-string/jumbo v0, "night"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l()V

    goto :goto_0

    .line 440
    :cond_2
    const-string/jumbo v0, "morning"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l()V

    goto :goto_0

    .line 448
    :cond_3
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 449
    invoke-virtual {v0, p1, v1, p2}, Lbbl;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v0, p1}, Lbbk;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v0, p1}, Lbbk;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 454
    :cond_4
    const-string/jumbo v0, "6.0main"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ad"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    const-string/jumbo v0, "morning"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbg;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 466
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l()V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u8bed\u97f3\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 473
    :goto_2
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 461
    :cond_6
    const-string/jumbo v0, "night"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 462
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbg;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_1

    .line 463
    :cond_7
    const-string/jumbo v0, "broadcast"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 464
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbg;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_1

    .line 469
    :cond_8
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 470
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic f(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 4
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 491
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2}, Lbbl;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 511
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 500
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 502
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 503
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 510
    .end local v0    # "message":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 506
    :cond_2
    const v1, 0x7f0c02b1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 175
    const-string/jumbo v1, "\u6211\u7684\u8bed\u97f3"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    const v1, 0x7f03015a

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->setContentView(I)V

    .line 177
    new-instance v1, Lbbm;

    invoke-direct {v1, p0, p0}, Lbbm;-><init>(Landroid/content/Context;Lbbb;)V

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b:Lbbm;

    .line 178
    new-instance v1, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;-><init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    .line 179
    new-instance v1, Lpp;

    invoke-direct {v1, p0}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->D:Lpp;

    .line 180
    invoke-static {p0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    .line 181
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    const-string/jumbo v2, "StarAudio"

    invoke-virtual {v1, v2, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 182
    new-instance v1, Lbbk;

    invoke-direct {v1}, Lbbk;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    .line 183
    new-instance v1, Lbbj;

    invoke-direct {v1}, Lbbj;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->G:Lbbj;

    .line 184
    invoke-static {p0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->R:Lic;

    invoke-virtual {v1, v2}, Lie;->a(Lic;)V

    .line 186
    const v1, 0x7f0b07ad

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    .line 187
    const v1, 0x7f0b02d8

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f:Landroid/widget/LinearLayout;

    .line 188
    const v1, 0x7f0b02d9

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g:Landroid/widget/TextView;

    .line 189
    const v1, 0x7f0b02db

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->h:Landroid/widget/TextView;

    .line 190
    const v1, 0x7f0b02dd

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->i:Landroid/widget/TextView;

    .line 191
    const v1, 0x7f0b02df

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->j:Landroid/widget/TextView;

    .line 192
    const v1, 0x7f0b02da

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->o:Landroid/view/View;

    .line 193
    const v1, 0x7f0b02dc

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->p:Landroid/view/View;

    .line 194
    const v1, 0x7f0b02de

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->q:Landroid/view/View;

    .line 195
    const v1, 0x7f0b02e0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->r:Landroid/view/View;

    .line 196
    const v1, 0x7f0b0081

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->s:Landroid/widget/LinearLayout;

    .line 197
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->t:Landroid/widget/LinearLayout;

    .line 198
    const v1, 0x7f0b0080

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->u:Lcom/iflytek/base/skin/customView/XImageView;

    .line 199
    const v1, 0x7f0b0082

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->v:Landroid/widget/TextView;

    .line 200
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->w:Landroid/widget/TextView;

    .line 201
    const v1, 0x7f0b07ae

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->A:Landroid/widget/TextView;

    .line 202
    const v1, 0x7f0b07ac

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->x:Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v1, 0x7f0b07ab

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const-string/jumbo v1, "broadcast"

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->x:Landroid/widget/TextView;

    const-string/jumbo v2, "\u79bb\u7ebf\u8bed\u97f3\u5305"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 224
    const-string/jumbo v0, "<font color=\"#ffffff\" size=\"28\">\u8bed\u97f3\u4e0b\u8f7d\u6210\u529f,\u70b9\u51fb\u8fdb\u5165</font><font color=\"#4798d7\" size=\"28\"><u>\u201c\u6211\u7684\u8bed\u97f3\u201d</u></font><font color=\"#ffffff\" size=\"28\">\u4f53\u9a8c\u5427</font>"

    .line 225
    .local v0, "html":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->A:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void

    .line 216
    .end local v0    # "html":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "6.0main"

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ad"

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->x:Landroid/widget/TextView;

    const-string/jumbo v2, "\u6211\u7684\u8bed\u97f3"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->x:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private g(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 4
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 516
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2}, Lbbl;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    const v1, 0x7f0c02b1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 540
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 529
    :cond_1
    iget-boolean v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    if-eqz v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 533
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    .line 534
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 535
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 536
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 539
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->o()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b:Lbbm;

    invoke-virtual {v0}, Lbbm;->a()Lbbo;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-eqz v0, :cond_1

    .line 232
    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic i(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->H:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b:Lbbm;

    invoke-virtual {v0}, Lbbm;->b()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic j(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->u:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    if-nez v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbd;->a(Ljava/util/List;)V

    .line 856
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 861
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-nez v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 865
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 866
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 867
    new-instance v0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    invoke-direct {v0, p0, v4}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;-><init>(Landroid/content/Context;I)V

    .line 868
    .local v0, "bannerCardView":Lcom/iflytek/viafly/ui/view/banner/BannerCardView;
    new-instance v1, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v2}, Lbbo;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;-><init>(Landroid/content/Context;Ljava/util/List;Lbbb;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    .line 869
    new-instance v1, Lbbd;

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v2}, Lbbo;->f()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p0, v3}, Lbbd;-><init>(Landroid/content/Context;Ljava/util/List;Lbbb;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    .line 870
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 871
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 872
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 873
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 875
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/iflytek/viafly/voicerole/StarAudioActivity$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$1;-><init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 893
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->n()V

    .line 895
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l()V

    .line 897
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(I)V

    .line 899
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f()V

    .line 901
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e()V

    .line 903
    const-string/jumbo v1, "broadcast"

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 910
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-nez v2, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    const-string/jumbo v2, "6.0main"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ad"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 914
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 915
    :cond_2
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 916
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v3

    invoke-virtual {v3}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbd;->b(Ljava/lang/String;)V

    .line 917
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v3

    invoke-virtual {v3}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->setSelectVoiceId(Ljava/lang/String;)V

    .line 926
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 920
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    const-string/jumbo v3, "jiajia"

    invoke-virtual {v2, v3}, Lbbo;->c(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    .line 921
    .local v1, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v1, :cond_3

    const-string/jumbo v2, "0"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 922
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2}, Lbbi;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 923
    invoke-direct {p0, v1, v4, v6}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;ZLjava/lang/String;)V

    goto :goto_1

    .line 929
    .end local v1    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_5
    const/4 v0, 0x0

    .line 931
    .local v0, "selectModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const-string/jumbo v2, "morning"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 932
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 939
    :cond_6
    :goto_2
    if-eqz v0, :cond_c

    .line 940
    const-string/jumbo v2, "0"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 941
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jiajia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 943
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    const-string/jumbo v3, "jiajia"

    invoke-virtual {v2, v3}, Lbbo;->c(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    .line 944
    .restart local v1    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v1, :cond_7

    const-string/jumbo v2, "0"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 945
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2}, Lbbi;->f()Z

    move-result v2

    if-nez v2, :cond_7

    .line 946
    invoke-direct {p0, v1, v4, v6}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;ZLjava/lang/String;)V

    .line 966
    .end local v1    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 933
    :cond_8
    const-string/jumbo v2, "night"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 934
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    goto :goto_2

    .line 935
    :cond_9
    const-string/jumbo v2, "broadcast"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 936
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    goto :goto_2

    .line 949
    :cond_a
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbd;->b(Ljava/lang/String;)V

    .line 950
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->setSelectVoiceId(Ljava/lang/String;)V

    .line 951
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lbbd;->a(Ljava/lang/String;)V

    .line 952
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->setSelectRingId(Ljava/lang/String;)V

    goto :goto_3

    .line 954
    :cond_b
    const-string/jumbo v2, "1"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 955
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbd;->a(Ljava/lang/String;)V

    .line 956
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->setSelectRingId(Ljava/lang/String;)V

    .line 957
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lbbd;->b(Ljava/lang/String;)V

    .line 958
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->setSelectVoiceId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 961
    :cond_c
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lbbd;->b(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->setSelectVoiceId(Ljava/lang/String;)V

    .line 963
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->y:Lbbd;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lbbd;->a(Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->z:Lcom/iflytek/viafly/voicerole/view/HotRecommendView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->setSelectRingId(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private m()Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 1246
    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1247
    .local v0, "view":Landroid/widget/LinearLayout;
    const v1, 0x7f0b02d9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->k:Landroid/widget/TextView;

    .line 1248
    const v1, 0x7f0b02db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l:Landroid/widget/TextView;

    .line 1249
    const v1, 0x7f0b02dd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m:Landroid/widget/TextView;

    .line 1250
    const v1, 0x7f0b02df

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->n:Landroid/widget/TextView;

    .line 1251
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->k:Landroid/widget/TextView;

    new-instance v2, Lcom/iflytek/viafly/voicerole/StarAudioActivity$3;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$3;-><init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l:Landroid/widget/TextView;

    new-instance v2, Lcom/iflytek/viafly/voicerole/StarAudioActivity$4;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$4;-><init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1263
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m:Landroid/widget/TextView;

    new-instance v2, Lcom/iflytek/viafly/voicerole/StarAudioActivity$5;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$5;-><init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1269
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->n:Landroid/widget/TextView;

    new-instance v2, Lcom/iflytek/viafly/voicerole/StarAudioActivity$6;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$6;-><init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1275
    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    return-object v0
.end method

.method private n()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1280
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    .line 1285
    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_2

    .line 1286
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    .line 1293
    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 1294
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    invoke-virtual {v0}, Lbbn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private o()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1333
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1334
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1335
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 1336
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1337
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1338
    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 1343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1344
    .local v0, "it":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->setResult(ILandroid/content/Intent;)V

    .line 1345
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    new-instance v1, Lcom/iflytek/viafly/voicerole/StarAudioActivity$7;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$7;-><init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V

    invoke-static {p0, v0, v1}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 1392
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 341
    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    if-ne v0, v2, :cond_1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 344
    iput v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    .line 346
    :cond_1
    return-void
.end method

.method public a(Lbbo;)V
    .locals 3
    .param p1, "voiceRoleModel"    # Lbbo;

    .prologue
    const/4 v2, 0x1

    .line 319
    if-eqz p1, :cond_1

    .line 320
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    .line 321
    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 323
    iput v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    if-ne v0, v2, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f()V

    .line 328
    const-string/jumbo v0, "broadcast"

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d()V

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 334
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 4
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 598
    if-nez p1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 602
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "linkUrl":Ljava/lang/String;
    const-string/jumbo v1, "StarAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPauseDownload url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    invoke-virtual {v1, v0}, Lno;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 2
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string/jumbo v0, "0"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;ZLjava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1358
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1359
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1360
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1361
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendMessage(Landroid/os/Message;)Z

    .line 1363
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0, p1, p2}, Lbbo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 352
    const-string/jumbo v0, "\u5df2\u70b9\u8d5e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 357
    const-string/jumbo v0, "\u70b9\u8d5e\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 609
    if-nez p1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 613
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 614
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 615
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v1, p1}, Lbbk;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v1, p1}, Lbbk;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 626
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "linkUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    invoke-virtual {v1, v0}, Lno;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 629
    .end local v0    # "linkUrl":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->q()V

    goto :goto_0

    .line 632
    :cond_4
    const v1, 0x7f0c02b1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 2
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string/jumbo v0, "0"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 983
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    if-nez v0, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    iput-boolean v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    .line 987
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Ljava/lang/String;Z)V

    .line 988
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v2, 0x1

    .line 971
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iput-boolean v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    .line 975
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Ljava/lang/String;Z)V

    .line 976
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 2
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 544
    if-nez p1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lbbl;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b:Lbbm;

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_2
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->e()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1074
    :cond_0
    return-void

    .line 1063
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v1}, Lbbo;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 1064
    .local v0, "starItem":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const-string/jumbo v2, "0"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1065
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1066
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1067
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 1069
    :cond_3
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0
.end method

.method public d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;)V
    .locals 7
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 562
    if-nez p1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-static {p0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, p2}, Lbbl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 567
    const v0, 0x7f0c02b1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_2
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 571
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->q()V

    goto :goto_0

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v0, p1}, Lbbk;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 578
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 581
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 584
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k()Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 586
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 590
    :cond_5
    const-string/jumbo v2, "download_voice_res_zip"

    .line 591
    .local v2, "entryType":Ljava/lang/String;
    const/16 v1, 0x15

    .line 592
    .local v1, "downloadFileType":I
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    const/4 v3, 0x0

    .line 593
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v6, p1}, Lbbk;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v6

    .line 592
    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "pEerrorIntent"    # Landroid/content/Intent;

    .prologue
    .line 684
    const-string/jumbo v5, "StarAudio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadError: errorCode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    if-nez p2, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    const-string/jumbo v5, "type"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 690
    .local v2, "type":I
    const/16 v5, 0x15

    if-ne v2, v5, :cond_0

    .line 691
    const-string/jumbo v5, "url"

    .line 692
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v5, v3}, Lbbo;->b(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v4

    .line 694
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v4, :cond_0

    .line 697
    const/16 v5, 0x38b

    if-ne v5, p1, :cond_2

    .line 698
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    invoke-virtual {v5, v3}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 699
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "filepath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 702
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 703
    const-string/jumbo v5, "StarAudio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadError: EXIST_FINISH_TASK ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v1    # "filepath":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 10
    .param p1, "pStatusIntent"    # Landroid/content/Intent;

    .prologue
    .line 641
    const-string/jumbo v5, "StarAudio"

    const-string/jumbo v6, "downloadStatusChanged"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-nez p1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    const-string/jumbo v5, "type"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 647
    .local v2, "type":I
    const/16 v5, 0x15

    if-ne v2, v5, :cond_0

    .line 648
    const-string/jumbo v5, "url"

    .line 649
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 651
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v5, v3}, Lbbo;->b(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v4

    .line 652
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v4, :cond_0

    .line 655
    sget-object v5, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/voicerole/model/Status;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 656
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    invoke-virtual {v5, v3}, Lno;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    .line 661
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 662
    const-string/jumbo v5, "file_path"

    .line 663
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "filePath":Ljava/lang/String;
    const-string/jumbo v5, "StarAudio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 666
    const-string/jumbo v5, "6.0main"

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ad"

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 667
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 668
    :cond_3
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 669
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/16 v6, 0xb

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessageDelayed(IJ)Z

    .line 671
    :cond_4
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 672
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l()V

    goto/16 :goto_0

    .line 674
    :cond_5
    const-string/jumbo v5, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto/16 :goto_0
.end method

.method public e()V
    .locals 5

    .prologue
    .line 1078
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v3}, Lbbo;->e()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1116
    :cond_0
    return-void

    .line 1082
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v3}, Lbbo;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 1083
    .local v1, "starItem":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k()Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1088
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    .line 1089
    invoke-virtual {v4, v2}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 1090
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_2

    .line 1094
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1107
    :pswitch_0
    sget-object v4, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 1096
    :pswitch_1
    sget-object v4, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 1099
    :pswitch_2
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1100
    sget-object v4, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 1104
    :pswitch_3
    sget-object v4, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 1110
    :pswitch_4
    sget-object v4, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 1094
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1120
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    if-nez v2, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    const/4 v1, 0x0

    .line 1124
    .local v1, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const-string/jumbo v2, "broadcast"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1125
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    .line 1131
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v0

    .line 1133
    .local v0, "status":Lcom/iflytek/viafly/voicerole/model/Status;
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->F:Lbbk;

    invoke-virtual {v2, v1}, Lbbk;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-eq v0, v2, :cond_0

    .line 1134
    :cond_3
    const v2, 0x7f0c03aa

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 1135
    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 1136
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbbg;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 1137
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbbg;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 1138
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbbg;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 1139
    const/4 v2, 0x1

    iget v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    if-ne v2, v3, :cond_0

    .line 1140
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->l()V

    goto :goto_0

    .line 1126
    .end local v0    # "status":Lcom/iflytek/viafly/voicerole/model/Status;
    :cond_4
    const-string/jumbo v2, "morning"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1127
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    goto :goto_1

    .line 1128
    :cond_5
    const-string/jumbo v2, "night"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1129
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    goto :goto_1
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 716
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 256
    :sswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->p()V

    .line 257
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->finish()V

    goto :goto_0

    .line 260
    :sswitch_1
    const-string/jumbo v3, "broadcast"

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b:Lbbm;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v3, v4}, Lbbm;->f(Lbbo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 263
    .local v2, "styleModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "OFFLINE_SYSTEM"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string/jumbo v3, "STAR_ENTRY_TYPE"

    const-string/jumbo v4, "broadcast"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v3, "VOICE_ROLE_DATA"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 268
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "styleModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :cond_1
    const-string/jumbo v3, "6.0main"

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ad"

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d:Ljava/lang/String;

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    :cond_2
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT69325"

    .line 272
    invoke-virtual {v3, v4, v6}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 274
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b:Lbbm;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v3, v4}, Lbbm;->d(Lbbo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 275
    .restart local v2    # "styleModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "VOICE_ROLE_DATA"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "styleModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :sswitch_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-nez v3, :cond_3

    .line 282
    const v3, 0x7f0c02b1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 286
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->i()V

    goto/16 :goto_0

    .line 289
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, "settingIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 293
    .end local v1    # "settingIntent":Landroid/content/Intent;
    :sswitch_4
    invoke-direct {p0, v5}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_5
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(I)V

    goto/16 :goto_0

    .line 299
    :sswitch_6
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(I)V

    goto/16 :goto_0

    .line 302
    :sswitch_7
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(I)V

    goto/16 :goto_0

    .line 306
    :sswitch_8
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT69325"

    .line 307
    invoke-virtual {v3, v4, v6}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 308
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b:Lbbm;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v3, v4}, Lbbm;->d(Lbbo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 309
    .restart local v2    # "styleModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "VOICE_ROLE_DATA"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0082 -> :sswitch_2
        0x7f0b0083 -> :sswitch_3
        0x7f0b02d9 -> :sswitch_4
        0x7f0b02db -> :sswitch_5
        0x7f0b02dd -> :sswitch_6
        0x7f0b02df -> :sswitch_7
        0x7f0b07ab -> :sswitch_0
        0x7f0b07ac -> :sswitch_1
        0x7f0b07ae -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Landroid/content/Intent;)V

    .line 150
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->g()V

    .line 151
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->h()V

    .line 152
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->i()V

    .line 154
    invoke-static {p0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v0

    const-string/jumbo v1, "N_VOICE_PKG"

    invoke-virtual {v0, v1}, Lalq;->a(Ljava/lang/String;)V

    .line 155
    invoke-static {p0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v0

    const-string/jumbo v1, "VOICE_PKG"

    invoke-virtual {v0, v1}, Lalq;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1206
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 1207
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->b:Lbbm;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c:Lbbo;

    invoke-virtual {v0, v1}, Lbbm;->c(Lbbo;)V

    .line 1211
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1212
    iput-object v2, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    .line 1213
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->E:Lno;

    const-string/jumbo v1, "StarAudio"

    invoke-virtual {v0, v1}, Lno;->a(Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 1215
    return-void
.end method

.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 750
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1349
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1350
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->p()V

    .line 1352
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1219
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 1220
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 1223
    :cond_0
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 732
    const-string/jumbo v1, "StarAudio"

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

    .line 734
    const/4 v0, 0x0

    .line 736
    .local v0, "toastText":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 737
    const v1, 0xc3508

    if-ne v1, p1, :cond_1

    .line 738
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 743
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c()V

    .line 745
    return-void

    .line 740
    :cond_1
    const-string/jumbo v0, "\u64ad\u653e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 723
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1235
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 1236
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->e()V

    .line 1237
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->f()V

    .line 1238
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->d()V

    .line 1239
    const/4 v0, 0x1

    iget v1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->L:I

    if-ne v0, v1, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 1242
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1227
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStop()V

    .line 1228
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->C:Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 1231
    :cond_0
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 765
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 1202
    return-void
.end method
