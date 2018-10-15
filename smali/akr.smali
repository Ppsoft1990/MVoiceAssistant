.class public Lakr;
.super Lajj;
.source "ListenBookRecommendPresenter.java"


# instance fields
.field private b:Lajk;

.field private c:Landroid/content/Context;

.field private d:Lakq;

.field private e:Lakn;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler$Callback;

.field private i:Lyn;


# direct methods
.method public constructor <init>(Lajk;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "view"    # Lajk;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Lajj;-><init>()V

    .line 81
    new-instance v0, Lakr$1;

    invoke-direct {v0, p0}, Lakr$1;-><init>(Lakr;)V

    iput-object v0, p0, Lakr;->h:Landroid/os/Handler$Callback;

    .line 94
    new-instance v0, Lakr$2;

    invoke-direct {v0, p0}, Lakr$2;-><init>(Lakr;)V

    iput-object v0, p0, Lakr;->i:Lyn;

    .line 53
    iput-object p1, p0, Lakr;->b:Lajk;

    .line 54
    iput-object p3, p0, Lakr;->c:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lakr;->g:Ljava/lang/String;

    .line 56
    new-instance v0, Lakq;

    iget-object v1, p0, Lakr;->c:Landroid/content/Context;

    iget-object v2, p0, Lakr;->i:Lyn;

    invoke-direct {v0, v1, v2}, Lakq;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lakr;->d:Lakq;

    .line 57
    new-instance v0, Lakn;

    invoke-direct {v0}, Lakn;-><init>()V

    iput-object v0, p0, Lakr;->e:Lakn;

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lakr;->h:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lakr;->f:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private a(Lako;)Lako;
    .locals 8
    .param p1, "mCurrlistenBookRecommendResult"    # Lako;

    .prologue
    .line 145
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lako;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 146
    new-instance v2, Lako;

    invoke-direct {v2}, Lako;-><init>()V

    .line 147
    .local v2, "usefulListenBookRecommendResult":Lako;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "usefulRecommendItemList":Ljava/util/List;, "Ljava/util/List<Lakp;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lako;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 149
    invoke-virtual {p1}, Lako;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakp;

    .line 150
    .local v1, "recommendItemResult":Lakp;
    const-string/jumbo v4, "ListenBookRecommendPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u672c\u5730\u65f6\u95f4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string/jumbo v4, "ListenBookRecommendPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u542c\u4e66\u63a8\u8350\u4f4d\u6709\u6548\u65f6\u95f4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lakp;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v1}, Lakp;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 148
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1}, Lako;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    .end local v1    # "recommendItemResult":Lakp;
    :cond_1
    invoke-virtual {v2, v3}, Lako;->a(Ljava/util/List;)V

    .line 158
    invoke-direct {p0, v2}, Lakr;->b(Lako;)V

    .line 161
    .end local v0    # "i":I
    .end local v2    # "usefulListenBookRecommendResult":Lako;
    .end local v3    # "usefulRecommendItemList":Ljava/util/List;, "Ljava/util/List<Lakp;>;"
    :goto_2
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private a()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method static synthetic a(Lakr;)V
    .locals 0
    .param p0, "x0"    # Lakr;

    .prologue
    .line 39
    invoke-direct {p0}, Lakr;->a()V

    return-void
.end method

.method static synthetic a(Lakr;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lakr;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lakr;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lakr;)Lajk;
    .locals 1
    .param p0, "x0"    # Lakr;

    .prologue
    .line 39
    iget-object v0, p0, Lakr;->b:Lajk;

    return-object v0
.end method

.method private b(Lako;)V
    .locals 3
    .param p1, "currlistenBookRecommendResult"    # Lako;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lako;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 172
    const-string/jumbo v1, "ListenBookRecommendPresenter"

    const-string/jumbo v2, "\u7f13\u5b58\u542c\u4e66\u63a8\u8350\u4f4d\u6570\u636e"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Lako;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "CacheRecommendData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_MAINPAGE_LISTENBOOK_RECOMMEND_DATA"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0    # "CacheRecommendData":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic b(Lakr;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lakr;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lakr;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lako;
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lakr;->e:Lakn;

    invoke-virtual {v1, p1}, Lakn;->a(Ljava/lang/String;)Lako;

    move-result-object v0

    .line 124
    .local v0, "listenBookRecommendResult":Lako;
    invoke-direct {p0, v0}, Lakr;->a(Lako;)Lako;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lako;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 128
    .end local v0    # "listenBookRecommendResult":Lako;
    :goto_0
    return-object v0

    .restart local v0    # "listenBookRecommendResult":Lako;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 73
    iput-object p1, p0, Lakr;->a:Lail;

    .line 74
    return-void
.end method

.method public a(Lakp;I)V
    .locals 2
    .param p1, "recommendItemResult"    # Lakp;
    .param p2, "position"    # I

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lakr;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100085"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lakr;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lakp;->c()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lakp;->b()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {p0, v0, v1}, Lakr;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    const-string/jumbo v1, "ListenBookRecommendPresenter"

    const-string/jumbo v2, "appendFtLog | entry or id is null or empty"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v1, "d_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lakr;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT89604"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lakr;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/16 v0, 0x3ea

    invoke-virtual {p0}, Lakr;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lakr;->a(ILjava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lakr;->d:Lakq;

    invoke-virtual {v0}, Lakq;->a()J

    goto :goto_0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PictureRecommend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakr;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
