.class public Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "TranslateMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Layr;
.implements Layu$c;
.implements Layw$c;
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Z

.field private G:Landroid/os/Handler;

.field private H:Z

.field private I:Lju;

.field private J:Z

.field private K:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;

.field private L:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

.field private M:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

.field private N:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

.field private O:Layp$a;

.field private P:Layo$a;

.field private Q:Lbdd;

.field private R:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

.field private a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

.field private b:Layd;

.field private c:Landroid/widget/ListView;

.field private d:Layw;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

.field private g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

.field private h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

.field private i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Laxr;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private r:Layx;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Layp;

.field private v:Layo;

.field private w:Layf;

.field private x:Layg;

.field private y:Laxy;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 155
    const-string/jumbo v0, "channel"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    .line 157
    iput v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t:I

    .line 166
    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->C:Z

    .line 283
    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->F:Z

    .line 450
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$11;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    .line 713
    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->H:Z

    .line 815
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$15;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->I:Lju;

    .line 920
    iput-boolean v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->J:Z

    .line 935
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$17;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$17;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->K:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;

    .line 946
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->L:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    .line 1186
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$20;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$20;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->M:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    .line 1209
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$2;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->N:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    .line 1252
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$3;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->O:Layp$a;

    .line 1328
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$4;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->P:Layo$a;

    .line 1456
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$7;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$7;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->Q:Lbdd;

    .line 1523
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$16;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$16;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->R:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    return-void
.end method

.method static synthetic A(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Laxr;)Laxr;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Laxr;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Laxy;)Laxy;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Laxy;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    return-object p1
.end method

