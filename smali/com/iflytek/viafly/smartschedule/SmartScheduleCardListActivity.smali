.class public Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;
.super Landroid/app/Activity;
.source "SmartScheduleCardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$MyScollView;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private ls:Lcom/iflytek/viafly/smartschedule/CardActionListener;

.field private mContentList:Landroid/widget/LinearLayout;

.field private mFirstView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

.field private mSecondView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string/jumbo v0, "SmartScheduleCardListActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    .line 191
    new-instance v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;-><init>(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->ls:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    return v0
.end method

.method static synthetic access$110(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    return v0
.end method

.method private getShowAnimation(FFI)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "interval"    # I

    .prologue
    const/4 v4, 0x0

    .line 275
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAnimation() |fromXDelta= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " toXDelta= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " interval= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 278
    .local v0, "translateAnimation":Landroid/view/animation/Animation;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 280
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 281
    return-object v0
.end method

.method private initView()V
    .locals 14

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmccgoto_smart_card_activity"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 91
    :cond_0
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "data size is 0"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 93
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->overridePendingTransition(II)V

    .line 173
    :goto_1
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    .line 105
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v5, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->setContentView(Landroid/view/View;)V

    .line 107
    const/high16 v8, -0x5a000000

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 108
    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    .line 111
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    const/4 v9, 0x2

    if-gt v8, v9, :cond_8

    .line 115
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    const/4 v8, 0x1

    iget v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    if-ne v8, v9, :cond_7

    .line 117
    new-instance v9, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->ls:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    invoke-direct {v9, p0, v8, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;Lcom/iflytek/viafly/smartschedule/CardActionListener;)V

    iput-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mFirstView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    .line 123
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mFirstView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mFirstView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    invoke-direct {p0, v9, v10, v11}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getShowAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSecondView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    if-eqz v8, :cond_3

    .line 126
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSecondView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSecondView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    const/high16 v9, 0x44c80000    # 1600.0f

    const/4 v10, 0x0

    const/16 v11, 0x320

    invoke-direct {p0, v9, v10, v11}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getShowAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    :cond_3
    new-instance v8, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$1;

    invoke-direct {v8, p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$1;-><init>(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    :cond_4
    :goto_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, "typeString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    if-ge v2, v8, :cond_a

    .line 158
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 159
    if-eqz v2, :cond_5

    .line 160
    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 118
    .end local v2    # "i":I
    .end local v7    # "typeString":Ljava/lang/StringBuilder;
    :cond_7
    const/4 v8, 0x2

    iget v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    if-ne v8, v9, :cond_2

    .line 119
    new-instance v9, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->ls:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    invoke-direct {v9, p0, v8, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;Lcom/iflytek/viafly/smartschedule/CardActionListener;)V

    iput-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mFirstView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    .line 120
    new-instance v9, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->ls:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    invoke-direct {v9, p0, v8, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;Lcom/iflytek/viafly/smartschedule/CardActionListener;)V

    iput-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSecondView:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    goto/16 :goto_2

    .line 140
    :cond_8
    iget v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_4

    .line 141
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    invoke-static {v10, v12, v13}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    new-instance v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$MyScollView;

    invoke-direct {v3, p0, p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$MyScollView;-><init>(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;Landroid/content/Context;)V

    .line 144
    .local v3, "mScroll":Landroid/widget/ScrollView;
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    iget v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mSize:I

    add-int/lit8 v2, v8, -0x1

    .restart local v2    # "i":I
    :goto_5
    const/4 v8, -0x1

    if-le v2, v8, :cond_9

    .line 148
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    iget-object v11, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->ls:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    invoke-direct {v10, p0, v8, v11}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;Lcom/iflytek/viafly/smartschedule/CardActionListener;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 151
    :cond_9
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->mContentList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 166
    .end local v3    # "mScroll":Landroid/widget/ScrollView;
    .restart local v7    # "typeString":Ljava/lang/StringBuilder;
    :cond_a
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "typeRes":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "d_schedule_name"

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v8

    invoke-virtual {v8, v4}, Lxm;->b(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 170
    .end local v2    # "i":I
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "typeRes":Ljava/lang/String;
    .end local v7    # "typeString":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v1

    .line 171
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->initView()V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->dismissBigView()V

    .line 67
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 54
    invoke-virtual {p0, v0, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->overridePendingTransition(II)V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 60
    return-void
.end method
