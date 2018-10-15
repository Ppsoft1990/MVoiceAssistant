.class public Lahq;
.super Laht;
.source "HomeSplashScreenHelper.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

.field private F:I

.field private G:Z

.field private H:Landroid/widget/Button;

.field private I:J

.field private J:Z

.field private K:Ljava/lang/Runnable;

.field private final a:Ljava/lang/String;

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:J

.field private l:Z

.field private m:J

.field private final n:J

.field private o:Ljava/util/Timer;

.field private p:Ljava/util/TimerTask;

.field private q:Ljava/util/Timer;

.field private r:Ljava/util/TimerTask;

.field private s:J

.field private t:Lorg/json/JSONObject;

.field private u:Lcom/migu/voiceads/MIGUNativeAdDataRef;

.field private v:Z

.field private w:Z

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 8
    .param p1, "homeContext"    # Lahu;

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v4, 0x0

    const/16 v3, -0x3e7

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 61
    const-string/jumbo v0, "HomeSplashScreenHelper"

    iput-object v0, p0, Lahq;->a:Ljava/lang/String;

    .line 63
    iput-boolean v2, p0, Lahq;->d:Z

    .line 64
    iput-boolean v2, p0, Lahq;->e:Z

    .line 65
    iput-boolean v2, p0, Lahq;->f:Z

    .line 66
    iput-boolean v2, p0, Lahq;->g:Z

    .line 67
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lahq;->h:J

    .line 68
    iput-wide v6, p0, Lahq;->i:J

    .line 69
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lahq;->j:J

    .line 70
    iput-wide v6, p0, Lahq;->k:J

    .line 71
    iput-boolean v2, p0, Lahq;->l:Z

    .line 73
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lahq;->n:J

    .line 74
    iput-object v4, p0, Lahq;->o:Ljava/util/Timer;

    .line 75
    iput-object v4, p0, Lahq;->p:Ljava/util/TimerTask;

    .line 76
    iput-object v4, p0, Lahq;->q:Ljava/util/Timer;

    .line 77
    iput-object v4, p0, Lahq;->r:Ljava/util/TimerTask;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lahq;->s:J

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lahq;->t:Lorg/json/JSONObject;

    .line 81
    iput-boolean v2, p0, Lahq;->v:Z

    .line 82
    iput-boolean v2, p0, Lahq;->w:Z

    .line 83
    iput v2, p0, Lahq;->x:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lahq;->y:I

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lahq;->z:I

    .line 86
    iput v3, p0, Lahq;->A:I

    .line 87
    iput v3, p0, Lahq;->B:I

    .line 88
    iput v3, p0, Lahq;->C:I

    .line 89
    iput v3, p0, Lahq;->D:I

    .line 93
    iput-boolean v2, p0, Lahq;->G:Z

    .line 97
    iput-boolean v2, p0, Lahq;->J:Z

    .line 515
    new-instance v0, Lahq$6;

    invoke-direct {v0, p0}, Lahq$6;-><init>(Lahq;)V

    iput-object v0, p0, Lahq;->K:Ljava/lang/Runnable;

    .line 101
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    new-instance v1, Lahq$3;

    invoke-direct {v1, p0}, Lahq$3;-><init>(Lahq;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->setSplashADResultCallback(Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;)V

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lahq;->m:J

    .line 262
    iget-object v0, p0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->requestNewSplashADData()J

    move-result-wide v0

    iput-wide v0, p0, Lahq;->s:J

    .line 263
    return-void
.end method

.method private B()V
    .locals 5

    .prologue
    .line 269
    const-string/jumbo v3, "HomeSplashScreenHelper"

    const-string/jumbo v4, "initSplashView"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v3

    if-nez v3, :cond_0

    .line 271
    const-string/jumbo v3, "HomeSplashScreenHelper"

    const-string/jumbo v4, "initSplashView getParentRootView() return null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 275
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 276
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 277
    .local v0, "adView":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lahq;->b:Lahu;

    check-cast v3, Lahv;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lahv;->a(Ljava/lang/ref/WeakReference;)V

    .line 278
    const v3, 0x7f0203cb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 279
    const v3, 0x7f0b01aa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lahq$4;

    invoke-direct {v4, p0}, Lahq$4;-><init>(Lahq;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    invoke-virtual {p0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {p0}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v0    # "adView":Landroid/widget/RelativeLayout;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HomeSplashScreenHelper"

    const-string/jumbo v4, "initSplashView exception"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private C()V
    .locals 21

    .prologue
    .line 313
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lahq;->G:Z

    .line 315
    const/4 v14, 0x1

    .line 316
    .local v14, "ACTION_OUTER_BROWSER":I
    const/4 v12, 0x7

    .line 317
    .local v12, "ACTION_INNER_BROWSER":I
    const/16 v13, 0x9

    .line 318
    .local v13, "ACTION_NATIVE":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 319
    .local v15, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v3, "platformid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 320
    .local v6, "platFormId":I
    const/16 v2, 0x9

    if-ne v6, v2, :cond_1

    .line 321
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v17, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_id"

    const-string/jumbo v3, "miguLevel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual/range {p0 .. p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90014"

    .line 324
    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 327
    :try_start_1
    const-string/jumbo v2, "HomeSplashScreenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lahq;->A:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",downY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lahq;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",upX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lahq;->C:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",upY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lahq;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lahq;->u:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    move-object/from16 v0, p0

    iget v3, v0, Lahq;->A:I

    move-object/from16 v0, p0

    iget v4, v0, Lahq;->B:I

    move-object/from16 v0, p0

    iget v5, v0, Lahq;->C:I

    move-object/from16 v0, p0

    iget v6, v0, Lahq;->D:I

    .end local v6    # "platFormId":I
    invoke-virtual/range {p0 .. p0}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->onClicked(IIIILandroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :goto_0
    const/4 v2, 0x1

    if-ne v15, v2, :cond_2

    .line 342
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lahq;->k()V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v3, "clickurl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 344
    .local v20, "uri":Landroid/net/Uri;
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    .local v18, "itent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 366
    .end local v15    # "action":I
    .end local v17    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "itent":Landroid/content/Intent;
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 329
    .restart local v15    # "action":I
    .restart local v17    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 330
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeSplashScreenHelper"

    const-string/jumbo v3, ""

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 363
    .end local v15    # "action":I
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v16

    .line 364
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeSplashScreenHelper"

    const-string/jumbo v3, "splash AD clicked exception "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 333
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v6    # "platFormId":I
    .restart local v15    # "action":I
    :cond_1
    :try_start_3
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 334
    .restart local v17    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual/range {p0 .. p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90014"

    .line 336
    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    sget-object v3, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adclick:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v7, "platformslotid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v8, "clicknoticeurls"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lahq;->A:I

    move-object/from16 v0, p0

    iget v9, v0, Lahq;->B:I

    move-object/from16 v0, p0

    iget v10, v0, Lahq;->C:I

    move-object/from16 v0, p0

    iget v11, v0, Lahq;->D:I

    invoke-virtual/range {v2 .. v11}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->splashReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONArray;IIII)V

    goto/16 :goto_0

    .line 347
    .end local v6    # "platFormId":I
    :cond_2
    const/4 v2, 0x7

    if-ne v15, v2, :cond_3

    .line 348
    invoke-virtual/range {p0 .. p0}, Lahq;->k()V

    .line 349
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v4, "title"

    .line 350
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v5, "clickurl"

    .line 351
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 349
    invoke-virtual {v2, v3, v4, v5}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 353
    :cond_3
    const/16 v2, 0x9

    if-ne v15, v2, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v3, "clickurl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 355
    .local v19, "page":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    const-string/jumbo v2, "LoginHomePage"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SetVoiceprintHomePage"

    .line 358
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    invoke-virtual/range {p0 .. p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lazo;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method static synthetic a(Lahq;I)I
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lahq;->A:I

    return p1
.end method

.method static synthetic a(Lahq;J)J
    .locals 1
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lahq;->s:J

    return-wide p1
.end method

.method static synthetic a(Lahq;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 60
    iput-object p1, p0, Lahq;->H:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lahq;Lcom/migu/voiceads/MIGUNativeAdDataRef;)Lcom/migu/voiceads/MIGUNativeAdDataRef;
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .prologue
    .line 60
    iput-object p1, p0, Lahq;->u:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    return-object p1
.end method

.method static synthetic a(Lahq;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    iput-object p1, p0, Lahq;->t:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic a(Lahq;Ljava/util/Timer;Ljava/util/TimerTask;)V
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Ljava/util/Timer;
    .param p2, "x2"    # Ljava/util/TimerTask;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lahq;->a(Ljava/util/Timer;Ljava/util/TimerTask;)V

    return-void
.end method

.method private a(Ljava/util/Timer;Ljava/util/TimerTask;)V
    .locals 0
    .param p1, "timer"    # Ljava/util/Timer;
    .param p2, "task"    # Ljava/util/TimerTask;

    .prologue
    .line 629
    if-eqz p2, :cond_0

    .line 630
    invoke-virtual {p2}, Ljava/util/TimerTask;->cancel()Z

    .line 632
    :cond_0
    if-eqz p1, :cond_1

    .line 633
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 635
    :cond_1
    return-void
.end method

.method static synthetic a(Lahq;)Z
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-boolean v0, p0, Lahq;->e:Z

    return v0
.end method

.method static synthetic a(Lahq;Z)Z
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lahq;->d:Z

    return p1
.end method

.method static synthetic b(Lahq;I)I
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lahq;->B:I

    return p1
.end method

.method static synthetic b(Lahq;J)J
    .locals 1
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lahq;->I:J

    return-wide p1
.end method

.method static synthetic b(Lahq;)Z
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-boolean v0, p0, Lahq;->g:Z

    return v0
.end method

.method static synthetic b(Lahq;Z)Z
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lahq;->f:Z

    return p1
.end method

.method static synthetic c(Lahq;I)I
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lahq;->C:I

    return p1
.end method

.method static synthetic c(Lahq;)Z
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-boolean v0, p0, Lahq;->d:Z

    return v0
.end method

.method static synthetic c(Lahq;Z)Z
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lahq;->e:Z

    return p1
.end method

.method static synthetic d(Lahq;I)I
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lahq;->D:I

    return p1
.end method

.method static synthetic d(Lahq;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-object v0, p0, Lahq;->o:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lahq;Z)Z
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lahq;->l:Z

    return p1
.end method

.method static synthetic e(Lahq;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-object v0, p0, Lahq;->p:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic e(Lahq;Z)Z
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lahq;->w:Z

    return p1
.end method

.method static synthetic f(Lahq;)V
    .locals 0
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    invoke-direct {p0}, Lahq;->z()V

    return-void
.end method

.method static synthetic f(Lahq;Z)Z
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lahq;->g:Z

    return p1
.end method

.method static synthetic g(Lahq;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-object v0, p0, Lahq;->r:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic g(Lahq;Z)Z
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lahq;->v:Z

    return p1
.end method

.method static synthetic h(Lahq;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-object v0, p0, Lahq;->q:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic h(Lahq;Z)Z
    .locals 0
    .param p0, "x0"    # Lahq;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lahq;->J:Z

    return p1
.end method

.method static synthetic i(Lahq;)Z
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-boolean v0, p0, Lahq;->w:Z

    return v0
.end method

.method static synthetic j(Lahq;)Z
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-boolean v0, p0, Lahq;->v:Z

    return v0
.end method

.method static synthetic k(Lahq;)I
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget v0, p0, Lahq;->C:I

    return v0
.end method

.method static synthetic l(Lahq;)I
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget v0, p0, Lahq;->A:I

    return v0
.end method

.method static synthetic m(Lahq;)V
    .locals 0
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    invoke-direct {p0}, Lahq;->C()V

    return-void
.end method

.method static synthetic n(Lahq;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-object v0, p0, Lahq;->t:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic o(Lahq;)I
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget v0, p0, Lahq;->B:I

    return v0
.end method

.method static synthetic p(Lahq;)I
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget v0, p0, Lahq;->D:I

    return v0
.end method

.method static synthetic q(Lahq;)Lcom/iflytek/viafly/ad/business/SplashADDataManager;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-object v0, p0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    return-object v0
.end method

.method static synthetic r(Lahq;)Z
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-boolean v0, p0, Lahq;->f:Z

    return v0
.end method

.method static synthetic s(Lahq;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-object v0, p0, Lahq;->K:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic t(Lahq;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-object v0, p0, Lahq;->H:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic u(Lahq;)J
    .locals 2
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-wide v0, p0, Lahq;->I:J

    return-wide v0
.end method

.method static synthetic v(Lahq;)Z
    .locals 1
    .param p0, "x0"    # Lahq;

    .prologue
    .line 60
    iget-boolean v0, p0, Lahq;->J:Z

    return v0
.end method

.method private w()V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lahq;->B()V

    .line 161
    :cond_0
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "requestShowAD"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahq;->d:Z

    .line 163
    invoke-direct {p0}, Lahq;->y()V

    .line 164
    iget-object v0, p0, Lahq;->o:Ljava/util/Timer;

    iget-object v1, p0, Lahq;->p:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 165
    invoke-direct {p0}, Lahq;->A()V

    .line 166
    return-void
.end method

.method private x()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 171
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_SPLASH_AD_LAST_SUCCESS_TIME"

    invoke-virtual {v6, v7, v10, v11}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v4

    .line 172
    .local v4, "lastTime":J
    const-string/jumbo v6, "HomeSplashScreenHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lastTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    .local v0, "curTime":J
    const-string/jumbo v6, "HomeSplashScreenHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "curTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "timeDelta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sub-long v2, v0, v4

    .line 177
    .local v2, "deltaTime":J
    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    const-wide/16 v6, 0x7530

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    .line 178
    const-string/jumbo v6, "HomeSplashScreenHelper"

    const-string/jumbo v7, "time is too near"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v6, 0x1

    .line 182
    .end local v0    # "curTime":J
    .end local v2    # "deltaTime":J
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lahq;->o:Ljava/util/Timer;

    iget-object v1, p0, Lahq;->p:Ljava/util/TimerTask;

    invoke-direct {p0, v0, v1}, Lahq;->a(Ljava/util/Timer;Ljava/util/TimerTask;)V

    .line 190
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lahq;->o:Ljava/util/Timer;

    .line 191
    new-instance v0, Lahq$1;

    invoke-direct {v0, p0}, Lahq$1;-><init>(Lahq;)V

    iput-object v0, p0, Lahq;->p:Ljava/util/TimerTask;

    .line 201
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lahq;->q:Ljava/util/Timer;

    iget-object v1, p0, Lahq;->r:Ljava/util/TimerTask;

    invoke-direct {p0, v0, v1}, Lahq;->a(Ljava/util/Timer;Ljava/util/TimerTask;)V

    .line 209
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lahq;->q:Ljava/util/Timer;

    .line 210
    new-instance v0, Lahq$2;

    invoke-direct {v0, p0}, Lahq$2;-><init>(Lahq;)V

    iput-object v0, p0, Lahq;->r:Ljava/util/TimerTask;

    .line 221
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 106
    invoke-virtual {p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 107
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ViaFlyApp;

    .line 108
    .local v1, "viaFlyApp":Lcom/iflytek/viafly/ViaFlyApp;
    const/4 v2, 0x0

    iput v2, p0, Lahq;->F:I

    .line 109
    invoke-virtual {p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lahr;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const-string/jumbo v2, "from_where"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, "curIntentExtra":I
    const/16 v2, 0x1d

    if-ne v0, v2, :cond_0

    .line 116
    iput v6, p0, Lahq;->F:I

    .line 119
    .end local v0    # "curIntentExtra":I
    :cond_0
    invoke-virtual {v1}, Lcom/iflytek/viafly/ViaFlyApp;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/ViaFlyApp;->a(Z)V

    .line 122
    iget v2, p0, Lahq;->F:I

    if-eq v2, v6, :cond_1

    .line 123
    invoke-virtual {p0}, Lahq;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/iflytek/viafly/Home$b;->h:Z

    if-eqz v2, :cond_2

    .line 125
    const-string/jumbo v2, "ApplicationLoader"

    const-string/jumbo v3, "mIsAutoRestart is true, so not show SplashScreen"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    :goto_0
    const-string/jumbo v2, "HomeSplashScreenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lahq;->F:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v2, p0, Lahq;->F:I

    if-ne v2, v5, :cond_3

    .line 137
    invoke-virtual {p0}, Lahq;->m()V

    .line 150
    :goto_1
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 129
    :cond_2
    iput v5, p0, Lahq;->F:I

    goto :goto_0

    .line 138
    :cond_3
    iget v2, p0, Lahq;->F:I

    if-ne v2, v6, :cond_5

    .line 140
    invoke-direct {p0}, Lahq;->x()Z

    move-result v2

    if-nez v2, :cond_4

    .line 141
    new-instance v2, Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    invoke-virtual {p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    .line 142
    invoke-direct {p0}, Lahq;->w()V

    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p0}, Lahq;->m()V

    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {p0}, Lahq;->n()V

    goto :goto_1
.end method

.method public h()V
    .locals 14

    .prologue
    .line 373
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_SPLASH_AD_LAST_SUCCESS_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    .line 374
    iget-object v0, p0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v1, "platformid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 375
    .local v13, "platFormId":I
    const/16 v0, 0x9

    if-ne v13, v0, :cond_2

    .line 376
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v11, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_id"

    const-string/jumbo v1, "miguLevel"

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90012"

    .line 379
    invoke-virtual {v0, v1, v11}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :try_start_1
    iget-object v0, p0, Lahq;->u:Lcom/migu/voiceads/MIGUNativeAdDataRef;

    invoke-virtual {p0}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->onExposured(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    .end local v11    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "platFormId":I
    :goto_0
    invoke-virtual {p0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lahq;->B()V

    .line 403
    :cond_0
    iget-object v0, p0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v1, "maturl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 404
    .local v12, "picUrl":Ljava/lang/String;
    const-string/jumbo v0, "HomeSplashScreenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "picUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :try_start_2
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lahq;->j()Lbcu;

    move-result-object v1

    new-instance v2, Lahq$5;

    invoke-direct {v2, p0}, Lahq$5;-><init>(Lahq;)V

    .line 406
    invoke-virtual {v0, v12, v1, v2}, Lazl;->a(Ljava/lang/String;Lbcu;Lbdd;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 509
    .end local v12    # "picUrl":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 383
    .restart local v11    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "platFormId":I
    :catch_0
    move-exception v10

    .line 384
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 395
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "platFormId":I
    :catch_1
    move-exception v10

    .line 396
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "showADSplash exception "

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "platFormId":I
    :cond_2
    :try_start_4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 388
    .restart local v11    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_id"

    iget-object v1, p0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90012"

    .line 390
    invoke-virtual {v0, v1, v11}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 392
    iget-object v0, p0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adshowed:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    iget-object v2, p0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v4, "platformslotid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v5, "platformid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lahq;->t:Lorg/json/JSONObject;

    const-string/jumbo v6, "noticeurls"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    iget v6, p0, Lahq;->A:I

    iget v7, p0, Lahq;->B:I

    iget v8, p0, Lahq;->C:I

    iget v9, p0, Lahq;->D:I

    invoke-virtual/range {v0 .. v9}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->splashReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONArray;IIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 505
    .end local v11    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "platFormId":I
    .restart local v12    # "picUrl":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 506
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "SplashAD Image load Exception"

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public j()Lbcu;
    .locals 3

    .prologue
    .line 545
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 547
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 549
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 551
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 552
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 553
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public k()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 560
    const-string/jumbo v4, "HomeSplashScreenHelper"

    const-string/jumbo v5, "removeSplashView"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v4, p0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    if-eqz v4, :cond_0

    .line 562
    iget-object v4, p0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->setSplashADResultCallback(Lcom/iflytek/viafly/ad/business/SplashADDataManager$SplashADResultCallback;)V

    .line 563
    iget-wide v4, p0, Lahq;->s:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 564
    iget-object v4, p0, Lahq;->E:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    iget-wide v6, p0, Lahq;->s:J

    invoke-virtual {v4, v6, v7}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->cancelRequestNewSplashAData(J)V

    .line 565
    iput-wide v8, p0, Lahq;->s:J

    .line 569
    :cond_0
    invoke-virtual {p0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lahq;->q()Lahw;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 570
    const-wide/16 v0, 0x0

    .line 571
    .local v0, "delayTime":J
    iget-boolean v4, p0, Lahq;->l:Z

    if-eqz v4, :cond_1

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lahq;->m:J

    sub-long v2, v4, v6

    .line 573
    .local v2, "deltaTime":J
    const-string/jumbo v4, "HomeSplashScreenHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deltaTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 575
    const-wide/16 v0, 0x3e8

    .line 578
    .end local v2    # "deltaTime":J
    :cond_1
    invoke-virtual {p0}, Lahq;->q()Lahw;

    move-result-object v4

    new-instance v5, Lahq$7;

    invoke-direct {v5, p0}, Lahq$7;-><init>(Lahq;)V

    invoke-virtual {v4, v5, v0, v1}, Lahw;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    .end local v0    # "delayTime":J
    :cond_2
    return-void
.end method

.method public m()V
    .locals 10

    .prologue
    .line 594
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lahq;->p()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 595
    .local v2, "splashScreen":Landroid/view/View;
    const v3, 0x7f0203cb

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 596
    invoke-virtual {p0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lahq;->c:J

    .line 599
    const-string/jumbo v3, "ApplicationLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show SplashScreen start time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lahq;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string/jumbo v3, "ApplicationLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "from process init to show SplashScreen last time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lahq;->c:J

    .line 603
    invoke-virtual {p0}, Lahq;->t()Lcom/iflytek/viafly/Home$b;

    move-result-object v5

    iget-wide v8, v5, Lcom/iflytek/viafly/Home$b;->i:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-wide/16 v0, 0x3e8

    .line 611
    .local v0, "dalayTime":J
    invoke-virtual {p0}, Lahq;->q()Lahw;

    move-result-object v3

    new-instance v4, Lahq$8;

    invoke-direct {v4, p0, v2}, Lahq$8;-><init>(Lahq;Landroid/view/View;)V

    invoke-virtual {v3, v4, v0, v1}, Lahw;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 638
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "canShowNotLoginWindow"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x1

    sput-boolean v0, Laoc;->a:Z

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc;->b:J

    .line 642
    return-void
.end method
