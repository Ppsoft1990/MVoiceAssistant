.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
.super Lcom/iflytek/base/skin/customView/XRelativeLayout;
.source "ScheduleRingToneItemView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;,
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Z

.field private k:Lavz;

.field private l:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

.field private m:Lawj;

.field private n:Landroid/content/Context;

.field private o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private p:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field private q:Landroid/os/Handler;

.field private r:Landroid/view/animation/Animation;

.field private s:Landroid/content/BroadcastReceiver;

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private x:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lavz;Lawj;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleRingToneItem"    # Lavz;
    .param p3, "ttsHelper"    # Lawj;
    .param p4, "editedSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 523
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$3;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->s:Landroid/content/BroadcastReceiver;

    .line 553
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->t:I

    .line 757
    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->u:I

    .line 758
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->v:I

    .line 759
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->w:I

    .line 760
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$4;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->x:Landroid/os/Handler$Callback;

    .line 110
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    .line 112
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->m:Lawj;

    .line 113
    iput-object p4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 114
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Lavz;)V

    .line 116
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->c()V

    .line 117
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->d()V

    .line 118
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->x:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    .line 119
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->l()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->r:Landroid/view/animation/Animation;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x8

    .line 202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v1}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v2, :cond_2

    .line 210
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010a

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    :goto_0
    const v1, 0x7f0b0611

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b:Landroid/widget/ImageView;

    .line 215
    const v1, 0x7f0b0612

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->c:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 216
    const v1, 0x7f0b061b

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->e:Landroid/widget/ImageView;

    .line 217
    const v1, 0x7f0b061c

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->d:Landroid/widget/ImageView;

    .line 218
    const v1, 0x7f0b061d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    .line 219
    const v1, 0x7f0b061f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->g:Landroid/widget/TextView;

    .line 220
    const v1, 0x7f0b0622

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->h:Landroid/widget/TextView;

    .line 221
    const v1, 0x7f0b0621

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->i:Landroid/widget/TextView;

    .line 222
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 225
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v1}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v2, :cond_1

    .line 236
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    const-string/jumbo v2, "SCHEDULE_TAG_EDIT"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->g:Landroid/widget/TextView;

    const-string/jumbo v2, "SCHEDULE_TAG_TEXT"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 239
    return-void

    .line 212
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0}, Laxa;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->m:Lawj;

    invoke-virtual {v0}, Lawj;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a()V

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j()V

    .line 191
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a()V

    .line 192
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 14
    .param p1, "longContent"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a()V

    .line 376
    const/4 v1, 0x1

    invoke-static {v1}, Lasa;->a(I)Z

    move-result v7

    .line 377
    .local v7, "isOfflineSpeechOk":Z
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v0

    .line 379
    .local v0, "isNetAvailable":Z
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v1}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v13

    .line 380
    .local v13, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v13, :cond_3

    .line 381
    const-string/jumbo v1, "android_asset://ringtone/notice.mp3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 382
    .local v11, "playUri":Landroid/net/Uri;
    if-nez v7, :cond_0

    if-eqz v0, :cond_2

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i()V

    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 386
    const-string/jumbo p1, "\u73b0\u5728\u662f\u4e0b\u53483\u70b9\u6574\uff0c\u4f60\u5e94\u8be5\u4f11\u606f\u4e00\u4e0b\u3002"

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    .line 390
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->m:Lawj;

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$1;

    invoke-direct {v3, p0, v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;Landroid/net/Uri;)V

    const-wide/16 v4, 0x0

    .line 398
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getTtsParams()Landroid/os/Bundle;

    move-result-object v6

    move-object v2, p1

    .line 390
    invoke-virtual/range {v1 .. v6}, Lawj;->a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V

    .line 509
    .end local v11    # "playUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 400
    .restart local v11    # "playUri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 403
    .end local v11    # "playUri":Landroid/net/Uri;
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v13, :cond_6

    .line 404
    const-string/jumbo v1, "android_asset://ringtone/morning.mp3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 405
    .restart local v11    # "playUri":Landroid/net/Uri;
    if-nez v7, :cond_4

    if-eqz v0, :cond_5

    .line 407
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v3, "weather"

    const-string/jumbo v4, "listen"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-virtual {v1, v11, v3, v4, p0}, Laxa;->a(Landroid/net/Uri;IILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 409
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    .line 411
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->m:Lawj;

    const-string/jumbo v2, "\u54aa\u5495\u7075\u7280\u4e3a\u60a8\u64ad\u62a5\u5929\u6c14\uff0c\u5317\u4eac\u5e02\u7684\u5929\u6c14\uff0c\u6674\uff0c\u6700\u4f4e\u6c14\u6e2918\u6444\u6c0f\u5ea6\uff0c\u6700\u9ad8\u6c14\u6e2925\u6444\u6c0f\u5ea6\uff0c\u5fae\u98ce\uff0c\u6c14\u5019\u8212\u9002\u3002"

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V

    const-wide/16 v4, 0x1388

    .line 420
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getTtsParams()Landroid/os/Bundle;

    move-result-object v6

    .line 411
    invoke-virtual/range {v1 .. v6}, Lawj;->a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V

    goto :goto_0

    .line 422
    :cond_5
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 424
    .end local v11    # "playUri":Landroid/net/Uri;
    :cond_6
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v13, :cond_11

    .line 426
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v1}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v12

    .line 427
    .local v12, "recordSubType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v1, v12}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 429
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v3, "morning"

    const-string/jumbo v4, "listen"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v8

    .line 431
    .local v8, "morningModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "1"

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 433
    .local v10, "path":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v10}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 434
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 435
    .restart local v11    # "playUri":Landroid/net/Uri;
    const-string/jumbo v1, "ScheduleRingToneItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v1, v11, v3, v4, p0}, Laxa;->a(Landroid/net/Uri;IILandroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_0

    .line 440
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "playUri":Landroid/net/Uri;
    :cond_7
    if-eqz v8, :cond_e

    const-string/jumbo v1, "0"

    invoke-virtual {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 441
    if-nez v7, :cond_8

    if-eqz v0, :cond_9

    .line 442
    :cond_8
    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    .line 443
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->m:Lawj;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v3

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbbi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V

    const-wide/16 v4, 0x1f4

    .line 444
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getTtsParams()Landroid/os/Bundle;

    move-result-object v6

    .line 443
    invoke-virtual/range {v1 .. v6}, Lawj;->a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 446
    :cond_9
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 451
    .end local v8    # "morningModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_a
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v1, v12}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 453
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v3, "night"

    const-string/jumbo v4, "listen"

    invoke-virtual {v1, v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v9

    .line 455
    .local v9, "nightModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "1"

    invoke-virtual {v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 457
    .restart local v10    # "path":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v10}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 458
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 459
    .restart local v11    # "playUri":Landroid/net/Uri;
    const-string/jumbo v1, "ScheduleRingToneItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 461
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v1, v11, v3, v4, p0}, Laxa;->a(Landroid/net/Uri;IILandroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_0

    .line 464
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "playUri":Landroid/net/Uri;
    :cond_b
    if-eqz v9, :cond_e

    const-string/jumbo v1, "0"

    invoke-virtual {v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 465
    if-nez v7, :cond_c

    if-eqz v0, :cond_d

    .line 466
    :cond_c
    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    .line 467
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->m:Lawj;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v3

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbbi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V

    const-wide/16 v4, 0x1f4

    .line 468
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getTtsParams()Landroid/os/Bundle;

    move-result-object v6

    .line 467
    invoke-virtual/range {v1 .. v6}, Lawj;->a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 470
    :cond_d
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 492
    .end local v9    # "nightModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_e
    if-nez v7, :cond_f

    if-eqz v0, :cond_10

    .line 493
    :cond_f
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbbi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    .line 496
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->m:Lawj;

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V

    const-wide/16 v4, 0x1f4

    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getTtsParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lawj;->a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 498
    .end local v2    # "content":Ljava/lang/String;
    :cond_10
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 502
    .end local v12    # "recordSubType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_11
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v1}, Lavz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 504
    .restart local v11    # "playUri":Landroid/net/Uri;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    .line 505
    const-string/jumbo v1, "ScheduleRingToneItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u70b9\u51fblocal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v1}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v11, v3, v4, v5}, Laxa;->a(Landroid/net/Uri;IILandroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "com.iflytek.cmccACTION_ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 134
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->r:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 137
    const v0, 0x7f0b061a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0b0620

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0b061e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->p:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    if-ne v0, v1, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->p:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    if-ne v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 175
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j:Z

    .line 305
    return-void
.end method

.method private getTtsParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "stream"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j:Z

    .line 313
    return-void
.end method

.method private i()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    if-nez v3, :cond_0

    .line 712
    :goto_0
    return v1

    .line 707
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 709
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-string/jumbo v4, "\u8bf7\u8f93\u5165\u64ad\u62a5\u5185\u5bb9"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 712
    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j:Z

    if-nez v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->l:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->l:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingtoneItem()Lavz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;->a(Lavz;)V

    .line 720
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setChecked(Z)V

    .line 723
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 724
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d(Ljava/lang/String;)V

    .line 729
    :cond_1
    :goto_0
    return-void

    .line 725
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    const-string/jumbo v1, "local"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x0

    .line 741
    :goto_0
    return v0

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b()V

    .line 741
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private l()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 787
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 788
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 789
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 790
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 791
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 792
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0}, Laxa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0}, Laxa;->b()V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->m:Lawj;

    invoke-virtual {v0}, Lawj;->a()V

    .line 521
    return-void
