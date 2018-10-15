.class public Lakb;
.super Lajv;
.source "Pm25.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lajv;-><init>()V

    .line 17
    const-string/jumbo v0, "Pm25"

    iput-object v0, p0, Lakb;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    invoke-direct {p0}, Lajv;-><init>()V

    .line 17
    const-string/jumbo v0, "Pm25"

    iput-object v0, p0, Lakb;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lakb;->a(Lorg/json/JSONObject;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lakb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lakb;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string/jumbo v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakb;->b(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lakb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lakb;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "desc"

    invoke-virtual {p0}, Lakb;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v2, "num"

    invoke-virtual {p0}, Lakb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "Pm25"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v1, 0x0

    goto :goto_0
.end method
