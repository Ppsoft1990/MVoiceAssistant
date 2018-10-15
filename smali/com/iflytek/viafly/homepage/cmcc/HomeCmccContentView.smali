.class public Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;
.super Landroid/widget/LinearLayout;
.source "HomeCmccContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Landroid/view/animation/Animation;

.field private F:Z

.field private G:Lake;

.field private H:Landroid/content/Context;

.field private I:Landroid/os/Handler;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field private e:Ljava/lang/String;

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final h:I

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Lcom/iflytek/base/skin/customView/XImageView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-string/jumbo v0, "CmccContentView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    .line 53
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->f:J

    .line 54
    const-string/jumbo v0, "--"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->g:Ljava/lang/String;

    .line 55
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->h:I

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    .line 88
    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->x:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->y:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->z:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->A:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->B:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->C:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->D:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->F:Z

    .line 106
    const-string/jumbo v0, "moreBtn"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->J:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "change"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->K:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "retryBtn"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->L:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "buyFlow"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->M:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "buyFee"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->N:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "flowControl"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->O:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "content"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "refresh"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->b:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "charge"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->c:Ljava/lang/String;

    .line 610
    new-instance v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$1;-><init>(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->d:Ljava/lang/Runnable;

    .line 119
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->H:Landroid/content/Context;

    .line 120
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Lorg/json/JSONObject;)V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 18
    .param p1, "orignalTime"    # Ljava/lang/String;
    .param p2, "isCache"    # Z

    .prologue
    .line 380
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 381
    const/4 v13, 0x0

    .line 421
    :goto_0
    return-object v13

    .line 383
    :cond_0
    const/4 v3, 0x0

    .line 384
    .local v3, "date":Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 386
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 390
    :goto_1
    if-nez v3, :cond_1

    .line 391
    const/4 v13, 0x0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v8

    .line 388
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 394
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "HH:mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 396
    .local v12, "time":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 397
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 398
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 399
    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 400
    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 402
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 404
    .local v4, "curL":J
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 405
    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 406
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 407
    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 408
    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 410
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 412
    .local v10, "retL":J
    sub-long v14, v4, v10

    const-wide/32 v16, 0x5265c00

    div-long v6, v14, v16

    .line 414
    .local v6, "diff":J
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_3

    .line 415
    const-wide/16 v14, 0x1

    cmp-long v13, v6, v14

    if-nez v13, :cond_2

    .line 416
    const-string/jumbo v13, "\u6628\u5929\u66f4\u65b0"

    goto/16 :goto_0

    .line 418
    :cond_2
    const-string/jumbo v13, "\u51e0\u5929\u524d\u66f4\u65b0"

    goto/16 :goto_0

    .line 421
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u66f4\u65b0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    .line 125
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setOrientation(I)V

    .line 126
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    .line 128
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 129
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 130
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030075

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 131
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const v3, 0x7f0b0355

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->v:Landroid/widget/LinearLayout;

    .line 134
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v3, 0x7f0b035a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->i:Landroid/widget/TextView;

    .line 137
    const v3, 0x7f0b035d

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    .line 140
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v3, 0x7f0b035f

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->k:Landroid/widget/TextView;

    .line 143
    const v3, 0x7f0b0360

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->l:Landroid/widget/TextView;

    .line 144
    const v3, 0x7f0b0362

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->m:Landroid/widget/TextView;

    .line 145
    const v3, 0x7f0b0356

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->q:Landroid/widget/TextView;

    .line 146
    const v3, 0x7f0b0358

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->r:Landroid/widget/TextView;

    .line 147
    const v3, 0x7f0b0359

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->u:Lcom/iflytek/base/skin/customView/XImageView;

    .line 148
    const v3, 0x7f0b035e

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->o:Landroid/widget/RelativeLayout;

    .line 149
    const v3, 0x7f0b035c

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->p:Landroid/widget/RelativeLayout;

    .line 151
    const v3, 0x7f0b035b

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->s:Landroid/widget/RelativeLayout;

    .line 152
    const v3, 0x7f0b0365

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->t:Landroid/widget/LinearLayout;

    .line 153
    const v3, 0x7f0b0366

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->n:Landroid/widget/TextView;

    .line 154
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->d()V

    .line 159
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_group"

    const-string/jumbo v2, "Fee"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v1, "d_click"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->H:Landroid/content/Context;

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90030"

    .line 269
    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 9
    .param p1, "orignalValue"    # Ljava/lang/String;
    .param p2, "preString"    # Ljava/lang/String;
    .param p3, "valueView"    # Landroid/widget/TextView;
    .param p4, "unitView"    # Landroid/widget/TextView;

    .prologue
    const/16 v6, 0x3e8

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x42c80000    # 100.0f

    .line 537
    if-nez p3, :cond_0

    .line 579
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string/jumbo v1, "--"

    .line 541
    .local v1, "resultValue":Ljava/lang/String;
    const-string/jumbo v3, "M"

    .line 543
    .local v3, "unitValue":Ljava/lang/String;
    const-string/jumbo v5, "--"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 544
    :cond_1
    const-string/jumbo v1, "--"

    .line 545
    const-string/jumbo v3, "M"

    .line 570
    :goto_1
    if-eqz p2, :cond_2

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    :cond_2
    if-nez p4, :cond_6

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 548
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 549
    .local v4, "value":F
    float-to-int v2, v4

    .line 550
    .local v2, "switchValue":I
    if-ge v2, v6, :cond_4

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-float v6, v4, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    const-string/jumbo v3, "M"

    .line 563
    :goto_2
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setLeftFlow(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 564
    .end local v2    # "switchValue":I
    .end local v4    # "value":F
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setLeftFlow(Ljava/lang/String;)V

    goto :goto_1

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "switchValue":I
    .restart local v4    # "value":F
    :cond_4
    if-lt v2, v6, :cond_5

    const v5, 0xfa000

    if-ge v2, v5, :cond_5

    .line 554
    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    .line 555
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-float v6, v4, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    const-string/jumbo v3, "G"

    goto :goto_2

    .line 558
    :cond_5
    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-float v6, v4, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    const-string/jumbo v3, "T"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 576
    .end local v2    # "switchValue":I
    .end local v4    # "value":F
    :cond_6
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    return-void
.end method

.method private f()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 426
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 427
    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 428
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 429
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 431
    return-object v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 525
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->F:Z

    monitor-exit v1

    return v0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 652
    invoke-static {}, Lmz;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 661
    invoke-static {}, Lmz;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x1

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 670
    invoke-static {}, Lmz;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x1

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 728
    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    .line 729
    .local v0, "changeOrderEvent":Laia;
    const-string/jumbo v1, "cmcc_category"

    invoke-virtual {v0, v1}, Laia;->b(Ljava/lang/String;)V

    .line 730
    const-string/jumbo v1, "Fee"

    invoke-virtual {v0, v1}, Laia;->a(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, v2}, Laia;->a(Z)V

    .line 732
    invoke-virtual {v0, v2}, Laia;->b(Z)V

    .line 733
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v1

    const-string/jumbo v2, "Fee"

    const-string/jumbo v3, "cmcc_category"

    invoke-virtual {v1, v2, v3}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 736
    return-void
.end method

.method private setRequesting(Z)V
    .locals 2
    .param p1, "requesting"    # Z

    .prologue
    .line 531
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->F:Z

    .line 533
    monitor-exit v1

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 582
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setRequesting(Z)V

    .line 588
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 24
    .param p1, "mJsContent"    # Lorg/json/JSONObject;

    .prologue
    .line 283
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setRequesting(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->d:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->d:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x7d0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    :cond_0
    if-nez p1, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "updateResult() : mJsContent is null"

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->i:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "updateTime"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const-string/jumbo v19, "updateTime"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setUpdateTimeString(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v19, "gprs"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 301
    .local v13, "jsFlow":Lorg/json/JSONObject;
    if-eqz v13, :cond_5

    .line 302
    const-string/jumbo v19, "left"

    const-string/jumbo v20, "--"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, "flow":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->k:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 308
    const-string/jumbo v19, "total"

    const-string/jumbo v20, "--"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 309
    .local v17, "total":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setTotalFlow(Ljava/lang/String;)V

    .line 316
    .end local v7    # "flow":Ljava/lang/String;
    .end local v17    # "total":Ljava/lang/String;
    :goto_1
    const-string/jumbo v19, "bill"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 317
    .local v12, "jsFee":Lorg/json/JSONObject;
    if-eqz v12, :cond_b

    .line 318
    const-string/jumbo v19, "balance"

    const-string/jumbo v20, "--"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 319
    .local v14, "leftFee":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updateResult: leftFee "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string/jumbo v19, "--"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->m:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "--"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :goto_2
    const-string/jumbo v19, "button"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 356
    .local v11, "jsChargeBill":Lorg/json/JSONObject;
    if-eqz v11, :cond_3

    .line 357
    const-string/jumbo v19, "url"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "chargeBillUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setChargeBillUrl(Ljava/lang/String;)V

    .line 366
    .end local v5    # "chargeBillUrl":Ljava/lang/String;
    .end local v11    # "jsChargeBill":Lorg/json/JSONObject;
    .end local v14    # "leftFee":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v4, 0x0

    .line 367
    .local v4, "bottomUrl":Ljava/lang/String;
    const-string/jumbo v19, "bottomButton"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 368
    .local v10, "jsBottomArr":Lorg/json/JSONArray;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 369
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 370
    .local v9, "jsBottom":Lorg/json/JSONObject;
    if-eqz v9, :cond_4

    .line 371
    const-string/jumbo v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .end local v9    # "jsBottom":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setDetailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    .end local v4    # "bottomUrl":Ljava/lang/String;
    .end local v10    # "jsBottomArr":Lorg/json/JSONArray;
    .end local v12    # "jsFee":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->k:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "--"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->l:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "M"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 325
    .restart local v12    # "jsFee":Lorg/json/JSONObject;
    .restart local v14    # "leftFee":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 326
    .local v18, "value":F
    const v19, 0x461c4000    # 10000.0f

    cmpl-float v19, v18, v19

    if-ltz v19, :cond_9

    .line 327
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x461c4000    # 10000.0f

    div-float v20, v18, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, "resultValue":Ljava/lang/String;
    const-string/jumbo v19, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 329
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "00"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 330
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    const-string/jumbo v21, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\u4e07"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 345
    .end local v16    # "resultValue":Ljava/lang/String;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setLeftCallFee(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->m:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const-string/jumbo v19, "used"

    const-string/jumbo v20, "--"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setUsedCallFee(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 348
    .end local v18    # "value":F
    :catch_0
    move-exception v6

    .line 349
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->m:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "--"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setLeftCallFee(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 332
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v16    # "resultValue":Ljava/lang/String;
    .restart local v18    # "value":F
    :cond_8
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\u4e07"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 334
    .end local v16    # "resultValue":Ljava/lang/String;
    :cond_9
    const-string/jumbo v19, "."

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 335
    const-string/jumbo v19, "."

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 336
    .local v8, "index":I
    invoke-virtual {v14, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v15

    .line 337
    .local v15, "len":I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-gt v15, v0, :cond_a

    .line 338
    const/16 v19, 0x0

    const-string/jumbo v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int v20, v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 340
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v20, v20, v18

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42c80000    # 100.0f

    div-float v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 341
    .restart local v16    # "resultValue":Ljava/lang/String;
    const/16 v19, 0x0

    const-string/jumbo v20, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto/16 :goto_4

    .line 363
    .end local v8    # "index":I
    .end local v14    # "leftFee":Ljava/lang/String;
    .end local v15    # "len":I
    .end local v16    # "resultValue":Ljava/lang/String;
    .end local v18    # "value":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->m:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "--"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public b()V
    .locals 2

    .prologue
    .line 595
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setRequesting(Z)V

    .line 596
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 598
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->E:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->f()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->E:Landroid/view/animation/Animation;

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 605
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v1, "clearRefreshAnimation: "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 680
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$2;-><init>(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 692
    invoke-static {}, Lmz;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    invoke-static {}, Lmz;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Lmz;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v1, "switchCmccLayout: not login"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->n:Landroid/widget/TextView;

    const-string/jumbo v1, "\u53bb\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v1, "switchCmccLayout: wx login but not bind"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->n:Landroid/widget/TextView;

    const-string/jumbo v1, "\u53bb\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 710
    :cond_2
    invoke-static {}, Lmz;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v1, "switchCmccLayout: cmcc login"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->n:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 718
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v1, "switchCmccLayout: not cmcc login"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->k()V

    goto :goto_0
.end method

.method public getChargeBillUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->y:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->x:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLeftCallFee()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->B:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLeftFlow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->A:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTotalFlow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->z:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUpdateTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->D:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUsedCallFee()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->C:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 171
    if-nez p1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->H:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    const-string/jumbo v3, "LX_100061"

    invoke-virtual {v2, v3}, Lwz;->a(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lmz;->m()Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    invoke-static {}, Lmz;->n()Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    invoke-static {}, Lmz;->o()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->t:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_2

    .line 185
    const-string/jumbo v2, "content"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->H:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v3

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->H:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v4, 0x0

    sget-object v5, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v6, "cmcc"

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->t:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_3

    .line 193
    const-string/jumbo v2, "content"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Ljava/lang/String;)V

    .line 195
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->t:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_4

    .line 200
    const-string/jumbo v2, "content"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Laoi;->a()Laoi;

    move-result-object v2

    invoke-virtual {v2}, Laoi;->c()V

    goto :goto_0

    .line 207
    :cond_4
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->H:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, "cm":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_5

    .line 209
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->H:Landroid/content/Context;

    const v3, 0x7f0c0127

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 214
    :cond_5
    invoke-static {}, Lmz;->l()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->t:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_6

    .line 215
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v3, "onClick mChargeBill "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string/jumbo v2, "charge"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->getChargeBillUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 219
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->getChargeBillUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->b(Ljava/lang/String;)V

    .line 223
    :cond_6
    invoke-static {}, Lmz;->l()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_8

    .line 225
    const-string/jumbo v2, "refresh"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v3, "onClick mRefresh "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 229
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v3, "is requesting"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    :cond_7
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 234
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->G:Lake;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->G:Lake;

    invoke-interface {v2, v4}, Lake;->a(Z)V

    goto/16 :goto_0

    .line 237
    :cond_8
    invoke-static {}, Lmz;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->s:Landroid/widget/RelativeLayout;

    if-ne p1, v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v3, "onClick mCmccLayout "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string/jumbo v2, "content"

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->A:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->B:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 244
    :cond_9
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->getDetailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 246
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->getDetailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :cond_a
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->g()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 251
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v3, "is requesting"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 255
    :cond_b
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 256
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->G:Lake;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->e:Ljava/lang/String;

    const-string/jumbo v3, "request data"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->G:Lake;

    invoke-interface {v2, v4}, Lake;->a(Z)V

    goto/16 :goto_0
.end method

.method public setChargeBillUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "mChargeBillUrl"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->y:Ljava/lang/String;

    .line 455
    monitor-exit v1

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCmccCardActionLs(Lake;)V
    .locals 0
    .param p1, "ls"    # Lake;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->G:Lake;

    .line 274
    return-void
.end method

.method public setDetailUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "detailUrl"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->x:Ljava/lang/String;

    .line 443
    monitor-exit v1

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLeftCallFee(Ljava/lang/String;)V
    .locals 2
    .param p1, "leftCallFee"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->B:Ljava/lang/String;

    .line 491
    monitor-exit v1

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLeftFlow(Ljava/lang/String;)V
    .locals 2
    .param p1, "leftFlow"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->A:Ljava/lang/String;

    .line 479
    monitor-exit v1

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTotalFlow(Ljava/lang/String;)V
    .locals 2
    .param p1, "totalFlow"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->z:Ljava/lang/String;

    .line 467
    monitor-exit v1

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUpdateTimeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "updateTimeString"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->D:Ljava/lang/String;

    .line 515
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUsedCallFee(Ljava/lang/String;)V
    .locals 2
    .param p1, "usedCallFee"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->C:Ljava/lang/String;

    .line 503
    monitor-exit v1

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
