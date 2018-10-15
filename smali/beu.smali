.class public final Lbeu;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lber;->a(Ljava/io/File;)[B

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbeu;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/io/File;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {p1, v0}, Lber;->a(Ljava/io/File;[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lber;->a(Ljava/io/File;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Lorg/json/JSONArray;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lber;->a(Ljava/io/File;)[B

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbeu;->b(Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method