.method private a(Lcom/iflytek/viafly/translate/TranslateMode;)Ljava/lang/String;
    .locals 4
    .param p1, "mode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    .line 673
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLogMode mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "scene":Ljava/lang/String;
    sget-object v1, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$12;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/TranslateMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 709
    :goto_0
    return-object v0

    .line 677
    :pswitch_0
    const-string/jumbo v0, "CnToEn"

    .line 678
    goto :goto_0

    .line 680
    :pswitch_1
    const-string/jumbo v0, "EnToCn"

    .line 681
    goto :goto_0

    .line 683
    :pswitch_2
    const-string/jumbo v0, "CnToJp"

    .line 684
    goto :goto_0

    .line 686
    :pswitch_3
    const-string/jumbo v0, "JpToCn"

    .line 687
    goto :goto_0

    .line 689
    :pswitch_4
    const-string/jumbo v0, "CnToKr"

    .line 690
    goto :goto_0

    .line 692
    :pswitch_5
    const-string/jumbo v0, "KrToCn"

    .line 693
    goto :goto_0

    .line 695
    :pswitch_6
    const-string/jumbo v0, "CnToFr"

    .line 696
    goto :goto_0

    .line 698
    :pswitch_7
    const-string/jumbo v0, "FrToCn"

    .line 699
    goto :goto_0

    .line 701
    :pswitch_8
    const-string/jumbo v0, "CnToEs"

    .line 702
    goto :goto_0

    .line 704
    :pswitch_9
    const-string/jumbo v0, "EsToCn"

    .line 705
    goto :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mResultItemList"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    .param p3, "position"    # I

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    if-eqz v1, :cond_0

    .line 1084
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    .line 1086
    :cond_0
    new-instance v1, Layo;

    invoke-direct {v1, p1, p2, p3}, Layo;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    .line 1087
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->P:Layo$a;

    invoke-virtual {v1, v2}, Layo;->a(Layo$a;)V

    .line 1088
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    invoke-virtual {v1}, Layo;->a()Landroid/view/View;

    move-result-object v0

    .line 1089
    .local v0, "view":Landroid/view/View;
    new-instance v1, Layx;

    const v2, 0x7f080037

    invoke-direct {v1, p0, v2}, Layx;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r:Layx;

    .line 1090
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r:Layx;

    invoke-virtual {v1, v0}, Layx;->setContentView(Landroid/view/View;)V

    .line 1091
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r:Layx;

    invoke-virtual {v1}, Layx;->show()V

    .line 1092
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 285
    if-eqz p1, :cond_0

    .line 286
    const-string/jumbo v1, "translate_result"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResult;

    .line 287
    .local v0, "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseIntent result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Z)V

    .line 290
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V

    .line 291
    const-string/jumbo v1, "result"

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Z)V

    .line 294
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->b()V

    .line 300
    .end local v0    # "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v0    # "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Z)V

    .line 297
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V
    .locals 12
    .param p1, "result"    # Lcom/iflytek/viafly/translate/entity/TranslateResult;

    .prologue
    .line 581
    monitor-enter p0

    if-eqz p1, :cond_3

    .line 582
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getOriginal()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "original":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getTranslated()Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "translated":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->isNeedBrocast()Z

    move-result v7

    .line 585
    .local v7, "needSpeak":Z
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateData original "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateData translated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 590
    sget-boolean v1, Laxp;->f:Z

    if-eqz v1, :cond_0

    .line 591
    const-string/jumbo v1, "zh-cn"

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getTargetLg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 592
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Laxr;->a(Z)V

    .line 597
    :cond_0
    :goto_0
    new-instance v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v1}, Laxr;->q()I

    move-result v1

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    .line 598
    invoke-virtual {v4}, Laxr;->r()I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v5}, Laxr;->t()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v5

    .line 599
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getTargetLg()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/iflytek/viafly/translate/TranslateMode;Ljava/lang/String;)V

    .line 600
    .local v0, "resultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    sget-boolean v1, Laxp;->b:Z

    if-nez v1, :cond_8

    .line 602
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v4, 0x32

    if-lt v1, v4, :cond_1

    .line 603
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-static {v1}, Laxp;->a(Ljava/util/List;)V

    .line 608
    if-eqz v7, :cond_5

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .line 610
    .local v8, "position":I
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Laxp;->a:Z

    .line 612
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    if-nez v1, :cond_6

    .line 614
    new-instance v1, Layw;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-direct {v1, p0, v4}, Layw;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    .line 615
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v1, v8}, Layw;->a(I)V

    .line 616
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 617
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v1, p0}, Layw;->a(Layw$c;)V

    .line 624
    :goto_2
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v4}, Layw;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 626
    if-eqz v7, :cond_7

    .line 627
    const-string/jumbo v1, "TranslateMainActivity"

    const-string/jumbo v4, "updateData need broadcast"

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateData result.getTargetLg() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getTargetLg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getTargetLg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->I:Lju;

    invoke-virtual {v1, v3, v4, v5}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Lju;)V

    .line 631
    const-string/jumbo v1, "FT69501"

    const-string/jumbo v4, "d_session"

    const-string/jumbo v5, "play"

    invoke-direct {p0, v1, v4, v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_2
    :goto_3
    const-string/jumbo v1, "FT69502"

    const-string/jumbo v4, "d_translation"

    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    .line 653
    invoke-virtual {v5}, Laxr;->t()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/TranslateMode;)Ljava/lang/String;

    move-result-object v5

    .line 652
    invoke-direct {p0, v1, v4, v5}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    .end local v0    # "resultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    .end local v2    # "original":Ljava/lang/String;
    .end local v3    # "translated":Ljava/lang/String;
    .end local v7    # "needSpeak":Z
    .end local v8    # "position":I
    :cond_3
    :goto_4
    monitor-exit p0

    return-void

    .line 594
    .restart local v2    # "original":Ljava/lang/String;
    .restart local v3    # "translated":Ljava/lang/String;
    .restart local v7    # "needSpeak":Z
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Laxr;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 581
    .end local v2    # "original":Ljava/lang/String;
    .end local v3    # "translated":Ljava/lang/String;
    .end local v7    # "needSpeak":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 608
    .restart local v0    # "resultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    .restart local v2    # "original":Ljava/lang/String;
    .restart local v3    # "translated":Ljava/lang/String;
    .restart local v7    # "needSpeak":Z
    :cond_5
    const/4 v8, -0x1

    goto/16 :goto_1

    .line 620
    .restart local v8    # "position":I
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v1, v8}, Layw;->a(I)V

    .line 621
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v1}, Layw;->notifyDataSetChanged()V

    goto :goto_2

    .line 637
    :cond_7
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 638
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    new-instance v4, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$13;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$13;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v1, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 656
    .end local v8    # "position":I
    :cond_8
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b()V

    .line 657
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->setSwitchResultBtnEnable(Z)V

    .line 658
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->setTranslateResult(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    goto :goto_4

    .line 662
    .end local v0    # "resultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    :cond_9
    const-string/jumbo v1, "texttranslate"

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b()V

    .line 664
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->h()V

    .line 665
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Lcom/iflytek/viafly/translate/entity/TranslateResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/translate/entity/TranslateResult;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Z)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1569
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lpa;->a(Landroid/content/Context;Lpa$a;)V

    .line 1588
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRANSLATE_LANGUAGE"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "entryUrl"    # Ljava/lang/String;
    .param p2, "entryType"    # Ljava/lang/String;

    .prologue
    .line 1432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1434
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1435
    .local v1, "extraParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_position"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT89502"

    .line 1437
    invoke-virtual {v2, v3, v1}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1438
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    const-string/jumbo v3, "LX_100070"

    invoke-virtual {v2, v3}, Lwz;->a(Ljava/lang/String;)V

    .line 1449
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 1450
    .local v0, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    iput-object p1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 1451
    const-string/jumbo v2, "\u4e16\u754c\u771f\u5927"

    iput-object v2, v0, Lcom/iflytek/viafly/browser/BrowserParams;->titleText:Ljava/lang/String;

    .line 1452
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqh;->a(Lcom/iflytek/viafly/browser/BrowserParams;)V

    .line 1454
    .end local v0    # "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    .end local v1    # "extraParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    :goto_0
    return-void

    .line 1363
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1364
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "withMic"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 985
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 986
    const-string/jumbo v1, "edit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->setVisibility(I)V

    .line 988
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->setVisibility(I)V

    .line 989
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 990
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->setVisibility(I)V

    .line 991
    const-string/jumbo v1, "edit"

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    .line 1048
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u:Layp;

    invoke-virtual {v1, p1}, Layp;->b(Ljava/lang/String;)V

    .line 1049
    if-eqz p2, :cond_1

    .line 1050
    const-string/jumbo v1, "result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1052
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->k()V

    .line 1058
    :cond_1
    :goto_1
    return-void

    .line 992
    :cond_2
    const-string/jumbo v1, "fullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 993
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->setVisibility(I)V

    .line 994
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->setVisibility(I)V

    .line 995
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 996
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->setVisibility(I)V

    .line 997
    const-string/jumbo v1, "fullscreen"

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    goto :goto_0

    .line 998
    :cond_3
    const-string/jumbo v1, "reporterror"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 999
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->a()V

    .line 1000
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->setVisibility(I)V

    .line 1001
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->setVisibility(I)V

    .line 1002
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->setVisibility(I)V

    .line 1003
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1004
    const-string/jumbo v1, "reporterror"

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    goto :goto_0

    .line 1005
    :cond_4
    const-string/jumbo v1, "texttranslate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1006
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->setVisibility(I)V

    .line 1007
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->setVisibility(I)V

    .line 1008
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1009
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->setVisibility(I)V

    .line 1010
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->setVisibility(I)V

    .line 1012
    const-string/jumbo v1, "texttranslate"

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 1013
    :cond_5
    const-string/jumbo v1, "channel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1014
    const-string/jumbo v1, "TranslateMainActivity"

    const-string/jumbo v2, "switchLayoutView: MODE_CHANL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->setVisibility(I)V

    .line 1016
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->setVisibility(I)V

    .line 1017
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->setVisibility(I)V

    .line 1018
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->setVisibility(I)V

    .line 1019
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->b()V

    .line 1021
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1022
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setVisibility(I)V

    .line 1023
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1024
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1025
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1026
    const-string/jumbo v1, "channel"

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    .line 1027
    sput-boolean v5, Laxp;->b:Z

    .line 1028
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_TRANSLATE_ENTRY_TIP"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    .line 1029
    .local v0, "hasShow":Z
    if-nez v0, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1031
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_TRANSLATE_ENTRY_TIP"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1034
    .end local v0    # "hasShow":Z
    :cond_6
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchLayoutView: MODE_RESULT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->setVisibility(I)V

    .line 1036
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a()V

    .line 1037
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->setVisibility(I)V

    .line 1038
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->setVisibility(I)V

    .line 1040
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1041
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1042
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1043
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1044
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setVisibility(I)V

    .line 1046
    const-string/jumbo v1, "result"

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 1055
    :cond_7
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o()V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mResultItemList"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    .param p3, "position"    # I

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    if-eqz v1, :cond_0

    .line 1102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    .line 1104
    :cond_0
    new-instance v1, Layo;

    invoke-direct {v1, p1, p2, p3}, Layo;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    .line 1105
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->P:Layo$a;

    invoke-virtual {v1, v2}, Layo;->a(Layo$a;)V

    .line 1106
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->v:Layo;

    invoke-virtual {v1}, Layo;->b()Landroid/view/View;

    move-result-object v0

    .line 1107
    .local v0, "view":Landroid/view/View;
    new-instance v1, Layx;

    const v2, 0x7f080037

    invoke-direct {v1, p0, v2}, Layx;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r:Layx;

    .line 1108
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r:Layx;

    invoke-virtual {v1, v0}, Layx;->setContentView(Landroid/view/View;)V

    .line 1109
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r:Layx;

    invoke-virtual {v1}, Layx;->show()V

    .line 1111
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1590
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$9;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    .line 1604
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 982
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Z)V

    .line 983
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1606
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$10;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lpf;->a(Landroid/content/Context;Lpf$a;)V

    .line 1622
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1557
    :goto_0
    return-void

    .line 1554
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1555
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_session"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT89517"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 0
    .param p1, "isMiddle"    # Z

    .prologue
    .line 1702
    sput-boolean p1, Laxp;->f:Z

    .line 1703
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->m()V

    .line 1704
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 6

    .prologue
    .line 208
    const v3, 0x7f0b0711

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 209
    .local v1, "rootView":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x60

    invoke-static {p0, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Layp;

    invoke-direct {v3, p0}, Layp;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u:Layp;

    .line 211
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u:Layp;

    invoke-virtual {v3}, Layp;->b()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v3, 0x7f0b0716

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e:Landroid/widget/FrameLayout;

    .line 215
    const v3, 0x7f0b0718

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o:Landroid/widget/RelativeLayout;

    .line 216
    const v3, 0x7f0b0712

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    .line 217
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->K:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->setOnTranslateBtnClickListener(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;)V

    .line 219
    const v3, 0x7f0b0713

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    .line 220
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->N:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->setOnBtnClickCallback(Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;)V

    .line 222
    const v3, 0x7f0b0714

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    .line 223
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->M:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;->setOnBtnClickCallback(Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;)V

    .line 225
    const v3, 0x7f0b0715

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    .line 226
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u:Layp;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->setTranslateTitleBarHelper(Layp;)V

    .line 227
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->L:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->setOnTextTranslateBtnClickListener(Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;)V

    .line 229
    const v3, 0x7f0b075d

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j:Landroid/widget/LinearLayout;

    .line 230
    const v3, 0x7f0b075f

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->l:Landroid/widget/TextView;

    .line 232
    const v3, 0x7f0b071f

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v3, 0x7f0b0721

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v3, 0x7f0b0720

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v3, 0x7f0b0719

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->k:Landroid/widget/LinearLayout;

    .line 237
    const v3, 0x7f0b071a

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->m:Landroid/widget/TextView;

    .line 238
    const v3, 0x7f0b071b

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->n:Landroid/widget/ImageView;

    .line 239
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v3, 0x7f0b0717

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    .line 243
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 246
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 247
    .local v2, "spaceView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide v4, 0x4051800000000000L    # 70.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 248
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    .line 252
    const v3, 0x7f0b071c

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    .line 254
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->setOnMicEventListener(Layr;)V

    .line 255
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u:Layp;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->O:Layp$a;

    invoke-virtual {v3, v4}, Layp;->a(Layp$a;)V

    .line 257
    const v3, 0x7f0b071e

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->D:Landroid/widget/LinearLayout;

    .line 258
    const v3, 0x7f0b071d

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->E:Landroid/widget/LinearLayout;

    .line 259
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1563
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1564
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT89513"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private declared-synchronized d(Z)V
    .locals 1
    .param p1, "needRestart"    # Z

    .prologue
    .line 1773
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    monitor-exit p0

    return-void

    .line 1773
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Layd;

    invoke-direct {v0, p0}, Layd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    .line 263
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    invoke-virtual {v0, p0}, Layd;->a(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 265
    new-instance v0, Layf;

    invoke-direct {v0, p0}, Layf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->w:Layf;

    .line 266
    new-instance v0, Layg;

    invoke-direct {v0}, Layg;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->x:Layg;

    .line 267
    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->k()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "mCacheLanguage":Ljava/lang/String;
    invoke-static {v0}, Layb;->a(Ljava/lang/String;)Laxr;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    .line 277
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u:Layp;

    invoke-virtual {v1, v0}, Layp;->d(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->a(Laxr;)V

    .line 280
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v2}, Laxr;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layw;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRANSLATE_LANGUAGE"

    const-string/jumbo v2, "cn_en"

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateMicView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 1123
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->w:Layf;

    invoke-virtual {v2}, Layf;->a()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, "strTranslateEntry":Ljava/lang/String;
    invoke-static {v1}, Laxy;->f(Ljava/lang/String;)Laxy;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    .line 1125
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    if-eqz v2, :cond_1

    .line 1127
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    invoke-virtual {v2}, Laxy;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->z:Ljava/lang/String;

    .line 1128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1129
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1130
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->z:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1131
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1140
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1141
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->x:Layg;

    new-instance v3, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    invoke-virtual {v2, v3}, Layg;->a(Lajm;)V

    .line 1165
    :cond_0
    return-void

    .line 1135
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0329

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020247

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1137
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->w:Layf;

    invoke-virtual {v2}, Layf;->c()Laxy;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    goto :goto_0
.end method

.method private declared-synchronized i()V
    .locals 2

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "loadCacheResults "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1171
    invoke-static {}, Laxp;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Laxp;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-static {}, Laxp;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    if-nez v0, :cond_1

    .line 1176
    new-instance v0, Layw;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Layw;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    .line 1177
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1178
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v0, p0}, Layw;->a(Layw$c;)V

    .line 1182
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v1}, Layw;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    monitor-exit p0

    return-void

    .line 1180
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v0}, Layw;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j()V

    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxy;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1632
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g()Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, "currentMode":Ljava/lang/String;
    invoke-static {v0}, Laxo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1634
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j(I)V

    .line 1638
    :goto_0
    return-void

    .line 1636
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j(I)V

    goto :goto_0
