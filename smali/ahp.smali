.class public Lahp;
.super Laht;
.source "HomeSpeechHelper.java"

# interfaces
.implements Lcom/iflytek/framework/business/interfaces/IResultCallback;
.implements Lqs;
.implements Lqu;


# instance fields
.field private a:Z

.field private c:Lqr;

.field private d:Lpp;

.field private e:Lcom/iflytek/yd/speech/ISpeechHandler;

.field private f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

.field private g:Z

.field private h:Z

.field private i:Lahx;

.field private j:Landroid/content/Intent;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 1
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahp;->a:Z

    .line 699
    new-instance v0, Lahp$2;

    invoke-direct {v0, p0}, Lahp$2;-><init>(Lahp;)V

    iput-object v0, p0, Lahp;->k:Ljava/lang/Runnable;

    .line 105
    return-void
.end method

.method static synthetic a(Lahp;)Lcom/iflytek/framework/business/interfaces/IResultPreHandler;
    .locals 1
    .param p0, "x0"    # Lahp;

    .prologue
    .line 77
    iget-object v0, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/iflytek/common/speech/entities/SpeechEntry;)V
    .locals 4
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/iflytek/common/speech/entities/SpeechEntry;

    .prologue
    .line 232
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lahp;->j:Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v2, "engine_type"

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v2, "web_scene"

    const-string/jumbo v3, "all"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v2, "local_scene"

    const-string/jumbo v3, "all"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v2, "speech_entry"

    .line 238
    invoke-virtual {p2}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "uriString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_0
    iget-object v1, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v2, "audio_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method static synthetic b(Lahp;)Lqr;
    .locals 1
    .param p0, "x0"    # Lahp;

    .prologue
    .line 77
    iget-object v0, p0, Lahp;->c:Lqr;

    return-object v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 170
    :cond_0
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    .line 658
    invoke-static {}, Labb;->f()Ladp;

    move-result-object v1

    .line 659
    .local v1, "mDialSpeechTipsView":Ladp;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ladp;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    :try_start_0
    invoke-virtual {v1}, Ladp;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeSpeechHelper"

    const-string/jumbo v3, "dismissDialSpeechTip error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    invoke-super {p0, p1}, Laht;->a(Landroid/os/Message;)V

    .line 175
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 177
    :sswitch_0
    iget-object v2, p0, Lahp;->c:Lqr;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lahp;->c:Lqr;

    invoke-virtual {v2}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e()V

    goto :goto_0

    .line 182
    :sswitch_1
    iget-object v2, p0, Lahp;->c:Lqr;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lahp;->c:Lqr;

    invoke-virtual {v2}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e()V

    goto :goto_0

    .line 187
    :sswitch_2
    const-string/jumbo v2, "HomeSpeechHelper"

    const-string/jumbo v3, "MSG_SEARCH_TEXT"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lahp;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 194
    .local v0, "data":Landroid/net/Uri;
    const-string/jumbo v2, "HomeSpeechHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_IAT_AUDIO_BUFFER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->m()V

    .line 198
    :cond_1
    iget-object v2, p0, Lahp;->c:Lqr;

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lahp;->c:Lqr;

    invoke-virtual {v2}, Lqr;->g()Z

    .line 200
    iget-object v2, p0, Lahp;->c:Lqr;

    invoke-virtual {v2}, Lqr;->c()V

    .line 202
    :cond_2
    sget-object v2, Lcom/iflytek/common/speech/entities/SpeechEntry;->home:Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-direct {p0, v0, v2}, Lahp;->a(Landroid/net/Uri;Lcom/iflytek/common/speech/entities/SpeechEntry;)V

    .line 203
    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v2

    iget-object v3, p0, Lahp;->j:Landroid/content/Intent;

    invoke-interface {v2, v3}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    .end local v0    # "data":Landroid/net/Uri;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    .line 207
    .local v1, "speechTestData":Landroid/net/Uri;
    const-string/jumbo v2, "HomeSpeechHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_SPEECH_TEST_AUDIO_BUFFER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 209
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->m()V

    .line 211
    :cond_3
    iget-object v2, p0, Lahp;->c:Lqr;

    if-eqz v2, :cond_4

    .line 212
    iget-object v2, p0, Lahp;->c:Lqr;

    invoke-virtual {v2}, Lqr;->g()Z

    .line 213
    iget-object v2, p0, Lahp;->c:Lqr;

    invoke-virtual {v2}, Lqr;->c()V

    .line 215
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lahp;->j:Landroid/content/Intent;

    .line 216
    iget-object v2, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v3, "engine_type"

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v3, "web_scene"

    const-string/jumbo v4, "all"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v2, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v3, "local_scene"

    const-string/jumbo v4, "all"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v2, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v3, "speech_entry"

    sget-object v4, Lcom/iflytek/common/speech/entities/SpeechEntry;->speech_test:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 221
    invoke-virtual {v4}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v2, p0, Lahp;->j:Landroid/content/Intent;

    const-string/jumbo v3, "speech_test"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpv;->a(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v2

    iget-object v3, p0, Lahp;->j:Landroid/content/Intent;

    invoke-interface {v2, v3}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x19 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Lcom/iflytek/framework/business/entities/StartHomeInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/framework/business/entities/StartHomeInfo;

    .prologue
    .line 355
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mAfferentInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    if-eqz v2, :cond_1

    .line 357
    :try_start_0
    iget-object v1, p1, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mAfferentInfo:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 359
    .local v1, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v2, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    if-eqz v2, :cond_0

    .line 360
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k()V

    .line 364
    :cond_0
    invoke-virtual {p0, v1}, Lahp;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v1    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_1
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeSpeechHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 3
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 373
    iget-object v1, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    if-eqz v1, :cond_0

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0, p0}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->preHandleLastResult(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iflytek/framework/business/interfaces/IResultCallback;)V

    .line 379
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 689
    const-string/jumbo v0, "HomeSpeechHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMicEvent | tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string/jumbo v0, "tab_home_discover"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tag_swith_to_speechmode"

    .line 691
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tag_home_editmode"

    .line 692
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tab_home_common"

    .line 693
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v0

    .line 695
    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v1

    .line 694
    invoke-static {v0, v1}, Lahx;->a(Landroid/content/Context;Lqr;)V

    .line 697
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lahp;->w()V

    .line 256
    invoke-super {p0}, Laht;->a()Z

    move-result v0

    return v0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 579
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 581
    if-eqz p3, :cond_0

    .line 582
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_DATA"

    .line 583
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 584
    .local v0, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {p0, v0}, Lahp;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 587
    .end local v0    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Laht;->a(IILandroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 301
    const/16 v2, 0x52

    if-ne p1, v2, :cond_0

    .line 302
    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v2

    invoke-virtual {v2}, Lqr;->e()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v0

    .line 303
    .local v0, "state":Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    sget-object v2, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-eq v0, v2, :cond_4

    .line 304
    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 329
    .end local v0    # "state":Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    :goto_0
    return v1

    .line 307
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 308
    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 309
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lww;->a(Landroid/content/Context;)Lww;

    move-result-object v2

    invoke-virtual {v2}, Lww;->a()V

    .line 310
    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    goto :goto_0

    .line 313
    :cond_1
    const/16 v2, 0x55

    if-eq p1, v2, :cond_2

    const/16 v2, 0x4f

    if-ne p1, v2, :cond_4

    .line 315
    :cond_2
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lazk;->a(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 316
    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v2

    invoke-virtual {v2}, Lqr;->e()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v0

    .line 317
    .restart local v0    # "state":Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    sget-object v2, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-ne v0, v2, :cond_3

    .line 318
    invoke-virtual {p0}, Lahp;->q()Lahw;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lahw;->sendEmptyMessage(I)Z

    .line 319
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->speech_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_3
    sget-object v2, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->recording:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-ne v0, v2, :cond_4

    .line 323
    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V

    goto :goto_0

    .line 329
    .end local v0    # "state":Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    :cond_4
    invoke-super {p0, p1, p2}, Laht;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 112
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)Z
    .locals 2
    .param p1, "state"    # Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .prologue
    .line 670
    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 671
    const/4 v0, 0x1

    .line 684
    :goto_0
    return v0

    .line 673
    :cond_0
    const-string/jumbo v0, "HomeSpeechHelper"

    const-string/jumbo v1, "--------->>>onClick"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lahp;->i:Lahx;

    if-nez v0, :cond_1

    .line 676
    new-instance v0, Lahx;

    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lahx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahp;->i:Lahx;

    .line 679
    :cond_1
    iget-object v0, p0, Lahp;->e:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lahp;->e:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->k()V

    .line 681
    iget-object v0, p0, Lahp;->i:Lahx;

    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lahx;->a(Lqr;)Z

    move-result v0

    goto :goto_0

    .line 684
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 4
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v3, 0x0

    .line 138
    const-string/jumbo v0, "HomeSpeechHelper"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 141
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v0, p0, Lahp;->c:Lqr;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lahp;->c:Lqr;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lqr;->a(Ljava/lang/String;Z)V

    .line 727
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lahp;->w()V

    .line 250
    invoke-super {p0}, Laht;->b()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v2, 0x0

    .line 153
    iget-boolean v0, p0, Lahp;->g:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazk;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v0

    iget-object v1, p0, Lahp;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iput-boolean v2, p0, Lahp;->g:Z

    .line 163
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Laht;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 157
    :cond_1
    iget-boolean v0, p0, Lahp;->h:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazk;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->d()V

    .line 160
    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v0

    iget-object v1, p0, Lahp;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iput-boolean v2, p0, Lahp;->h:Z

    goto :goto_0
.end method

.method public b(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 147
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c()V

    .line 148
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 277
    if-nez p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v1, p0, Lahp;->c:Lqr;

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lahp;->c:Lqr;

    invoke-virtual {v1}, Lqr;->g()Z

    .line 284
    :cond_2
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LONG_KEY_PRESS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    iput-boolean v3, p0, Lahp;->g:Z

    .line 286
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->long_press_home:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 287
    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_3
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_START_RECOGNIZE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iput-boolean v3, p0, Lahp;->h:Z

    .line 290
    const-string/jumbo v0, ""

    .line 291
    .local v0, "startFrom":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 292
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "START_FROM"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_4
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 264
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public c(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 334
    invoke-super {p0, p1}, Laht;->c(Z)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lahp;->e:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lahp;->e:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->release()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lahp;->e:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 343
    :cond_0
    invoke-super {p0}, Laht;->d()V

    .line 344
    return-void
.end method

.method public d(Z)V
    .locals 0
    .param p1, "isHomeLongPressMode"    # Z

    .prologue
    .line 719
    iput-boolean p1, p0, Lahp;->g:Z

    .line 720
    return-void
.end method

.method public d(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lahp;->c(Landroid/content/Intent;)V

    .line 270
    invoke-super {p0, p1}, Laht;->d(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 592
    const-string/jumbo v5, "com.iflytek.cmcc.ACTION_RESULT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 593
    const-string/jumbo v5, "com.iflytek.cmcc.EXTRA_DATA"

    .line 594
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 595
    .local v1, "extResult":Landroid/os/Parcelable;
    invoke-static {v1}, Liq;->a(Landroid/os/Parcelable;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v3

    .line 596
    .local v3, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz v3, :cond_1

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v4, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v0, p0}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->preHandleLastResult(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iflytek/framework/business/interfaces/IResultCallback;)V

    .line 607
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    :goto_0
    const/4 v4, 0x1

    .line 609
    .end local v1    # "extResult":Landroid/os/Parcelable;
    .end local v3    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    return v4

    .line 602
    .restart local v1    # "extResult":Landroid/os/Parcelable;
    .restart local v3    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_1
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0086

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 605
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v0

    iput-object v0, p0, Lahp;->c:Lqr;

    .line 127
    iget-object v0, p0, Lahp;->c:Lqr;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lahp;->c:Lqr;

    invoke-virtual {p0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqr;->a(Lcom/iflytek/yd/speech/ISpeechHandler;)V

    .line 129
    iget-object v0, p0, Lahp;->c:Lqr;

    invoke-virtual {v0, p0}, Lqr;->a(Lqu;)V

    .line 130
    iget-object v0, p0, Lahp;->c:Lqr;

    invoke-virtual {v0, p0}, Lqr;->a(Lqs;)V

    .line 132
    :cond_0
    invoke-super {p0}, Laht;->f()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;->newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    iput-object v0, p0, Lahp;->e:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 117
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getPreHandler()Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    move-result-object v0

    iput-object v0, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    .line 118
    return-void
.end method

.method public handleLastResult(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    invoke-direct {p0}, Lahp;->x()V

    .line 417
    iget-object v0, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p0}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->preHandleLastResult(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iflytek/framework/business/interfaces/IResultCallback;)V

    .line 422
    :cond_0
    invoke-virtual {p0}, Lahp;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lahp;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iflytek/viafly/Home$b;->b:Z

    if-nez v0, :cond_1

    .line 424
    const-string/jumbo v0, "HomeSpeechHelper"

    const-string/jumbo v1, "speechViewUpdateInCancelState | start speech wake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(J)V

    .line 427
    :cond_1
    return-void
.end method

.method public handleParticalResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v0, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lahp;->f:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    invoke-interface {v0, p1}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->preHandleParticalResult(Ljava/util/ArrayList;)V

    .line 412
    :cond_0
    return-void
.end method

.method public i()Lcom/iflytek/yd/speech/ISpeechHandler;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lahp;->e:Lcom/iflytek/yd/speech/ISpeechHandler;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lahp;->a:Z

    return v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 570
    new-instance v0, Lpp;

    invoke-virtual {p0}, Lahp;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahp;->d:Lpp;

    .line 571
    return-void
.end method

.method public l()Lpp;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lahp;->d:Lpp;

    return-object v0
.end method

.method public m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 614
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(IIILjava/lang/Object;)V

    .line 618
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->HOME:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;)V

    .line 619
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lahp;->g:Z

    return v0
.end method

.method public needShowLocate(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 624
    new-instance v0, Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .line 625
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;-><init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 626
    .local v0, "dlg":Lcom/iflytek/viafly/ui/LocatProgressDialog;
    new-instance v1, Lahp$1;

    invoke-direct {v1, p0, v0}, Lahp$1;-><init>(Lahp;Lcom/iflytek/viafly/ui/LocatProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 640
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->show()V

    .line 641
    return-void
.end method

.method public showNoResult()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public showStatusError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 651
    return-void
.end method

.method public speechViewUpdateAfterResult()V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public speechViewUpdateInCancelState()V
    .locals 4

    .prologue
    .line 431
    const-string/jumbo v1, "HomeSpeechHelper"

    const-string/jumbo v2, "--------------->>> speechViewUpdateInCancelState()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lahp;->x()V

    .line 433
    invoke-static {}, Labb;->i()I

    move-result v1

    if-nez v1, :cond_3

    .line 434
    const/4 v1, 0x1

    .line 435
    invoke-static {v1}, Labb;->a(I)V

    .line 440
    :cond_0
    :goto_0
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 441
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v0, :cond_1

    .line 442
    invoke-interface {v0}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onEndOfSpeech()V

    .line 445
    :cond_1
    invoke-virtual {p0}, Lahp;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lahp;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/iflytek/viafly/Home$b;->b:Z

    if-nez v1, :cond_2

    .line 447
    const-string/jumbo v1, "HomeSpeechHelper"

    const-string/jumbo v2, "speechViewUpdateInCancelState | start speech wake"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(J)V

    .line 451
    :cond_2
    return-void

    .line 436
    .end local v0    # "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    :cond_3
    invoke-static {}, Labb;->i()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 437
    const/4 v1, 0x3

    invoke-static {v1}, Labb;->a(I)V

    goto :goto_0
.end method

.method public speechViewUpdateInErrorState(III)Z
    .locals 11
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 456
    const-string/jumbo v7, "HomeSpeechHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "--------------->>> speechViewUpdateInErrorState() errId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {}, Labb;->i()I

    move-result v7

    if-nez v7, :cond_8

    .line 458
    invoke-static {v5}, Labb;->a(I)V

    .line 462
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lahp;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lahp;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->b:Z

    if-nez v7, :cond_1

    .line 463
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v7

    const-wide/16 v8, 0x320

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(J)V

    .line 467
    :cond_1
    const v7, 0xc3501

    if-ne p3, v7, :cond_9

    .line 469
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v5

    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "record"

    invoke-virtual {v5, v7, v8}, Laqv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 495
    :cond_2
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    .line 496
    .local v2, "interactionScene":Lcom/iflytek/framework/business/speech/InteractionScene;
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "cacheFocus":Ljava/lang/String;
    const-string/jumbo v5, "HomeSpeechHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cacheFocus is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 499
    const-string/jumbo v5, "telephone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "message"

    .line 500
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 501
    :cond_3
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lww;->a(Landroid/content/Context;)Lww;

    move-result-object v5

    .line 502
    invoke-virtual {v5, v1, v2, p3}, Lww;->a(Ljava/lang/String;Lcom/iflytek/framework/business/speech/InteractionScene;I)V

    .line 507
    :cond_4
    const v5, 0xc3503

    if-eq p3, v5, :cond_5

    const v5, 0xc3516

    if-eq p3, v5, :cond_5

    const v5, 0xc3517

    if-ne p3, v5, :cond_c

    :cond_5
    sget-object v5, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-eq v2, v5, :cond_6

    sget-object v5, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_number:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-ne v2, v5, :cond_c

    .line 510
    :cond_6
    invoke-static {}, Labb;->k()I

    move-result v5

    if-ge v5, v10, :cond_c

    .line 512
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 513
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v0, :cond_7

    .line 514
    invoke-interface {v0, p3}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onSpeechError(I)V

    :cond_7
    move v5, v6

    .line 530
    .end local v0    # "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    .end local v1    # "cacheFocus":Ljava/lang/String;
    .end local v2    # "interactionScene":Lcom/iflytek/framework/business/speech/InteractionScene;
    :goto_1
    return v5

    .line 459
    :cond_8
    invoke-static {}, Labb;->i()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 460
    invoke-static {v10}, Labb;->a(I)V

    goto/16 :goto_0

    .line 478
    :cond_9
    const-string/jumbo v7, "translation"

    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getBusinessFocus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 479
    const v7, 0xc350a

    if-eq p3, v7, :cond_a

    const/16 v7, 0x2786

    if-ne p3, v7, :cond_2

    .line 480
    :cond_a
    const-string/jumbo v6, "HomeSpeechHelper"

    const-string/jumbo v7, "show speechExampleGuide page"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v6

    const-string/jumbo v7, "20002"

    invoke-virtual {v6, v7}, Lvm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 484
    const-string/jumbo v6, "HomeSpeechHelper"

    const-string/jumbo v7, "use default url"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string/jumbo v4, "http://s1.voicecloud.cn/resources/sayingdemo/pre.html?ecode=000"

    .line 488
    :cond_b
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v6

    const-string/jumbo v7, ""

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 519
    .end local v4    # "url":Ljava/lang/String;
    .restart local v1    # "cacheFocus":Ljava/lang/String;
    .restart local v2    # "interactionScene":Lcom/iflytek/framework/business/speech/InteractionScene;
    :cond_c
    invoke-static {}, Lagm;->j()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 520
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v7, "com.iflytek.cmccIFLY_FIRST_ERROR"

    invoke-virtual {v5, v7}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    .line 522
    .local v3, "isFirst":Z
    if-eqz v3, :cond_d

    .line 523
    invoke-virtual {p0}, Lahp;->u()Lqr;

    move-result-object v5

    invoke-virtual {v5}, Lqr;->d()Z

    move-result v5

    if-nez v5, :cond_d

    .line 524
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v7, "com.iflytek.cmccIFLY_FIRST_ERROR"

    invoke-virtual {v5, v7, v6}, Lil;->a(Ljava/lang/String;Z)V

    .end local v3    # "isFirst":Z
    :cond_d
    move v5, v6

    .line 530
    goto :goto_1
.end method

.method public speechViewUpdateInInitState()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public speechViewUpdateInRecodingState()V
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 389
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onBeginningOfSpeech()V

    .line 392
    :cond_0
    return-void
.end method

.method public speechViewUpdateInSNState()V
    .locals 4

    .prologue
    .line 535
    invoke-direct {p0}, Lahp;->x()V

    .line 541
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lahy;->a(Landroid/content/Context;)Lahy;

    move-result-object v0

    invoke-virtual {v0}, Lahy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lahp;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lahy;->a(Landroid/content/Context;)Lahy;

    move-result-object v0

    invoke-virtual {v0}, Lahy;->b()V

    .line 554
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Labb;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 555
    invoke-static {}, Labb;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 556
    const/4 v0, 0x0

    .line 557
    invoke-static {v0}, Labb;->a(I)V

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 558
    :cond_2
    invoke-static {}, Labb;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 559
    const/4 v0, 0x2

    invoke-static {v0}, Labb;->a(I)V

    goto :goto_0
.end method

.method public speechViewUpdateInWaitingResultState()V
    .locals 1

    .prologue
    .line 401
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 402
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onEndOfSpeech()V

    .line 405
    :cond_0
    return-void
.end method