.end method

.method public a(Lavz;)V
    .locals 9
    .param p1, "scheduleRingToneItem"    # Lavz;

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v6}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    .line 246
    .local v1, "ringtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    .line 247
    invoke-virtual {p1}, Lavz;->b()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "titleName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 249
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->g:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_1
    invoke-virtual {p1}, Lavz;->a()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "speakerName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 256
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->i:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :goto_2
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->c:Lcom/iflytek/viafly/ui/view/CircleImageView;

    if-eqz v6, :cond_0

    .line 267
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v6}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v4

    .line 268
    .local v4, "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v6

    invoke-virtual {v6}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    .line 269
    .local v2, "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const-string/jumbo v0, ""

    .line 271
    .local v0, "icon":Ljava/lang/String;
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v6, v1, :cond_6

    .line 272
    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_2
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->c:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getListOptions()Lbcu;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto :goto_0

    .line 251
    .end local v0    # "icon":Ljava/lang/String;
    .end local v2    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v3    # "speakerName":Ljava/lang/String;
    .end local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_3
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 259
    .restart local v3    # "speakerName":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v6, v1, :cond_5

    .line 260
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_5

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    :cond_5
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 276
    .restart local v0    # "icon":Ljava/lang/String;
    .restart local v2    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .restart local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_6
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v6, v1, :cond_7

    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v6, v1, :cond_8

    .line 277
    :cond_7
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->c:Lcom/iflytek/viafly/ui/view/CircleImageView;

    const v7, 0x7f0201b2

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 278
    :cond_8
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v6, v1, :cond_c

    .line 279
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    if-ne v6, v4, :cond_b

    .line 280
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v6

    invoke-virtual {v6}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    .line 284
    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    .line 285
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_a
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->c:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getListOptions()Lbcu;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto/16 :goto_0

    .line 281
    :cond_b
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    if-ne v6, v4, :cond_9

    .line 282
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v6

    invoke-virtual {v6}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    goto :goto_3

    .line 288
    :cond_c
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v6, v1, :cond_0

    .line 289
    if-eqz v2, :cond_d

    .line 290
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_d
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->c:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getListOptions()Lbcu;

    move-result-object v8

    invoke-virtual {v6, v0, v7, v8}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 745
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 746
    const v0, 0x7f0b061e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 751
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->e:Landroid/widget/ImageView;

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 752
    return-void
