.class public Lanb;
.super Ljava/lang/Object;
.source "BookShareModel.java"


# instance fields
.field private a:Lana;

.field private b:Lana;

.field private c:Lamq;

.field private d:Ljava/lang/Object;

.field private e:Lyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lamq;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lamq;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanb;->d:Ljava/lang/Object;

    .line 70
    new-instance v0, Lanb$1;

    invoke-direct {v0, p0}, Lanb$1;-><init>(Lanb;)V

    iput-object v0, p0, Lanb;->e:Lyn;

    .line 36
    iput-object p2, p0, Lanb;->c:Lamq;

    .line 37
    new-instance v0, Lana;

    const-string/jumbo v1, "1005"

    iget-object v2, p0, Lanb;->e:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lana;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lanb;->a:Lana;

    .line 38
    new-instance v0, Lana;

    const-string/jumbo v1, "1006"

    iget-object v2, p0, Lanb;->e:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lana;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lanb;->b:Lana;

    .line 39
    return-void
.end method

.method static synthetic a(Lanb;I)I
    .locals 1
    .param p0, "x0"    # Lanb;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lanb;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lanb;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lanb;

    .prologue
    .line 25
    iget-object v0, p0, Lanb;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lanb;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lanb;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lanb;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    const/16 v7, 0x3f3

    .line 137
    const-string/jumbo v5, "BookShareModel"

    const-string/jumbo v6, "handleShareLinkResult success"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string/jumbo v5, "result"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 140
    .local v0, "result":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0, v7}, Lanb;->a(I)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string/jumbo v5, "shareinfo"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 147
    .local v1, "shareInfo":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 148
    const-string/jumbo v5, "BookShareModel"

    const-string/jumbo v6, "handleShareLinkResult systemMark is not null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string/jumbo v5, "weixinfriends"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "wxFrendsUrl":Ljava/lang/String;
    const-string/jumbo v5, "weixinfriendcircle"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "wxCircle":Ljava/lang/String;
    const-string/jumbo v5, "sinaweibo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "weibo":Ljava/lang/String;
    iget-object v5, p0, Lanb;->c:Lamq;

    if-eqz v5, :cond_0

    .line 155
    iget-object v5, p0, Lanb;->c:Lamq;

    invoke-virtual {v5, v4, v3, v2}, Lamq;->onShareLinkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v2    # "weibo":Ljava/lang/String;
    .end local v3    # "wxCircle":Ljava/lang/String;
    .end local v4    # "wxFrendsUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v7}, Lanb;->a(I)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 176
    const/16 v0, 0x3e9

    .line 178
    .local v0, "errorCode":I
    packed-switch p1, :pswitch_data_0

    .line 189
    :goto_0
    return v0

    .line 180
    :pswitch_0
    const/16 v0, 0x3f3

    .line 181
    goto :goto_0

    .line 183
    :pswitch_1
    const/16 v0, 0x3f4

    .line 184
    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lanb;)Lamq;
    .locals 1
    .param p0, "x0"    # Lanb;

    .prologue
    .line 25
    iget-object v0, p0, Lanb;->c:Lamq;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v0, "BookShareModel"

    const-string/jumbo v1, "reportShareResult "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-wide/16 v0, -0x1

    .line 66
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lanb;->b:Lana;

    invoke-virtual {v0, p1, p2}, Lana;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterId"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string/jumbo v0, "BookShareModel"

    const-string/jumbo v1, "getShareLinkRequest "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    const-wide/16 v0, -0x1

    .line 52
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lanb;->a:Lana;

    invoke-virtual {v0, p1, p2, p3}, Lana;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lanb;->c:Lamq;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lanb;->c:Lamq;

    invoke-virtual {v0, p1}, Lamq;->onError(I)V

    .line 167
    :cond_0
    return-void
.end method