.end method

.method private j(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1690
    if-eqz p1, :cond_0

    .line 1692
    if-ne v0, p1, :cond_1

    .line 1693
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v2, v1}, Laxr;->a(Z)V

    .line 1698
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Z)V

    .line 1699
    return-void

    .line 1695
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v2, v0}, Laxr;->a(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1698
    goto :goto_1
.end method

.method static synthetic k(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 1644
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInCancelState()V

    .line 1662
    :goto_0
    return-void

    .line 1648
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->speaking:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->getMicState()Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1649
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, " speaking don\'t need to restart mic ."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1652
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->getMicState()Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1653
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, " mic is starting, don\'t need to restart mic ."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1656
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    const-string/jumbo v1, "result"

    if-eq v0, v1, :cond_3

    .line 1657
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, " current view is not result page, don\'t need to restart mic ."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1661
    :cond_3
    sget-boolean v0, Laxp;->f:Z

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Z)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layf;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->w:Layf;

    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 1668
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    .line 1669
    .local v0, "mode":Lcom/iflytek/viafly/translate/TranslateMode;
    if-nez v0, :cond_0

    .line 1670
    invoke-static {}, Laxp;->d()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    .line 1672
    :cond_0
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateMode;->Auto:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne v2, v0, :cond_1

    .line 1673
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j()V

    .line 1683
    :goto_0
    return-void

    .line 1676
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/TranslateMode;->name()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1677
    const/4 v1, 0x1

    .line 1681
    .local v1, "position":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j(I)V

    goto :goto_0

    .line 1679
    .end local v1    # "position":I
    :cond_2
    const/4 v1, 0x2

    .restart local v1    # "position":I
    goto :goto_1
.end method

.method static synthetic m(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lbdd;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->Q:Lbdd;

    return-object v0
.end method

.method private declared-synchronized m()V
    .locals 2

    .prologue
    .line 1710
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1711
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v0}, Laxr;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1712
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInCancelState()V

    .line 1714
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1717
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p()V

    .line 1718
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    if-eqz v0, :cond_0

    .line 1720
    invoke-static {}, Larc;->a()Larc;

    move-result-object v0

    invoke-virtual {v0}, Larc;->h()V

    .line 1721
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1722
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o()V

    .line 1723
    sget-boolean v0, Laxp;->f:Z

    if-eqz v0, :cond_2

    .line 1724
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->Auto:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v0}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 1728
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    invoke-virtual {v0}, Layd;->a()V

    .line 1730
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1710
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1726
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v0}, Laxr;->t()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    invoke-static {v0}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic n(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 1739
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o()V

    .line 1741
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Z)V

    .line 1742
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;->idle:Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->getMicState()Lcom/iflytek/viafly/translate/ui/TranslateMicView$MicState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    invoke-virtual {v0}, Layd;->c()V

    .line 1751
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->H:Z

    return v0