.end method

.method public getListOptions()Lbcu;
    .locals 3

    .prologue
    const v2, 0x7f02029b

    .line 796
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 798
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 800
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 801
    invoke-virtual {v1, v2}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 804
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 805
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 806
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v0}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScheduleRingtoneItem()Lavz;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x1e

    const/4 v8, 0x2

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 701
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 607
    :pswitch_1
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 608
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->e()V

    goto :goto_0

    .line 609
    :cond_1
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 610
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->e()V

    goto :goto_0

    .line 611
    :cond_3
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 612
    const-string/jumbo v5, ""

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_4
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j()V

    .line 615
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a()V

    goto :goto_0

    .line 621
    :pswitch_2
    const v5, 0x7f0b061e

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->h:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "content":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 626
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v7, v5, :cond_5

    .line 627
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 632
    :goto_1
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    const/16 v7, 0x64

    invoke-static {v5, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->showSoftInputDelay(Landroid/content/Context;Landroid/view/View;I)V

    .line 633
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j()V

    .line 634
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a()V

    goto :goto_0

    .line 629
    :cond_5
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 637
    .end local v0    # "content":Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 638
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :pswitch_4
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->f:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :pswitch_5
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_a

    .line 650
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v5}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v4

    .line 651
    .local v4, "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    if-ne v5, v4, :cond_9

    .line 652
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v5

    const-string/jumbo v6, "morning"

    const-string/jumbo v7, "change"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .end local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_6
    :goto_2
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-eq v5, v6, :cond_7

    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_e

    .line 667
    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-class v6, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 668
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "subName":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v5, :cond_8

    .line 670
    const-string/jumbo v5, "CURRENT_SELECT_RINGTONE_TYPE"

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string/jumbo v5, "schedule_type"

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const-string/jumbo v5, "CURRENT_SELECT_RINGTONE_NAME"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v2, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 698
    .end local v2    # "intent2":Landroid/content/Intent;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j()V

    goto/16 :goto_0

    .line 653
    .restart local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_9
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    if-ne v5, v4, :cond_6

    .line 654
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v5

    const-string/jumbo v6, "night"

    const-string/jumbo v7, "change"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 656
    .end local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_a
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_b

    .line 657
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v5

    const-string/jumbo v6, "weather"

    const-string/jumbo v7, "change"

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 658
    :cond_b
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_c

    .line 659
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v5

    const-string/jumbo v6, "long"

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 660
    :cond_c
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-eq v5, v6, :cond_d

    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_6

    .line 661
    :cond_d
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v5

    const-string/jumbo v6, "local"

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 679
    :cond_e
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-class v6, Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    .local v1, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_11

    .line 681
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->k:Lavz;

    invoke-virtual {v5}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v4

    .line 682
    .restart local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    if-ne v5, v4, :cond_10

    .line 683
    const-string/jumbo v5, "STAR_ENTRY_TYPE"

    const-string/jumbo v6, "morning"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    .end local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_f
    :goto_4
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    const/16 v6, 0x190

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 684
    .restart local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_10
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    if-ne v5, v4, :cond_f

    .line 685
    const-string/jumbo v5, "STAR_ENTRY_TYPE"

    const-string/jumbo v6, "night"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 687
    .end local v4    # "subType":Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    :cond_11
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_12

    .line 688
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-class v6, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "STAR_ENTRY_TYPE"

    const-string/jumbo v6, "weather"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string/jumbo v5, "OFFLINE_SYSTEM"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 691
    :cond_12
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_f

    .line 692
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    const-class v6, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "STAR_ENTRY_TYPE"

    const-string/jumbo v6, "alarm"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string/jumbo v5, "OFFLINE_SYSTEM"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 605
    :pswitch_data_0
    .packed-switch 0x7f0b061a
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->q:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 551
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 599
    invoke-super {p0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->onDetachedFromWindow()V

    .line 600
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 601
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->g()V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->h()V

    goto :goto_0
.end method

.method public setOnChangeListener(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;)V
    .locals 0
    .param p1, "onItemCheckedListener"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->l:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

    .line 347
    return-void
.end method

.method public setOperationType(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;)V
    .locals 0
    .param p1, "operationType"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->p:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 148
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->j:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->h()V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->g()V

    goto :goto_0
.end method
