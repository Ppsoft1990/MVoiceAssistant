.class public Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "TextEventCardView.java"

# interfaces
.implements Lajk;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/textevent/TextEventCardView$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamd;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private final p:J

.field private final q:I

.field private final r:I

.field private final s:I

.field private t:Lamc;

.field private u:Landroid/os/Handler;

.field private v:Landroid/widget/LinearLayout;

.field private w:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 43
    const-string/jumbo v0, "TextEventCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->o:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->p:J

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->q:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->r:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->s:I

    .line 53
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->x:Z

    .line 55
    iput v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->y:I

    .line 56
    iput v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->z:I

    .line 57
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->A:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    .line 65
    const-string/jumbo v0, "TextEventCardView"

    const-string/jumbo v1, "TextEventCardView\u5361\u7247\u521b\u5efa"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->g()V

    .line 67
    return-void
.end method

.method private a(II)I
    .locals 1
    .param p1, "currentPosition"    # I
    .param p2, "textEventSize"    # I

    .prologue
    .line 267
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .prologue
    .line 41
    iget v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->y:I

    return v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->y:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a(II)I

    move-result v0

    return v0
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 9
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 122
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 123
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 124
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 125
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    .local v5, "obj":Lorg/json/JSONObject;
    const-string/jumbo v7, "title"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "title":Ljava/lang/String;
    const-string/jumbo v7, "clickurl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "clickUrl":Ljava/lang/String;
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 130
    new-instance v4, Lamd;

    invoke-direct {v4}, Lamd;-><init>()V

    .line 131
    .local v4, "mTextEvent":Lamd;
    invoke-virtual {v4, v6}, Lamd;->b(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v4, v0}, Lamd;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v4, v3}, Lamd;->c(Ljava/lang/String;)V

    .line 134
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v4    # "mTextEvent":Lamd;
    :cond_0
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 140
    .end local v0    # "clickUrl":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "title":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->z:I

    .line 142
    iget v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->z:I

    if-lez v7, :cond_4

    .line 143
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    if-eqz v7, :cond_2

    .line 144
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->b()V

    .line 156
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 124
    .restart local v0    # "clickUrl":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "title":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "clickUrl":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "title":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    if-eqz v7, :cond_2

    .line 149
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TextEventCardView"

    const-string/jumbo v8, "updateBannerView exception "

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .prologue
    .line 41
    iget v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->z:I

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->w:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->o()V

    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->v:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private o()V
    .locals 6

    .prologue
    .line 205
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->t:Lamc;

    invoke-virtual {v0}, Lamc;->g()V

    .line 93
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 277
    const-string/jumbo v1, "TextEventCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-nez p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    :try_start_0
    sget-object v1, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "activity_resume"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "handleEvent exception"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "activity_stop"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->n()V

    goto :goto_0

    .line 292
    :pswitch_2
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "on_page_show"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->f()V

    goto :goto_0

    .line 296
    :pswitch_3
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "on_page_dismiss"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->n()V

    goto :goto_0

    .line 300
    :pswitch_4
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "on_page_pause"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->n()V

    goto :goto_0

    .line 304
    :pswitch_5
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "on_page_resume"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->f()V

    goto :goto_0

    .line 308
    :pswitch_6
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "activity_destory"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->c()V

    goto :goto_0

    .line 316
    :pswitch_7
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->A:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->t:Lamc;

    if-eqz v1, :cond_3

    .line 317
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "network_changed, need request again"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->t:Lamc;

    invoke-virtual {v1}, Lamc;->g()V

    goto/16 :goto_0

    .line 320
    :cond_3
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "network_changed, not need request again"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 325
    :pswitch_8
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 282
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
        :pswitch_8
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string/jumbo v2, "TextEventCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateData |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "arraydata":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 107
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a(Lorg/json/JSONArray;)V

    .line 114
    .end local v0    # "arraydata":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 109
    .restart local v0    # "arraydata":Lorg/json/JSONArray;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "arraydata":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "TextEventCardView"

    const-string/jumbo v3, "updateData exception "

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 238
    iget v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->z:I

    if-le v0, v1, :cond_0

    .line 240
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->x:Z

    .line 241
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->o()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->x:Z

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 71
    new-instance v2, Lamc;

    invoke-direct {v2, p0}, Lamc;-><init>(Lajk;)V

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->t:Lamc;

    .line 72
    new-instance v2, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView$a;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView$a;-><init>(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)V

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->u:Landroid/os/Handler;

    .line 73
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300a8

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 75
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a(Landroid/widget/LinearLayout;)V

    .line 76
    const v2, 0x7f0b0461

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->v:Landroid/widget/LinearLayout;

    .line 77
    const v2, 0x7f0b0463

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->w:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    .line 78
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->w:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 220
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 222
    :cond_0
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "MotionEvent.ACTION_UP"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->x:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->b()V

    .line 229
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 224
    :cond_2
    if-nez v0, :cond_1

    .line 225
    const-string/jumbo v1, "TextEventCardView"

    const-string/jumbo v2, "MotionEvent.ACTION_DOWN"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->x:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->c()V

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->b()V

    .line 344
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->c()V

    .line 352
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 161
    const-string/jumbo v1, "TextEventCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick\u70b9\u51fb\u8df3\u8f6c\u7f51\u9875"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->B:Ljava/util/List;

    iget v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->y:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamd;

    .line 163
    .local v0, "textEvent":Lamd;
    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->d(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->t:Lamc;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lamc;->a(Lamd;Landroid/content/Context;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->t:Lamc;

    invoke-virtual {v0, p1}, Lamc;->a(Lail;)V

    .line 98
    return-void
.end method