.end method

.method private declared-synchronized p()V
    .locals 2

    .prologue
    .line 1758
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->I:Lju;

    invoke-virtual {v0, v1}, Layd;->b(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->I:Lju;

    invoke-virtual {v0, v1}, Layd;->a(Lju;)V

    .line 1761
    :cond_0
    sget-boolean v0, Laxp;->b:Z

    if-eqz v0, :cond_2

    .line 1762
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultAdapter()Layu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1763
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultAdapter()Layu;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Layu;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1767
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    if-eqz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Layw;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic p(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o()V

    return-void
.end method

.method static synthetic q(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layd;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    return-object v0
.end method

.method private declared-synchronized q()Z
    .locals 1

    .prologue
    .line 1777
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic r(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lju;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->I:Lju;

    return-object v0
.end method

.method static synthetic t(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t:I

    return v0
.end method

.method static synthetic u(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h:Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f()V

    return-void
.end method

.method static synthetic x(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->u:Layp;

    return-object v0
.end method

.method static synthetic y(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p()V

    return-void
.end method

.method static synthetic z(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 330
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onMicCancel to cancel mic"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->n()V

    .line 332
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p()V

    .line 333
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "cancel"

    invoke-virtual {v0, v1}, Lxq;->m(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1490
    const-string/jumbo v0, "TranslateMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextMenuBtnClick: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-direct {p0, p0, v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V

    .line 1493
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isMiddle"    # Z

    .prologue
    .line 318
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onMicClick to start mic "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz p1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->l()V

    .line 325
    :goto_0
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "restart"

    invoke-virtual {v0, v1}, Lxq;->m(Ljava/lang/String;)V

    .line 326
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r:Layx;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r:Layx;

    invoke-virtual {v0}, Layx;->dismiss()V

    .line 1117
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1497
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onTextSpeakBtnClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1501
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslatedLang()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->I:Lju;

    invoke-virtual {v1, v2, v0, v3}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Lju;)V

    .line 1504
    const-string/jumbo v0, "FT89517"

    const-string/jumbo v1, "d_session"

    const-string/jumbo v2, "play"

    invoke-direct {p0, v0, v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 1
    .param p1, "mIntentEmpty"    # Z

    .prologue
    .line 1785
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1786
    monitor-exit p0

    return-void

    .line 1785
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1510
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onTextResultItemLongClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-direct {p0, p0, v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V

    .line 1512
    return-void
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 1781
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1516
    const-string/jumbo v1, "TranslateMainActivity"

    const-string/jumbo v2, "onTextShareBtnClick: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p()V

    .line 1518
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 1520
    .local v0, "translateResultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "translateText"

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->R:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-static {p0, v1, v2, v3, v4}, Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 1521
    return-void
.end method

.method public e(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-direct {p0, p0, v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V

    .line 866
    return-void
.end method

.method public f(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 871
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getType()I

    move-result v0

    .line 873
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p:Laxr;

    invoke-virtual {v2, v0}, Laxr;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 883
    .end local v0    # "type":I
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslatedLang()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->I:Lju;

    invoke-virtual {v2, v3, v1, v4}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Lju;)V

    .line 881
    const-string/jumbo v1, "FT69501"

    const-string/jumbo v2, "d_session"

    const-string/jumbo v3, "play"

    invoke-direct {p0, v1, v2, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1789
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 1790
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->overridePendingTransition(II)V

    .line 1791
    return-void
.end method

.method public g(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 888
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 889
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onResultItemLongClick position is illegal"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-direct {p0, p0, v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V

    goto :goto_0
.end method

.method public h(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 899
    const-string/jumbo v2, "TranslateMainActivity"

    const-string/jumbo v3, "onReportErrorClick "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p()V

    .line 902
    iput p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t:I

    .line 904
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/browser/BrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 905
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 907
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 908
    .local v0, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    const-string/jumbo v2, "http://xz.voicecloud.cn/resources/lxTranslate/feedback.html"

    iput-object v2, v0, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 909
    const-string/jumbo v2, "\u62a5\u9519"

    iput-object v2, v0, Lcom/iflytek/viafly/browser/BrowserParams;->titleText:Ljava/lang/String;

    .line 910
    const-string/jumbo v2, "com.iflytek.cmccbrowser.EXTRA_BREIF_ITEM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 911
    invoke-static {p0, v1}, Lazo;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 918
    const-string/jumbo v2, "report_click"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 377
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "handleLastResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    invoke-virtual {v0, p1, v1}, Layd;->a([Lcom/iflytek/yd/speech/ViaAsrResult;Laxz;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 410
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 372
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "handleParticalResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public i(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 927
    const-string/jumbo v1, "TranslateMainActivity"

    const-string/jumbo v2, "onShareBtnClick "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p()V

    .line 929
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 931
    .local v0, "translateResultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "translateMain"

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->R:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-static {p0, v1, v2, v3, v4}, Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 932
    const-string/jumbo v1, "share_click"

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1062
    const-string/jumbo v0, "edit"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    const-string/jumbo v0, "result"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Ljava/lang/String;)V

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    const-string/jumbo v0, "fullscreen"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1065
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->N:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout$a;->a()V

    goto :goto_0

    .line 1066
    :cond_2
    const-string/jumbo v0, "reporterror"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1067
    const-string/jumbo v0, "result"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_3
    const-string/jumbo v0, "texttranslate"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1069
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f()V

    .line 1070
    const-string/jumbo v0, "channel"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_4
    const-string/jumbo v0, "result"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1072
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->finish()V

    goto :goto_0

    .line 1073
    :cond_5
    const-string/jumbo v0, "channel"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->E:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1371
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1429
    :goto_0
    :pswitch_0
    return-void

    .line 1373
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    invoke-virtual {v0}, Laxy;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->B:Ljava/lang/String;

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->B:Ljava/lang/String;

    const-string/jumbo v1, "txt"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1381
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->y:Laxy;

    invoke-virtual {v0}, Laxy;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->B:Ljava/lang/String;

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->B:Ljava/lang/String;

    const-string/jumbo v1, "pic"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1388
    :pswitch_3
    const/4 v0, 0x0

    sput-boolean v0, Laxp;->c:Z

    .line 1390
    const-string/jumbo v0, "texttranslate"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->d()V

    .line 1395
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT89514"

    const/4 v2, 0x0

    .line 1396
    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1400
    :pswitch_4
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "FT89529"

    invoke-virtual {v0, v1}, Lxq;->a(Ljava/lang/String;)V

    .line 1401
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$5;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$5;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1413
    :pswitch_5
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$6;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1371
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b071a
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 754
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 755
    const/4 v1, 0x2

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 756
    const-string/jumbo v1, "fullscreen"

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    sget-boolean v1, Laxp;->b:Z

    if-eqz v1, :cond_2

    .line 758
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t:I

    if-le v1, v2, :cond_0

    .line 759
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 760
    .local v0, "resultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverData resultItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-eqz v0, :cond_0

    .line 762
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->a(Ljava/lang/String;I)V

    .line 775
    .end local v0    # "resultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    const-string/jumbo v1, "result"

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    .line 782
    :cond_1
    return-void

    .line 766
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t:I

    if-le v1, v2, :cond_0

    .line 767
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->t:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 768
    .restart local v0    # "resultItem":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverData resultItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->g:Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenLayout;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const v0, 0x7f030142

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->setContentView(I)V

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 179
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d()V

    .line 181
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f()V

    .line 183
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e()V

    .line 185
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h()V

    .line 187
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i()V

    .line 189
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->g()V

    .line 191
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Landroid/content/Intent;)V

    .line 193
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 196
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90204"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100070"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 796
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 797
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onDestroy() "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 801
    iput-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    .line 803
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->n()V

    .line 804
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p()V

    .line 807
    invoke-static {v2}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 809
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 810
    iput-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q:Ljava/util/List;

    .line 811
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->i()V

    .line 812
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 813
    return-void
.end method

.method public onEvent(Layh;)V
    .locals 1
    .param p1, "event"    # Layh;

    .prologue
    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->J:Z

    .line 923
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 203
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onNewIntent "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 739
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 740
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b:Layd;

    if-eqz v0, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->o()V

    .line 744
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->p()V

    .line 745
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 716
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$14;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$14;-><init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 730
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->J:Z

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d:Layw;

    invoke-virtual {v0}, Layw;->notifyDataSetChanged()V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->J:Z

    .line 734
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 735
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 786
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStop()V

    .line 788
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->getTextResultItemList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Laxp;->b(Ljava/util/List;)V

    .line 791
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 2

    .prologue
    .line 440
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "updateUIAfterResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIAfterResult()V

    .line 442
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 2

    .prologue
    .line 414
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "updateUIInCancelState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInCancelState()V

    .line 416
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 4
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 420
    const-string/jumbo v1, "TranslateMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUIInErrorState errId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInErrorState(III)V

    .line 423
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 424
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 425
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 426
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    :cond_0
    return-void
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "updateUIInInitState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInInitState(Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 2

    .prologue
    .line 350
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "updateUIInRecodingState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInRecodingState()V

    .line 352
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 344
    const-string/jumbo v0, "TranslateMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInRecodingState volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInRecodingState(I)V

    .line 346
    return-void
.end method

.method public updateUIInSNState()V
    .locals 2

    .prologue
    .line 434
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "updateUIInSNState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInSNState()V

    .line 436
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 2

    .prologue
    .line 446
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "updateUIInTimeout"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInTimeout()V

    .line 448
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 2

    .prologue
    .line 356
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "updateUIInWaitingResultState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string/jumbo v0, "edit"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->b()V

    .line 368
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string/jumbo v0, "texttranslate"

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->c()V

    .line 363
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->i:Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateTextLayout;->setSwitchResultBtnEnable(Z)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a:Lcom/iflytek/viafly/translate/ui/TranslateMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMicView;->updateUIInWaitingResultState()V

    goto :goto_0
.end method
