.class public Lcom/baidu/aiupdatesdk/obf/c;
.super Lcom/baidu/aiupdatesdk/obf/p;
.source "TagCoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/aiupdatesdk/obf/p",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/aiupdatesdk/obf/c;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/b;",
            ">;)",
            "Lcom/baidu/aiupdatesdk/obf/c;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/c;

    const-string/jumbo v1, "http://srsdk.baidu.com/appuapi/callapi?ActionID=_ActionID&Ver=_Ver&Source=3"

    invoke-direct {v0, p0, v1}, Lcom/baidu/aiupdatesdk/obf/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .local v0, "coder":Lcom/baidu/aiupdatesdk/obf/c;
    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/baidu/aiupdatesdk/obf/c;->a(S)V

    .line 48
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/ac;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/baidu/aiupdatesdk/obf/c;->a:I

    .line 49
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/ac;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/obf/c;->b:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/obf/c;->c:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/w;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/obf/c;->d:Ljava/lang/String;

    .line 52
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/obf/c;->e:Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/obf/c;->f:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/y;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/y;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/obf/c;->g:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/obf/c;->h:Ljava/lang/String;

    .line 56
    iput-object p1, v0, Lcom/baidu/aiupdatesdk/obf/c;->i:Ljava/util/List;

    .line 57
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const-string/jumbo v1, ""

    .line 96
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/am;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_0
    if-nez v1, :cond_0

    .line 101
    const-string/jumbo v1, ""

    .line 103
    :cond_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 112
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/baidu/aiupdatesdk/obf/m;->a:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_2
    const-string/jumbo v4, ""

    goto :goto_1
.end method


# virtual methods
.method protected a()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/c;->d()Landroid/content/Context;

    move-result-object v1

    .line 67
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "AppId"

    iget v5, p0, Lcom/baidu/aiupdatesdk/obf/c;->a:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v4, "AppKey"

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v4, "AppPackage"

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v4, "AppVersionCode"

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v4, "CUID"

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v4, "MAC"

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v4, "DPI"

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v4, "ApiLevel"

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v4, "IPAddress"

    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/ae;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v4, "MobileModels"

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 80
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/c;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/aiupdatesdk/obf/b;

    .line 81
    .local v3, "tag":Lcom/baidu/aiupdatesdk/obf/b;
    invoke-virtual {v3}, Lcom/baidu/aiupdatesdk/obf/b;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 83
    .end local v3    # "tag":Lcom/baidu/aiupdatesdk/obf/b;
    :cond_0
    const-string/jumbo v4, "ActionContent"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    return-object v2
.end method

.method protected a(ILcom/baidu/aiupdatesdk/obf/o;Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "resultCode"    # I
    .param p3, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/aiupdatesdk/obf/o",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "result":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<Ljava/lang/String;Ljava/lang/Void;>;"
    const/4 v0, 0x1

    return v0
.end method
