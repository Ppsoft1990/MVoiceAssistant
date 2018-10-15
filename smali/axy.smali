.class public Laxy;
.super Ljava/lang/Object;
.source "TranslateEntry.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Laxy;
    .locals 15
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v10

    .line 82
    :cond_1
    const/4 v4, 0x0

    .line 84
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .local v5, "jsonObject":Lorg/json/JSONObject;
    move-object v4, v5

    .line 89
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    const-string/jumbo v12, "result"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 90
    .local v7, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v12, "materials"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 91
    .local v6, "materials":Lorg/json/JSONArray;
    invoke-static {v6}, Laxy;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v11

    .line 93
    .local v11, "translateJson":Lorg/json/JSONObject;
    if-eqz v11, :cond_0

    .line 94
    const-string/jumbo v12, "text"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "text":Ljava/lang/String;
    const-string/jumbo v12, "textlink"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "textlink":Ljava/lang/String;
    const-string/jumbo v12, "imageurl"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "imageurl":Ljava/lang/String;
    const-string/jumbo v12, "imagelink"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "imagelink":Ljava/lang/String;
    const-string/jumbo v12, "imagetype"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "imagetype":Ljava/lang/String;
    const-string/jumbo v12, "TranslateEntry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fromJson: imageurl "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " text "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " imagetype "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 103
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laxy;->g(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 105
    new-instance v10, Laxy;

    invoke-direct {v10}, Laxy;-><init>()V

    .line 106
    .local v10, "translateEntry":Laxy;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Laxy;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Laxy;->e(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Laxy;->c(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Laxy;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Laxy;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v1    # "imagelink":Ljava/lang/String;
    .end local v2    # "imagetype":Ljava/lang/String;
    .end local v3    # "imageurl":Ljava/lang/String;
    .end local v6    # "materials":Lorg/json/JSONArray;
    .end local v7    # "resultJson":Lorg/json/JSONObject;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "textlink":Ljava/lang/String;
    .end local v10    # "translateEntry":Laxy;
    .end local v11    # "translateJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v12, "TranslateEntry"

    const-string/jumbo v13, " "

    invoke-static {v12, v13, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 2
    .param p0, "imagetype"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    const-string/jumbo v1, "jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Laxy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagelink"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Laxy;->d:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Laxy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagetype"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Laxy;->e:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Laxy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageurl"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Laxy;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Laxy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Laxy;->a:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "textlink"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Laxy;->b:Ljava/lang/String;

    .line 65
    return-void
.end method
