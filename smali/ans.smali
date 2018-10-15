.class public Lans;
.super Ljava/lang/Object;
.source "MapResultHandler.java"


# static fields
.field private static a:Lans;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lans;->a:Lans;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lans;->b:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lans;->b:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lans;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v1, Lans;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lans;->a:Lans;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lans;

    invoke-direct {v0, p0}, Lans;-><init>(Landroid/content/Context;)V

    sput-object v0, Lans;->a:Lans;

    .line 33
    :cond_0
    sget-object v0, Lans;->a:Lans;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appItem"    # Lorg/json/JSONObject;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "addressName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    const-string/jumbo v2, "MapResultHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hanldeOtherMark(), appItem is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", addressName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lans;->b:Landroid/content/Context;

    .line 130
    invoke-static {v2}, Lanq;->a(Landroid/content/Context;)Lanq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lanq;->a(Lorg/json/JSONObject;)Lanr;

    move-result-object v0

    .line 131
    .local v0, "mapAbility":Lanr;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p2, p3}, Lanr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appItem"    # Lorg/json/JSONObject;
    .param p2, "latitude"    # Ljava/lang/String;
    .param p3, "longtitude"    # Ljava/lang/String;
    .param p4, "addressName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    const-string/jumbo v2, "MapResultHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hanldeLocalMark(), appItem is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lans;->b:Landroid/content/Context;

    .line 107
    invoke-static {v2}, Lanq;->a(Landroid/content/Context;)Lanq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lanq;->a(Lorg/json/JSONObject;)Lanr;

    move-result-object v0

    .line 108
    .local v0, "mapAbility":Lanr;
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p2, p3, p4}, Lanr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 11
    .param p1, "appItem"    # Lorg/json/JSONObject;
    .param p2, "pointArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v7, 0x0

    .line 139
    const-string/jumbo v8, "MapResultHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "openMapRoute(), pointArray is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v8, 0x2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 143
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 144
    .local v6, "sourcePoint":Lorg/json/JSONObject;
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 145
    .local v2, "destPoint":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 147
    const-string/jumbo v8, "client"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 148
    .local v4, "sourceIsLocal":Z
    const-string/jumbo v8, "client"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 149
    .local v0, "destIsLocal":Z
    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "sourceName":Ljava/lang/String;
    const-string/jumbo v8, "name"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "destName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 152
    iget-object v8, p0, Lans;->b:Landroid/content/Context;

    invoke-static {v8}, Lanq;->a(Landroid/content/Context;)Lanq;

    move-result-object v8

    .line 153
    invoke-virtual {v8, p1}, Lanq;->a(Lorg/json/JSONObject;)Lanr;

    move-result-object v3

    .line 154
    .local v3, "mapAbility":Lanr;
    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v3, v4, v0, v5, v1}, Lanr;->a(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 161
    .end local v0    # "destIsLocal":Z
    .end local v1    # "destName":Ljava/lang/String;
    .end local v2    # "destPoint":Lorg/json/JSONObject;
    .end local v3    # "mapAbility":Lanr;
    .end local v4    # "sourceIsLocal":Z
    .end local v5    # "sourceName":Ljava/lang/String;
    .end local v6    # "sourcePoint":Lorg/json/JSONObject;
    :cond_0
    return v7
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)Z
    .locals 7
    .param p1, "argJsonArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v3, 0x0

    .line 40
    const-string/jumbo v4, "MapResultHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openMapApp(), args is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "operation":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    .local v0, "mathMapApp":Lorg/json/JSONObject;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 46
    .local v2, "pointArray":Lorg/json/JSONArray;
    const-string/jumbo v4, "locate"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {p0, v0, v2}, Lans;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v3

    .line 54
    .end local v0    # "mathMapApp":Lorg/json/JSONObject;
    .end local v1    # "operation":Ljava/lang/String;
    .end local v2    # "pointArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return v3

    .line 48
    .restart local v0    # "mathMapApp":Lorg/json/JSONObject;
    .restart local v1    # "operation":Ljava/lang/String;
    .restart local v2    # "pointArray":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v4, "route"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-direct {p0, v0, v2}, Lans;->b(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v3

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 12
    .param p1, "mathMapApp"    # Lorg/json/JSONObject;
    .param p2, "pointArray"    # Lorg/json/JSONArray;

    .prologue
    .line 58
    const-string/jumbo v9, "MapResultHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMapLocate(), pointArray is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v8, 0x0

    .line 61
    .local v8, "ret":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 62
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 63
    .local v7, "point":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 65
    invoke-static {}, Loa;->a()Loa;

    move-result-object v9

    invoke-virtual {v9}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 66
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v9, "client"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 68
    .local v4, "isLocal":Z
    const-string/jumbo v9, "MapResultHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMapLocate(), isLocal is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "latitude":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "longtitude":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "addressName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 74
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 76
    invoke-direct {p0, p1, v5, v6, v1}, Lans;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 93
    .end local v0    # "address":Lcom/iflytek/common/lbs/XAddress;
    .end local v1    # "addressName":Ljava/lang/String;
    .end local v4    # "isLocal":Z
    .end local v5    # "latitude":Ljava/lang/String;
    .end local v6    # "longtitude":Ljava/lang/String;
    .end local v7    # "point":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v8

    .line 80
    .restart local v0    # "address":Lcom/iflytek/common/lbs/XAddress;
    .restart local v4    # "isLocal":Z
    .restart local v7    # "point":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "city":Ljava/lang/String;
    const-string/jumbo v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1    # "addressName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 83
    invoke-direct {p0, p1, v2, v1}, Lans;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 89
    .end local v0    # "address":Lcom/iflytek/common/lbs/XAddress;
    .end local v1    # "addressName":Ljava/lang/String;
    .end local v2    # "city":Ljava/lang/String;
    .end local v4    # "isLocal":Z
    .end local v7    # "point":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "MapResultHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMapLocate error, exception is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
