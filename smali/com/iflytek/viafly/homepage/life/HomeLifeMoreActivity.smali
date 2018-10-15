.class public Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
.source "HomeLifeMoreActivity.java"

# interfaces
.implements Laku$a;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;


# instance fields
.field a:Laku;

.field private final b:Ljava/lang/String;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final o:I

.field private final p:Ljava/lang/String;

.field private final q:I

.field private r:Z

.field private s:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

.field private final t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lakv;

.field private w:Lyn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;-><init>()V

    .line 49
    const-string/jumbo v0, "HomeLifeMoreActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->b:Ljava/lang/String;

    .line 62
    const/16 v0, 0x9

    iput v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->o:I

    .line 63
    const-string/jumbo v0, "LX"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->p:Ljava/lang/String;

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->q:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->r:Z

    .line 69
    const-string/jumbo v0, "045002"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->t:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->u:Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity$1;-><init>(Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->w:Lyn;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;)V
    .locals 5
    .param p1, "item"    # Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .prologue
    .line 196
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 197
    .local v0, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    invoke-direct {v1, p0, p1, p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;Lcom/iflytek/viafly/homepage/life/HomeLifeItemView$a;)V

    .line 198
    .local v1, "view":Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->f()Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_plug:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    if-ne v2, v3, :cond_0

    .line 201
    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->s:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    .line 203
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->v:Lakv;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lakv;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->w:Lyn;

    invoke-direct {v0, p0, v1}, Lakv;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->v:Lakv;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->v:Lakv;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakv;->a(Ljava/lang/String;)J

    .line 103
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->b(Ljava/lang/String;)Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;

    move-result-object v0

    .line 347
    .local v0, "homeLifeModel":Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v1

    invoke-virtual {v1}, Lakw;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v1

    invoke-virtual {v1}, Lakw;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->n:Ljava/util/List;

    .line 353
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity$2;-><init>(Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->f()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->m:Ljava/util/List;

    .line 108
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .line 109
    .local v1, "item":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;)V

    goto :goto_0

    .line 112
    .end local v1    # "item":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->h()V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->s:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->r:Z

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->s:Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;

    iget-boolean v3, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->r:Z

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/life/HomeLifeItemView;->a(Z)V

    .line 120
    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Laku;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->n:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Laku;-><init>(Landroid/content/Context;Ljava/util/List;Laku$a;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a:Laku;

    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a:Laku;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.CALL_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a()Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;

    move-result-object v0

    .line 187
    .local v0, "homeLifeModel":Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v1

    invoke-virtual {v1}, Lakw;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->n:Ljava/util/List;

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->n:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 191
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->g()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->n:Ljava/util/List;

    .line 193
    :cond_2
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 206
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 207
    .local v0, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, "layout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
    .locals 7

    .prologue
    .line 286
    new-instance v2, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;

    invoke-direct {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;-><init>()V

    .line 287
    .local v2, "homeLifeModel":Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "cacheData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 290
    const/4 v3, 0x0

    .line 292
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "jsonObject":Lorg/json/JSONObject;
    move-object v3, v4

    .line 296
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a(Lorg/json/JSONObject;)Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;

    move-result-object v2

    .line 298
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 299
    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v5

    invoke-virtual {v5}, Lakw;->a()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 300
    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 301
    :cond_0
    const-string/jumbo v5, ""

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a(Ljava/lang/String;)V

    .line 306
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object v2

    .line 293
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HomeLifeMoreActivity"

    const-string/jumbo v6, "jsonObject Exception"

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 303
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->u:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;)V
    .locals 4
    .param p1, "id"    # Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    .prologue
    const/4 v3, 0x0

    .line 159
    sget-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_speak:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    if-ne p1, v0, :cond_1

    .line 161
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100072"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT69101"

    invoke-virtual {v0, v1, v3}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->f()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_smart:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    if-ne p1, v0, :cond_0

    .line 167
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "smarthome"

    const-string/jumbo v2, "LX_100009"

    invoke-static {v1, v2}, Lwj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT69105"

    invoke-virtual {v0, v1, v3}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->r()V

    .line 172
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->finish()V

    .line 174
    const/4 v0, 0x0

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;I)V
    .locals 5
    .param p1, "homeLifeServiceItem"    # Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    .param p2, "position"    # I

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 139
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwz;->a(Ljava/lang/String;)V

    .line 143
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_position"

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v2, "d_id"

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v2, "d_scene"

    const-string/jumbo v3, "main"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT89001"

    .line 148
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    invoke-static {}, Laod;->a()Laod;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laod;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "mergeUrl":Ljava/lang/String;
    const-string/jumbo v2, "HomeLifeMoreActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mergeUrl nor :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_LIFE_DATA"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 383
    :goto_0
    return-object v3

    .line 366
    :cond_0
    const/4 v3, 0x0

    .line 368
    .local v3, "netHomeLifeModel":Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
    const/4 v1, 0x0

    .line 369
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a(Lorg/json/JSONObject;)Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;

    move-result-object v3

    .line 373
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 374
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v5

    invoke-virtual {v5}, Lakw;->a()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    move-object v3, v4

    .line 375
    goto :goto_0

    .line 378
    :cond_2
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 380
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    const-string/jumbo v5, "HomeLifeMoreActivity"

    const-string/jumbo v6, "Date progress Exception"

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 381
    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_LIFE_DATA"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;I)V
    .locals 1
    .param p1, "homeLifeServiceItem"    # Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    .param p2, "position"    # I

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->f()Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;)V

    .line 215
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->finish()V

    .line 390
    const/4 v0, 0x0

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->overridePendingTransition(II)V

    .line 391
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 242
    :sswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->finish()V

    .line 244
    const v1, 0x7f040004

    invoke-virtual {p0, v3, v1}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 247
    :sswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->e:Landroid/widget/TextView;

    const-string/jumbo v2, "#2076EA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v2, "#EAE8F4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->i:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 259
    :sswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v2, "#2076EA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->e:Landroid/widget/TextView;

    const-string/jumbo v2, "#EAE8F4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->f:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->i:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 272
    :sswitch_3
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100074"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT69104"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "EXTRA_ENTRY"

    const-string/jumbo v2, "home_title_left"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b003a -> :sswitch_1
        0x7f0b003d -> :sswitch_2
        0x7f0b0041 -> :sswitch_3
        0x7f0b0043 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c:Landroid/widget/LinearLayout;

    .line 78
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->d:Landroid/widget/GridView;

    .line 79
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->e:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->h:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->k:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 82
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->l:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->f:Landroid/view/View;

    .line 84
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->i:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->k:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->g:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->j:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->g()V

    .line 92
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->d()V

    .line 93
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->e()V

    .line 94
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/life/HomeLifeMoreActivity;->c()V

    .line 96
    return-void
.end method
