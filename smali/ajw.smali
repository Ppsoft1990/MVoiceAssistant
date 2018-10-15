.class public Lajw;
.super Lajv;
.source "CityArea.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lajv;-><init>()V

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajw;->c:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajw;->b:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajw;->a:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajw;->d:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lajw;->e:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "area"    # Ljava/lang/String;
    .param p4, "isDefault"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Lajv;-><init>()V

    .line 73
    iput-object p1, p0, Lajw;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lajw;->b:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lajw;->c:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lajw;->e:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "cityJson"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    invoke-direct {p0}, Lajv;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lajw;->a(Lorg/json/JSONObject;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lajw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressName"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lajw;->d:Ljava/lang/String;

    .line 30
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "province"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajw;->d(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajw;->c(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajw;->b(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lajw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lajw;)Z
    .locals 3
    .param p1, "cityArea"    # Lajw;

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lajw;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p1}, Lajw;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p1}, Lajw;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajw;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const-string/jumbo v1, "CityArea"

    const-string/jumbo v2, "CityArea isValid: false"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lajw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lajw;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lajw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lajw;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lajw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lajw;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lajw;->e:Z

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "province"

    invoke-virtual {p0}, Lajw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v2, "city"

    invoke-virtual {p0}, Lajw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v2, "area"

    invoke-virtual {p0}, Lajw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v2, "address"

    invoke-virtual {p0}, Lajw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "CityArea"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lajw;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lajw;->b:Ljava/lang/String;

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "CityArea"

    const-string/jumbo v1, "CityArea isValid: true"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string/jumbo v0, "CityArea"

    const-string/jumbo v1, "CityArea isValid: false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method
