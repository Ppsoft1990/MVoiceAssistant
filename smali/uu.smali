.class public Luu;
.super Ljava/lang/Object;
.source "AppEntity.java"


# annotations
.annotation runtime Lbbw;
    a = "t_app_entity"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Lbbu;
        a = "id"
    .end annotation

    .annotation runtime Lbbv;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "packageName"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "downUrl"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "iconUrl"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "autoOpen"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "versionName"
    .end annotation
.end field

.field private h:Ljava/lang/Integer;
    .annotation runtime Lbbu;
        a = "status"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "filePath"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "iconPath"
    .end annotation
.end field

.field private k:J
    .annotation runtime Lbbu;
        a = "startTime"
    .end annotation
.end field

.field private l:J
    .annotation runtime Lbbu;
        a = "endTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "downUrl"    # Ljava/lang/String;
    .param p5, "iconUrl"    # Ljava/lang/String;
    .param p6, "autoOpen"    # Ljava/lang/String;
    .param p7, "versionName"    # Ljava/lang/String;
    .param p8, "status"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Luu;->a:Ljava/lang/Integer;

    .line 79
    iput-object p2, p0, Luu;->b:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Luu;->c:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Luu;->d:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Luu;->e:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Luu;->f:Ljava/lang/String;

    .line 84
    iput-object p7, p0, Luu;->g:Ljava/lang/String;

    .line 85
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Luu;->h:Ljava/lang/Integer;

    .line 86
    return-void
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Luu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 110
    :cond_0
    const/4 v4, 0x0

    .line 130
    :cond_1
    :goto_0
    return-object v4

    .line 113
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 116
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 117
    .local v3, "len":I
    if-lez v3, :cond_1

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 120
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Luu;->a(Lorg/json/JSONObject;)Luu;

    move-result-object v1

    .line 121
    .local v1, "entity":Luu;
    if-eqz v1, :cond_3

    .line 122
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v1    # "entity":Luu;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v6, "AppEntity"

    const-string/jumbo v7, "parser error"

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    goto :goto_2

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    :cond_4
    move-object v4, v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Luu;
    .locals 10
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 89
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    const-string/jumbo v8, "id"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 94
    .local v1, "id":Ljava/lang/Integer;
    const-string/jumbo v8, "name"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v8, "packageName"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v8, "downUrl"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "downUrl":Ljava/lang/String;
    const-string/jumbo v8, "iconUrl"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "iconUrl":Ljava/lang/String;
    const-string/jumbo v8, "autoOpen"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "autoOpen":Ljava/lang/String;
    const-string/jumbo v8, "versionName"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "versionName":Ljava/lang/String;
    const-string/jumbo v8, "status"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 102
    .local v9, "status":Ljava/lang/Integer;
    invoke-static {v3}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v5}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 105
    new-instance v0, Luu;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Luu;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Luu;)Z
    .locals 1
    .param p0, "appEntity"    # Luu;

    .prologue
    .line 243
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Luu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Luu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Luu;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Luu;->h:Ljava/lang/Integer;

    .line 224
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 255
    iput-wide p1, p0, Luu;->k:J

    .line 256
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Luu;->b:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Luu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 263
    iput-wide p1, p0, Luu;->l:J

    .line 264
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Luu;->c:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Luu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Luu;->i:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Luu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Luu;->j:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Luu;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Luu;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 203
    const-string/jumbo v0, "1"

    iget-object v1, p0, Luu;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Luu;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Luu;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 267
    invoke-static {}, Lvb;->a()J

    move-result-wide v0

    .line 268
    .local v0, "currentTime":J
    iget-wide v2, p0, Luu;->l:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
