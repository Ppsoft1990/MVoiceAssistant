.class public Lcom/baidu/aiupdatesdk/obf/b;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/baidu/aiupdatesdk/obf/b;->a:I

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/obf/x;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/b;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static a(I)Lcom/baidu/aiupdatesdk/obf/b;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/b;

    invoke-direct {v0, p0}, Lcom/baidu/aiupdatesdk/obf/b;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 34
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ActionStatus"

    iget v3, p0, Lcom/baidu/aiupdatesdk/obf/b;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v2, "ActionTime"

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/ab;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
