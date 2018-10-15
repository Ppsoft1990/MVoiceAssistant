.class public Lcom/migu/voiceads/MIGUVideoAd;
.super Ljava/lang/Object;


# static fields
.field private static e:Lorg/json/JSONObject;


# instance fields
.field protected a:Lcom/migu/voiceads/a/a;

.field protected b:Landroid/content/Context;

.field c:Lcom/migu/voiceads/utils/j$a;

.field d:Lcom/migu/voiceads/utils/j$a;

.field private f:Lcom/migu/voiceads/bussiness/videoad/b;

.field private g:Lcom/migu/voiceads/MIGUVideoAdListener;

.field private h:Lcom/migu/voiceads/bussiness/videoad/d;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/migu/voiceads/VideoAdConfigPatameter;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/MIGUVideoAd;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUVideoAdListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->k:Z

    new-instance v0, Lcom/migu/voiceads/c;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/c;-><init>(Lcom/migu/voiceads/MIGUVideoAd;)V

    iput-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->c:Lcom/migu/voiceads/utils/j$a;

    new-instance v0, Lcom/migu/voiceads/d;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/d;-><init>(Lcom/migu/voiceads/MIGUVideoAd;)V

    iput-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->d:Lcom/migu/voiceads/utils/j$a;

    new-instance v0, Lcom/migu/voiceads/a/a;

    sget-object v1, Lcom/migu/voiceads/bussiness/a$a;->e:Lcom/migu/voiceads/bussiness/a$a;

    invoke-direct {v0, p1, v1, p2}, Lcom/migu/voiceads/a/a;-><init>(Landroid/content/Context;Lcom/migu/voiceads/bussiness/a$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->a:Lcom/migu/voiceads/a/a;

    iput-object p1, p0, Lcom/migu/voiceads/MIGUVideoAd;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/migu/voiceads/MIGUVideoAd;->g:Lcom/migu/voiceads/MIGUVideoAdListener;

    new-instance v0, Lcom/migu/voiceads/bussiness/videoad/b;

    invoke-direct {v0, p1}, Lcom/migu/voiceads/bussiness/videoad/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->f:Lcom/migu/voiceads/bussiness/videoad/b;

    new-instance v0, Lcom/migu/voiceads/bussiness/videoad/d;

    invoke-direct {v0}, Lcom/migu/voiceads/bussiness/videoad/d;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->h:Lcom/migu/voiceads/bussiness/videoad/d;

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->h:Lcom/migu/voiceads/bussiness/videoad/d;

    iget-object v1, p0, Lcom/migu/voiceads/MIGUVideoAd;->g:Lcom/migu/voiceads/MIGUVideoAdListener;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/videoad/d;->a(Lcom/migu/voiceads/MIGUVideoAdListener;)V

    invoke-direct {p0}, Lcom/migu/voiceads/MIGUVideoAd;->b()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->a:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "adunitid"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "adw"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "adh"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->b()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "isboot"

    invoke-virtual {v0}, Lcom/migu/voiceads/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ts"

    invoke-direct {p0}, Lcom/migu/voiceads/MIGUVideoAd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ext"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ext"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v1, "geo"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "geo"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v1, "context"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "context"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string/jumbo v1, "0"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "minduration"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-direct {p0}, Lcom/migu/voiceads/MIGUVideoAd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "Ad_Android_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "maxDuration="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "maxduration"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string/jumbo v1, "contentId"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "contentId"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "invalid appid!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/migu/voiceads/MIGUAdError;

    const v1, 0x1155d

    invoke-direct {v0, v1}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    throw v0

    :cond_7
    const-string/jumbo v1, "appid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->f:Lcom/migu/voiceads/bussiness/videoad/b;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/bussiness/videoad/b;->a(Ljava/lang/String;)V

    const v0, 0x11238

    iget-object v2, p0, Lcom/migu/voiceads/MIGUVideoAd;->f:Lcom/migu/voiceads/bussiness/videoad/b;

    iget v2, v2, Lcom/migu/voiceads/bussiness/videoad/b;->a:I

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->f:Lcom/migu/voiceads/bussiness/videoad/b;

    iget-object v0, v0, Lcom/migu/voiceads/bussiness/videoad/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->h:Lcom/migu/voiceads/bussiness/videoad/d;

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/videoad/d;->a(ILjava/lang/Object;)V

    const-string/jumbo v0, "\u670d\u52a1\u5668\u54cd\u5e94\u65f6\u95f4"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/migu/voiceads/MIGUVideoAd;->j:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v4, Lcom/migu/voiceads/bussiness/videoad/a;

    iget-object v5, p0, Lcom/migu/voiceads/MIGUVideoAd;->f:Lcom/migu/voiceads/bussiness/videoad/b;

    iget-object v5, v5, Lcom/migu/voiceads/bussiness/videoad/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/migu/voiceads/MIGUVideoAd;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/migu/voiceads/MIGUVideoAd;->a:Lcom/migu/voiceads/a/a;

    iget-boolean v8, p0, Lcom/migu/voiceads/MIGUVideoAd;->k:Z

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/migu/voiceads/bussiness/videoad/a;-><init>(Lorg/json/JSONObject;Landroid/content/Context;Lcom/migu/voiceads/a/a;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->h:Lcom/migu/voiceads/bussiness/videoad/d;

    const/4 v1, 0x1

    new-instance v2, Lcom/migu/voiceads/MIGUAdError;

    iget-object v3, p0, Lcom/migu/voiceads/MIGUVideoAd;->f:Lcom/migu/voiceads/bussiness/videoad/b;

    iget v3, v3, Lcom/migu/voiceads/bussiness/videoad/b;->a:I

    invoke-direct {v2, v3}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/videoad/d;->a(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/migu/voiceads/MIGUVideoAd;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/voiceads/MIGUAdError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/migu/voiceads/MIGUVideoAd;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/migu/voiceads/MIGUVideoAd;)Lcom/migu/voiceads/bussiness/videoad/d;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->h:Lcom/migu/voiceads/bussiness/videoad/d;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->b:Landroid/content/Context;

    const-string/jumbo v1, "config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "date"

    const-string/jumbo v2, "2017-1-2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/migu/voiceads/MIGUVideoAd;->startRequestConfigContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->b:Landroid/content/Context;

    const-string/jumbo v1, "config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "content"

    const-string/jumbo v2, "{\"key\":\"videotype\",\"attributes\":[{\"first\":\"shortvideo\",\"second\":\"shortvideo\",\"configObjects\":{\"key\":\"duration\",\"attributes\":[{\"first\":90,\"second\":180,\"value\":5},{\"first\":180,\"second\":420,\"value\":15},{\"first\":420,\"second\":1800,\"value\":30}]}},{\"first\":\"longvideo\",\"second\":\"longvideo\",\"configObjects\":{\"key\":\"description\",\"attributes\":[{\"first\":\"A\",\"second\":\"A\",\"value\":120},{\"first\":\"B\",\"second\":\"B\",\"value\":60},{\"first\":\"C\",\"second\":\"C\",\"value\":30}]}},{\"first\":\"live\",\"second\":\"live\",\"configObjects\":{\"key\":\"systemtime\",\"attributes\":[{\"first\":0,\"second\":7,\"value\":15},{\"first\":7,\"second\":12,\"value\":30},{\"first\":12,\"second\":14,\"value\":45},{\"first\":14,\"second\":19,\"value\":30},{\"first\":19,\"second\":22,\"configObjects\":{\"key\":\"description\",\"attributes\":[{\"first\":\"A\",\"second\":\"A\",\"value\":120},{\"first\":\"B\",\"second\":\"B\",\"value\":60},{\"first\":\"C\",\"second\":\"C\",\"value\":45}]}},{\"first\":22,\"second\":24,\"value\":45}]}},{\"first\":\"review\",\"second\":\"review\",\"configObjects\":{\"key\":\"systemtime\",\"attributes\":[{\"first\":0,\"second\":7,\"value\":15},{\"first\":7,\"second\":12,\"value\":30},{\"first\":12,\"second\":14,\"value\":45},{\"first\":14,\"second\":19,\"value\":30},{\"first\":19,\"second\":22,\"configObjects\":{\"key\":\"description\",\"attributes\":[{\"first\":\"A\",\"second\":\"A\",\"value\":120},{\"first\":\"B\",\"second\":\"B\",\"value\":60},{\"first\":\"C\",\"second\":\"C\",\"value\":45}]}},{\"first\":22,\"second\":24,\"value\":45}]}}]}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/migu/voiceads/bussiness/videoad/c;

    invoke-direct {v1}, Lcom/migu/voiceads/bussiness/videoad/c;-><init>()V

    iget-object v2, p0, Lcom/migu/voiceads/MIGUVideoAd;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/bussiness/videoad/c;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/bussiness/videoad/c;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/migu/voiceads/bussiness/videoad/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public backLandingUrl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/MIGUVideoAd;->k:Z

    return-void
.end method

.method public setAdSize(II)V
    .locals 2

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Incorrect ad size, please reset\uff01"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/a/a;->a(I)V

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v0, p2}, Lcom/migu/voiceads/a/a;->b(I)V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setmVideoAdConfigPatameters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/migu/voiceads/VideoAdConfigPatameter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/migu/voiceads/MIGUVideoAd;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public declared-synchronized startRequestAd()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/migu/voiceads/MIGUVideoAd;->startRequestAd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRequestAd(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->j:J

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->h:Lcom/migu/voiceads/bussiness/videoad/d;

    const/4 v1, 0x1

    new-instance v2, Lcom/migu/voiceads/MIGUAdError;

    const v3, 0x1155b

    invoke-direct {v2, v3}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/videoad/d;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/migu/voiceads/bussiness/a$a;->f:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/MIGUVideoAd;->a:Lcom/migu/voiceads/a/a;

    invoke-virtual {v2}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/migu/voiceads/bussiness/a$a;->f:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is requesting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/migu/voiceads/MIGUVideoAd;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/a/d;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/migu/voiceads/MIGUVideoAd;->e:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/migu/voiceads/MIGUVideoAd;->e:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/MIGUVideoAd;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "batch_cnt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "send:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/MIGUVideoAd;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/migu/voiceads/utils/f;->a([B)[B

    move-result-object v0

    new-instance v1, Lcom/migu/voiceads/utils/j;

    invoke-direct {v1}, Lcom/migu/voiceads/utils/j;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/utils/j;->b(I)V

    sget-object v2, Lcom/migu/voiceads/a/b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/migu/voiceads/utils/j;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/migu/voiceads/MIGUVideoAd;->c:Lcom/migu/voiceads/utils/j$a;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/j;->a(Lcom/migu/voiceads/utils/j$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRequestConfigContent()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "http://test.ad.cmvideo.cn:8888/fix/json"

    iget-object v1, p0, Lcom/migu/voiceads/MIGUVideoAd;->d:Lcom/migu/voiceads/utils/j$a;

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/m;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/j$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
