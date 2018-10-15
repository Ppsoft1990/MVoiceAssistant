.class public Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "CategoryManagerEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$MyHandler;
    }
.end annotation


# static fields
.field public static final NUMBER_PER_LINE:I = 0x4


# instance fields
.field private final MSG_UNCONCERED_ADD:I

.field private final TAG:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private homeCardTypeBizHelper:Laid;

.field private isLoading:Z

.field private lodingPage:Landroid/widget/LinearLayout;

.field private mCancle:Lcom/iflytek/base/skin/customView/XImageView;

.field private mConcerned:Landroid/widget/LinearLayout;

.field private mConcernedDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridviewConcerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

.field private mGridviewUnoncerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

.field private mIntent:Landroid/content/Intent;

.field private mLoadingImg:Lcom/iflytek/base/skin/customView/XImageView;

.field private mOk:Landroid/widget/TextView;

.field mResultListener:Lyn;

.field private mUnoncerned:Landroid/widget/LinearLayout;

.field private mUnoncernedDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 45
    const-string/jumbo v0, "CategoryManagerEditActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->MSG_UNCONCERED_ADD:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->isLoading:Z

    .line 230
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;-><init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mResultListener:Lyn;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->parseResult(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->removeDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->updateUnconceredView()V

    return-void
.end method

.method private createAnimation()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 315
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 316
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 317
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 318
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 319
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 320
    return-object v0
.end method

.method private getRequestType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string/jumbo v0, "ListenBook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "listenbook"

    .line 179
    :goto_0
    return-object v0

    .line 172
    :cond_0
    const-string/jumbo v0, "Food"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string/jumbo v0, "restaurant"

    goto :goto_0

    .line 174
    :cond_1
    const-string/jumbo v0, "News"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string/jumbo v0, "news"

    goto :goto_0

    .line 176
    :cond_2
    const-string/jumbo v0, "Music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    const-string/jumbo v0, "music"

    goto :goto_0

    .line 179
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    .line 89
    const-string/jumbo v0, "CategoryManagerEditActivity"

    const-string/jumbo v1, "initView"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mCancle:Lcom/iflytek/base/skin/customView/XImageView;

    .line 91
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mOk:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcerned:Landroid/widget/LinearLayout;

    .line 93
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncerned:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->lodingPage:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mLoadingImg:Lcom/iflytek/base/skin/customView/XImageView;

    .line 96
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mIntent:Landroid/content/Intent;

    .line 97
    const-string/jumbo v0, "CategoryManagerEditActivity"

    const-string/jumbo v1, "getIntent"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 100
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "concerned"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    .line 101
    const-string/jumbo v0, "groupId"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->groupId:Ljava/lang/String;

    .line 103
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->loadNet()V

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mCancle:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->lodingPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    .line 110
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IILcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewConcerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcerned:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewConcerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IILcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewUnoncerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncerned:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewUnoncerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->showDialog()V

    .line 117
    return-void
.end method

.method private loadNet()V
    .locals 3

    .prologue
    .line 80
    new-instance v1, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$MyHandler;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$MyHandler;-><init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->uiHandler:Landroid/os/Handler;

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->groupId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->getRequestType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "requestId":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->homeCardTypeBizHelper:Laid;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Laid;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mResultListener:Lyn;

    invoke-direct {v1, p0, v2}, Laid;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->homeCardTypeBizHelper:Laid;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->homeCardTypeBizHelper:Laid;

    invoke-virtual {v1, v0}, Laid;->a(Ljava/lang/String;)J

    .line 86
    return-void
.end method

.method private parseResult(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 267
    const-string/jumbo v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 268
    .local v3, "resultObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "categorys"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 269
    .local v1, "categorys":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 280
    :cond_0
    return-void

    .line 272
    :cond_1
    const/4 v2, 0x0

    .local v2, "length":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 273
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    invoke-direct {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;-><init>()V

    .line 275
    .local v0, "categoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->setName(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->setId(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const-string/jumbo v4, "CategoryManagerEditActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private removeDialog()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->lodingPage:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mLoadingImg:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->isLoading:Z

    .line 311
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->lodingPage:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mLoadingImg:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->isLoading:Z

    .line 305
    return-void
.end method

.method private updateUnconceredView()V
    .locals 7

    .prologue
    .line 183
    const-string/jumbo v5, "CategoryManagerEditActivity"

    const-string/jumbo v6, "updateUnconceredView"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 186
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 187
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "netId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 189
    .local v3, "isHave":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 193
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 194
    const/4 v3, 0x1

    .line 198
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    :cond_3
    if-nez v3, :cond_0

    .line 199
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    new-instance v1, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;

    invoke-direct {v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;-><init>()V

    .line 202
    .local v1, "categoryChangeEvent":Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->setGroupId(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->setContentId(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    invoke-virtual {v5, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 209
    .end local v1    # "categoryChangeEvent":Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;
    .end local v3    # "isHave":Z
    .end local v4    # "netId":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_2
    if-ltz v2, :cond_9

    .line 210
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v4

    .line 211
    .restart local v4    # "netId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 212
    .restart local v3    # "isHave":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 209
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 215
    :cond_6
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 216
    .restart local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 217
    const/4 v3, 0x1

    .line 221
    .end local v0    # "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    :cond_8
    if-eqz v3, :cond_5

    .line 222
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 226
    .end local v2    # "i":I
    .end local v3    # "isHave":Z
    .end local v4    # "netId":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewConcerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->updateCategoryData(Ljava/util/List;)V

    .line 227
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewUnoncerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->updateCategoryData(Ljava/util/List;)V

    .line 228
    return-void
.end method


# virtual methods
.method public itemClick(Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;)V
    .locals 4
    .param p1, "cardCategoryItem"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .prologue
    .line 145
    const-string/jumbo v1, "CategoryManagerEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewConcerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->updateCategoryData(Ljava/util/List;)V

    .line 151
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewUnoncerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewUnoncerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->updateCategoryData(Ljava/util/List;)V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewUnoncerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewUnoncerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mUnoncernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->updateCategoryData(Ljava/util/List;)V

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mGridviewConcerned:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView;->updateCategoryData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CategoryManagerEditActivity"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onBackPressed()V

    .line 326
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->isLoading:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->finish()V

    .line 329
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-void

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->finish()V

    goto :goto_0

    .line 126
    :pswitch_2
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;

    invoke-direct {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;-><init>()V

    .line 127
    .local v0, "categoryChangeEvent":Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->setGroupId(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mConcernedDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->setCardCategoryItems(Ljava/util/List;)V

    .line 129
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->finish()V

    goto :goto_0

    .line 133
    .end local v0    # "categoryChangeEvent":Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;
    :pswitch_3
    const-string/jumbo v1, "CategoryManagerEditActivity"

    const-string/jumbo v2, "click more view"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x7f0b009d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->setContentView(I)V

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->setTitleBarVisible(Z)V

    .line 73
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->initView()V

    .line 74
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
