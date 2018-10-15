.class public Lalc;
.super Lajj;
.source "ListenWellCardPresenter.java"


# instance fields
.field b:Lyn;

.field private c:Lale;

.field private d:Lajk;

.field private e:Lalb;

.field private f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "mvpView"    # Lajk;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "contentId"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lajj;-><init>()V

    .line 78
    new-instance v0, Lalc$1;

    invoke-direct {v0, p0}, Lalc$1;-><init>(Lalc;)V

    iput-object v0, p0, Lalc;->b:Lyn;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lalc;->g:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lalc;->h:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lalc;->i:I

    .line 35
    iput-object p3, p0, Lalc;->f:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lalc;->d:Lajk;

    .line 37
    new-instance v0, Lalb;

    iget-object v1, p0, Lalc;->b:Lyn;

    invoke-direct {v0, p2, v1}, Lalb;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lalc;->e:Lalb;

    .line 38
    return-void
.end method

.method static synthetic a(Lalc;)Lajk;
    .locals 1
    .param p0, "x0"    # Lalc;

    .prologue
    .line 26
    iget-object v0, p0, Lalc;->d:Lajk;

    return-object v0
.end method

.method static synthetic a(Lalc;Lale;)Lale;
    .locals 0
    .param p0, "x0"    # Lalc;
    .param p1, "x1"    # Lale;

    .prologue
    .line 26
    iput-object p1, p0, Lalc;->c:Lale;

    return-object p1
.end method

.method static synthetic a(Lalc;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalc;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lalc;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lalc;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalc;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lalc;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 117
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 133
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return v4

    .line 121
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v5, "errorCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "success"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    const/4 v4, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const-string/jumbo v5, "999999"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "000006"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "037001"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "037002"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 128
    :cond_3
    const-string/jumbo v5, "ListenWellCardPresenter"

    const-string/jumbo v6, "errorCode\u975e000000 \u6216\u8005 status\u975esuccess"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "ListenWellCardPresenter"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lalc;->c:Lale;

    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lalc;->c:Lale;

    invoke-virtual {v1}, Lale;->a()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1, v0}, Lalc;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 70
    iput-object p1, p0, Lalc;->a:Lail;

    .line 71
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lalc;->c:Lale;

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lalc;->c:Lale;

    invoke-virtual {v1}, Lale;->b()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1, v0}, Lalc;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lalc;->e:Lalb;

    invoke-virtual {v0}, Lalb;->a()J

    .line 66
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "YueTingKa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
