.class public Lts;
.super Ljava/lang/Object;
.source "WXLoginUtil.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Ltt;

.field private l:Ltr;

.field private m:Lyn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, "WXLoginUtil"

    iput-object v0, p0, Lts;->a:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code"

    iput-object v0, p0, Lts;->d:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID"

    iput-object v0, p0, Lts;->e:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lts;->f:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lts;->g:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lts;->h:I

    .line 53
    const-string/jumbo v0, "access_token"

    iput-object v0, p0, Lts;->i:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "refresh_token"

    iput-object v0, p0, Lts;->j:Ljava/lang/String;

    .line 195
    new-instance v0, Lts$2;

    invoke-direct {v0, p0}, Lts$2;-><init>(Lts;)V

    iput-object v0, p0, Lts;->m:Lyn;

    .line 60
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lts;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lts;

    .prologue
    .line 40
    iget-object v0, p0, Lts;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lts;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lts;Ltr;)Ltr;
    .locals 0
    .param p0, "x0"    # Lts;
    .param p1, "x1"    # Ltr;

    .prologue
    .line 40
    iput-object p1, p0, Lts;->l:Ltr;

    return-object p1
.end method

.method static synthetic a(Lts;Ltt;)Ltt;
    .locals 0
    .param p0, "x0"    # Lts;
    .param p1, "x1"    # Ltt;

    .prologue
    .line 40
    iput-object p1, p0, Lts;->k:Ltt;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lts;->d:Ljava/lang/String;

    const-string/jumbo v2, "APPID"

    const-string/jumbo v3, "wxe849baa57d03c145"

    .line 160
    invoke-direct {p0, v3}, Lts;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lts;->d:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lts;->d:Ljava/lang/String;

    const-string/jumbo v2, "SECRET"

    const-string/jumbo v3, "ededc11ea3110dcf18ec45fe05150261"

    .line 162
    invoke-direct {p0, v3}, Lts;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lts;->d:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lts;->d:Ljava/lang/String;

    const-string/jumbo v2, "CODE"

    invoke-direct {p0, p1}, Lts;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lts;->d:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lts;->d:Ljava/lang/String;

    .line 165
    return-object v0
.end method

.method static synthetic b(Lts;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lts;

    .prologue
    .line 40
    iget-object v0, p0, Lts;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lts;->c:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 185
    move-object v1, p1

    .line 187
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 191
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lts;)Ltt;
    .locals 1
    .param p0, "x0"    # Lts;

    .prologue
    .line 40
    iget-object v0, p0, Lts;->k:Ltt;

    return-object v0
.end method

.method static synthetic d(Lts;)Lyn;
    .locals 1
    .param p0, "x0"    # Lts;

    .prologue
    .line 40
    iget-object v0, p0, Lts;->m:Lyn;

    return-object v0
.end method

.method static synthetic e(Lts;)Ltr;
    .locals 1
    .param p0, "x0"    # Lts;

    .prologue
    .line 40
    iget-object v0, p0, Lts;->l:Ltr;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lts;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "WXLoginUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLogin url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lts$1;

    invoke-direct {v2, p0, v0}, Lts$1;-><init>(Lts;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method public onEvent(Lti;)V
    .locals 4
    .param p1, "event"    # Lti;

    .prologue
    const/4 v3, 0x0

    .line 264
    if-nez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lts;->l:Ltr;

    if-eqz v1, :cond_0

    .line 274
    const-string/jumbo v1, "UserRealLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lts;->l:Ltr;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 276
    iput-object v3, p0, Lts;->l:Ltr;

    goto :goto_0

    .line 277
    :cond_2
    const-string/jumbo v1, "UserLoginFail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iput-object v3, p0, Lts;->l:Ltr;

    goto :goto_0
.end method
