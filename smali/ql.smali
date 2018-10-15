.class public Lql;
.super Lqj;
.source "NovelDetailPageBusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql$a;
    }
.end annotation


# static fields
.field private static o:Z

.field private static p:Z


# instance fields
.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/lang/String;

.field private n:J

.field private q:Laqt;

.field private r:Landroid/os/Handler;

.field private s:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lql;->o:Z

    .line 79
    sput-boolean v0, Lql;->p:Z

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V
    .locals 4
    .param p1, "lxWebView"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lqj;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    .line 71
    iput v1, p0, Lql;->i:I

    .line 75
    iput v1, p0, Lql;->l:I

    .line 106
    new-instance v1, Lql$1;

    invoke-direct {v1, p0}, Lql$1;-><init>(Lql;)V

    iput-object v1, p0, Lql;->r:Landroid/os/Handler;

    .line 195
    new-instance v1, Lql$2;

    invoke-direct {v1, p0}, Lql$2;-><init>(Lql;)V

    iput-object v1, p0, Lql;->s:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    .line 292
    new-instance v1, Lql$3;

    invoke-direct {v1, p0}, Lql$3;-><init>(Lql;)V

    iput-object v1, p0, Lql;->t:Landroid/content/BroadcastReceiver;

    .line 95
    iget-object v1, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    iget-object v2, p0, Lql;->s:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->setComponentListener(Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.NEWS_TTS_STOP_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lql;->a:Landroid/content/Context;

    iget-object v3, p0, Lql;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 101
    const-string/jumbo v1, "NovelPageComponents"

    new-instance v2, Lql$a;

    invoke-direct {v2, p0}, Lql$a;-><init>(Lql;)V

    invoke-virtual {p1, v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 103
    const-string/jumbo v1, "NovelDetailPageBusinessAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NovelDetailPageBusinessAdapter, isNeedSpeakAuto is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lql;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method static synthetic a(Lql;I)I
    .locals 0
    .param p0, "x0"    # Lql;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lql;->l:I

    return p1
.end method

.method static synthetic a(Lql;J)J
    .locals 1
    .param p0, "x0"    # Lql;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lql;->n:J

    return-wide p1
.end method

.method static synthetic a(Lql;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lql;->k:Ljava/util/List;

    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lql;->j:Ljava/lang/String;

    invoke-static {v0}, Lql;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lql;->k:Ljava/util/List;

    .line 347
    :cond_0
    iget-object v0, p0, Lql;->k:Ljava/util/List;

    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lql;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 349
    iget-object v0, p0, Lql;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lql;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lql;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    iput-object p1, p0, Lql;->k:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    if-eqz p1, :cond_1

    .line 424
    instance-of v1, p1, Lcom/iflytek/viafly/Home;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 425
    check-cast v1, Lcom/iflytek/viafly/Home;

    invoke-virtual {v1}, Lcom/iflytek/viafly/Home;->a()Lqr;

    move-result-object v1

    invoke-virtual {v1}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v0

    .line 426
    .local v0, "parent":Landroid/view/View;
    iget-object v1, p0, Lql;->q:Laqt;

    if-nez v1, :cond_0

    .line 427
    new-instance v1, Laqt;

    invoke-direct {v1, p1}, Laqt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lql;->q:Laqt;

    .line 429
    :cond_0
    iget-object v1, p0, Lql;->q:Laqt;

    invoke-virtual {v1, v0}, Laqt;->a(Landroid/view/View;)V

    .line 432
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string/jumbo v1, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v2, "showTrafficDialog"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 360
    const-string/jumbo v1, "\u5f53\u524d\u4e3a\u6570\u636e\u7f51\u7edc\uff0c\u64ad\u62a5\u5c06\u6d88\u8017\u6d41\u91cf\u3002"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 362
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lql$4;

    invoke-direct {v2, p0, v0}, Lql$4;-><init>(Lql;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 370
    const-string/jumbo v1, "\u7ee7\u7eed\u64ad\u62a5"

    new-instance v2, Lql$5;

    invoke-direct {v2, p0, p2, v0}, Lql$5;-><init>(Lql;Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 382
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 383
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 384
    return-void
.end method

.method static synthetic a(Lql;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lql;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lql;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lql;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lql;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lql;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "curUrl"    # Ljava/lang/String;

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, "isUrlMatch":Z
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 585
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v3, "wap.cmread.com"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "tbook.yicha.cn"

    .line 588
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    :cond_0
    const/4 v1, 0x1

    .line 591
    :cond_1
    const-string/jumbo v3, "NovelDetailPageBusinessAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "curUrl :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isurlmatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return v1
.end method

.method static synthetic b(Lql;)I
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget v0, p0, Lql;->i:I

    return v0
.end method

.method static synthetic b(Lql;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lql;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lql;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lql;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lql;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lql;->j:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string/jumbo v1, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v2, "showOfflineSpeakDialog"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 391
    const-string/jumbo v1, "\u5f53\u524d\u4e3a\u6570\u636e\u7f51\u7edc\uff0c\u64ad\u62a5\u5c06\u6d88\u8017\u6d41\u91cf\uff0c\u53ef\u9009\u62e9\u79bb\u7ebf\u64ad\u62a5\u3002"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 393
    const-string/jumbo v1, "\u79bb\u7ebf\u64ad\u62a5"

    new-instance v2, Lql$6;

    invoke-direct {v2, p0, p2, v0}, Lql$6;-><init>(Lql;Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 405
    const-string/jumbo v1, "\u7ee7\u7eed\u64ad\u62a5"

    new-instance v2, Lql$7;

    invoke-direct {v2, p0, p2, v0}, Lql$7;-><init>(Lql;Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 417
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 418
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 419
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v1, 0x1

    invoke-static {v1}, Lasa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_NOVEL_SETTING"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, "speakMode":I
    packed-switch v0, :pswitch_data_0

    .line 170
    .end local v0    # "speakMode":I
    :goto_0
    return-void

    .line 143
    .restart local v0    # "speakMode":I
    :pswitch_0
    iget-object v1, p0, Lql;->a:Landroid/content/Context;

    invoke-static {v1}, Lhl;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-direct {p0}, Lql;->q()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 146
    :cond_0
    sget-boolean v1, Lql;->o:Z

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-direct {p0}, Lql;->q()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lql;->a:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lql;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-direct {p0}, Lql;->q()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 160
    .end local v0    # "speakMode":I
    :cond_2
    iget-object v1, p0, Lql;->a:Landroid/content/Context;

    invoke-static {v1}, Lhl;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-direct {p0}, Lql;->q()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 163
    :cond_3
    sget-boolean v1, Lql;->o:Z

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-direct {p0}, Lql;->q()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 166
    :cond_4
    iget-object v1, p0, Lql;->a:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lql;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lql;I)I
    .locals 0
    .param p0, "x0"    # Lql;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lql;->i:I

    return p1
.end method

.method static synthetic c(Lql;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    const/16 v0, 0xc8

    .line 318
    .local v0, "MIX_PART_LEN":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 319
    const/4 v4, 0x0

    .line 340
    :cond_0
    return-object v4

    .line 321
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v4, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "start":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 325
    .local v1, "next":I
    const-string/jumbo v6, "\u3002"

    add-int/lit16 v7, v2, 0xc8

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 326
    .local v5, "tmp_next":I
    if-lez v5, :cond_2

    .line 327
    add-int/lit8 v1, v5, 0x1

    .line 329
    :cond_2
    const-string/jumbo v6, "NovelDetailPageBusinessAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " end "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "sub":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 333
    const-string/jumbo v6, "\u672c\u7ae0\u514d\u8d39"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 334
    const-string/jumbo v6, " "

    const-string/jumbo v7, ","

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 336
    :cond_3
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    const-string/jumbo v6, "NovelDetailPageBusinessAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " txt:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move v2, v1

    .line 339
    goto :goto_0
.end method

.method static synthetic d(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lql;->p:Z

    return p0
.end method

.method static synthetic e(Lql;)I
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget v0, p0, Lql;->l:I

    return v0
.end method

.method static synthetic e(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lql;->o:Z

    return p0
.end method

.method static synthetic f(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lql;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lql;)I
    .locals 2
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget v0, p0, Lql;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lql;->l:I

    return v0
.end method

.method static synthetic j(Lql;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lql;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    return-object v0
.end method

.method static synthetic l(Lql;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    return-object v0
.end method

.method static synthetic m(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lql;)J
    .locals 2
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-wide v0, p0, Lql;->n:J

    return-wide v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lql;->p:Z

    return v0
.end method

.method static synthetic q(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method private q()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_NOVEL_SETTING"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    .line 176
    .local v1, "speakMode":I
    packed-switch v1, :pswitch_data_0

    .line 189
    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .restart local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "tts_engine_type"

    const-string/jumbo v3, "cloud"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v2, "role"

    const-string/jumbo v3, "xiaohong20"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :pswitch_1
    const/4 v0, 0x0

    .line 185
    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic r(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lql;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Lql;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic u(Lql;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic v(Lql;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    invoke-direct {p0}, Lql;->q()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Lql;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic x(Lql;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method static synthetic y(Lql;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lql;

    .prologue
    .line 59
    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 568
    const/4 v0, 0x0

    sput-boolean v0, Lql;->p:Z

    .line 569
    const-string/jumbo v0, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v1, "onReceivedError, set isNeedSpeakAuto false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-super {p0, p1, p2, p3, p4}, Lqj;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 512
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 513
    .local v2, "mURL":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "host":Ljava/lang/String;
    iput-object v1, p0, Lql;->m:Ljava/lang/String;

    .line 515
    const-string/jumbo v3, "NovelDetailPageBusinessAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string/jumbo v3, "wap.cmread.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    iget-object v3, p0, Lql;->a:Landroid/content/Context;

    const-string/jumbo v4, "dialogMode/novel/novelParser.js"

    invoke-static {v3, p1, v4}, Lazn;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_0
    invoke-super {p0, p1, p2}, Lqj;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 527
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "mURL":Ljava/net/URL;
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v4, "injectJS error"

    invoke-static {v3, v4, v0}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Z)V
    .locals 6
    .param p1, "isLongPress"    # Z

    .prologue
    .line 531
    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    const-string/jumbo v1, "\u7075\u7280\u4e3a\u60a8\u64ad\u5c0f\u8bf4"

    const-string/jumbo v2, ""

    sget v3, Lof;->l:I

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lazq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 534
    :cond_0
    invoke-super {p0, p1}, Lqj;->b(Z)V

    .line 535
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    sget v1, Lof;->l:I

    invoke-static {v0, v1}, Lazq;->a(Landroid/content/Context;I)V

    .line 491
    invoke-super {p0}, Lqj;->g()V

    .line 492
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 539
    iget v0, p0, Lql;->i:I

    if-nez v0, :cond_2

    .line 541
    iget-object v0, p0, Lql;->b:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "javascript: getContent()"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 544
    iget v0, p0, Lql;->l:I

    if-nez v0, :cond_0

    .line 545
    const-string/jumbo v0, "wap.cmread.com"

    iget-object v1, p0, Lql;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    invoke-static {v0}, Lxi;->a(Landroid/content/Context;)Lxi;

    move-result-object v0

    const-string/jumbo v1, "click_novel_speak_button"

    invoke-virtual {v0, v1}, Lxi;->a(Ljava/lang/String;)V

    .line 561
    :cond_0
    :goto_0
    invoke-super {p0}, Lqj;->k()V

    .line 562
    return-void

    .line 548
    :cond_1
    const-string/jumbo v0, "tbook.yicha.cn"

    iget-object v1, p0, Lql;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    .line 550
    invoke-static {v0}, Lxi;->a(Landroid/content/Context;)Lxi;

    move-result-object v0

    const-string/jumbo v1, "click_novel_speak_button_yicha"

    .line 551
    invoke-virtual {v0, v1}, Lxi;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :cond_2
    iget v0, p0, Lql;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 556
    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->resume()V

    goto :goto_0

    .line 557
    :cond_3
    iget v0, p0, Lql;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lql;->d:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->pause()V

    goto :goto_0
.end method

.method public n()V
    .locals 3

    .prologue
    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lql;->r:Landroid/os/Handler;

    .line 497
    iget-object v0, p0, Lql;->a:Landroid/content/Context;

    sget v1, Lof;->l:I

    invoke-static {v0, v1}, Lazq;->a(Landroid/content/Context;I)V

    .line 498
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lql;->a:Landroid/content/Context;

    iget-object v2, p0, Lql;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 500
    const/4 v0, 0x0

    sput-boolean v0, Lql;->p:Z

    .line 501
    const-string/jumbo v0, "NovelDetailPageBusinessAdapter"

    const-string/jumbo v1, "onPageDestroy, set isNeedSpeakAuto false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lql;->q:Laqt;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lql;->q:Laqt;

    invoke-virtual {v0}, Laqt;->a()V

    .line 506
    :cond_0
    invoke-super {p0}, Lqj;->n()V

    .line 507
    return-void
.end method
