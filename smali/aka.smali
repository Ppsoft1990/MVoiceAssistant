.class public Laka;
.super Lajv;
.source "DateTime.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lajv;-><init>()V

    .line 16
    const-string/jumbo v0, "DateTime"

    iput-object v0, p0, Laka;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    invoke-direct {p0}, Lajv;-><init>()V

    .line 16
    const-string/jumbo v0, "DateTime"

    iput-object v0, p0, Laka;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Laka;->a(Lorg/json/JSONObject;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Laka;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDate"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Laka;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string/jumbo v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laka;->a(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "week"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laka;->b(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "lunar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laka;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Laka;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWeek"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Laka;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Laka;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLunar"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Laka;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "date"

    invoke-virtual {p0}, Laka;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v2, "week"

    invoke-virtual {p0}, Laka;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v2, "lunar"

    invoke-virtual {p0}, Laka;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "DateTime"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method
