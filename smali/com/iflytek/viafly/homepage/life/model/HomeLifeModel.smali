.class public Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
.super Ljava/lang/Object;
.source "HomeLifeModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;


# instance fields
.field private b:Lakw;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->h()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
    .locals 8
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 184
    if-nez p0, :cond_0

    move-object v2, v5

    .line 203
    :goto_0
    return-object v2

    .line 187
    :cond_0
    new-instance v2, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;

    invoke-direct {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;-><init>()V

    .line 188
    .local v2, "homeLifeConfigItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
    const-string/jumbo v6, "lifeConfig"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 189
    .local v4, "jsonObject":Lorg/json/JSONObject;
    if-nez v4, :cond_1

    move-object v2, v5

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    :try_start_0
    const-string/jumbo v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->b(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v6, "lastEditTime"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->c(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v6, "lifeversion"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->d(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    .local v0, "contentItem":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->b(Lorg/json/JSONObject;)Lakw;

    move-result-object v3

    .line 199
    .local v3, "homeLifeContentItem":Lakw;
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a(Lakw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v0    # "contentItem":Lorg/json/JSONObject;
    .end local v3    # "homeLifeContentItem":Lakw;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "HomeLifeModel"

    const-string/jumbo v7, "json opt Exception"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 203
    goto :goto_0
.end method

.method public static a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;)Ljava/lang/String;
    .locals 8
    .param p0, "homeLifeModel"    # Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;

    .prologue
    const/4 v4, 0x0

    .line 274
    if-nez p0, :cond_0

    move-object v3, v4

    .line 295
    :goto_0
    return-object v3

    .line 278
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "{\'lifeConfig\':"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{\'id\':\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "lifeversion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\':\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\':\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 281
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "lastEditTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\':\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\':{\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\':["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a()Lakw;

    move-result-object v5

    invoke-virtual {v5}, Lakw;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .line 284
    .local v1, "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\'id\':\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\':\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "link"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\':\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 285
    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "logoUrl"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\':\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 286
    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "extend"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\':{\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "source"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\':\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 287
    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "cpaCode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\':\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 288
    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'}},"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 293
    .end local v1    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    .end local v2    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HomeLifeModel"

    const-string/jumbo v6, "append string exception"

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 295
    goto/16 :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "substring":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]}}}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 292
    goto/16 :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 219
    if-nez p0, :cond_1

    move-object v7, v8

    .line 269
    :cond_0
    :goto_0
    return-object v7

    .line 222
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v7, "serviceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 224
    .local v5, "len":I
    if-gtz v5, :cond_2

    move-object v7, v8

    .line 225
    goto :goto_0

    .line 227
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 228
    new-instance v4, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    invoke-direct {v4}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>()V

    .line 230
    .local v4, "item":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 231
    .local v6, "object":Lorg/json/JSONObject;
    if-nez v6, :cond_4

    .line 227
    .end local v6    # "object":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 234
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "name"

    .line 235
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "logoUrl"

    .line 236
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "link"

    .line 237
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 240
    const-string/jumbo v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b(Ljava/lang/String;)V

    .line 242
    const-string/jumbo v8, "logoUrl"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v8, "link"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->d(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v8, "extend"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 245
    .local v2, "extendJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_7

    .line 246
    new-instance v1, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    invoke-direct {v1}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;-><init>()V

    .line 247
    .local v1, "extend":Lcom/iflytek/viafly/homepage/life/model/ExtendItem;
    const-string/jumbo v8, "source"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 248
    const-string/jumbo v8, ""

    invoke-virtual {v1, v8}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a(Ljava/lang/String;)V

    .line 252
    :goto_3
    const-string/jumbo v8, "cpaCode"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 253
    const-string/jumbo v8, ""

    invoke-virtual {v1, v8}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b(Ljava/lang/String;)V

    .line 257
    :goto_4
    invoke-virtual {v4, v1}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a(Lcom/iflytek/viafly/homepage/life/model/ExtendItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "extend":Lcom/iflytek/viafly/homepage/life/model/ExtendItem;
    :goto_5
    if-eqz v4, :cond_3

    .line 266
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 250
    .restart local v1    # "extend":Lcom/iflytek/viafly/homepage/life/model/ExtendItem;
    :cond_5
    :try_start_1
    const-string/jumbo v8, "source"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 261
    .end local v1    # "extend":Lcom/iflytek/viafly/homepage/life/model/ExtendItem;
    .end local v2    # "extendJson":Lorg/json/JSONObject;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "HomeLifeModel"

    const-string/jumbo v9, "JSON opt Exception"

    invoke-static {v8, v9, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "extend":Lcom/iflytek/viafly/homepage/life/model/ExtendItem;
    .restart local v2    # "extendJson":Lorg/json/JSONObject;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_6
    :try_start_2
    const-string/jumbo v8, "cpaCode"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 259
    .end local v1    # "extend":Lcom/iflytek/viafly/homepage/life/model/ExtendItem;
    :cond_7
    new-instance v8, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    invoke-direct {v8}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;-><init>()V

    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a(Lcom/iflytek/viafly/homepage/life/model/ExtendItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5
.end method

.method public static b(Lorg/json/JSONObject;)Lakw;
    .locals 4
    .param p0, "contentItem"    # Lorg/json/JSONObject;

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 211
    :cond_0
    new-instance v0, Lakw;

    invoke-direct {v0}, Lakw;-><init>()V

    .line 212
    .local v0, "homeLifeContentItem":Lakw;
    const-string/jumbo v3, "service"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 213
    .local v2, "localServices":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    .local v1, "localServiceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;>;"
    invoke-virtual {v0, v1}, Lakw;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "homeLifeServiceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;>;"
    const/4 v0, 0x0

    .line 89
    .local v0, "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-direct {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>()V

    .line 90
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v2, "smart"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "\u667a\u80fd\u5bb6\u5c45"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "smart"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_smart:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;)V

    .line 94
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-direct {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>()V

    .line 97
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v2, "speak"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "\u6765\u7535\u64ad\u62a5"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "speak"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c(Ljava/lang/String;)V

    .line 100
    sget-object v2, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_speak:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;)V

    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v1
.end method

.method public static g()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v7, "homeLifeServiceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;>;"
    const/4 v0, 0x0

    .line 111
    .local v0, "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v1, "2"

    const-string/jumbo v2, "\u8fdd\u7ae0"

    const-string/jumbo v3, "http://xz.voicecloud.cn/resources/homelife/ic_rule.png"

    const-string/jumbo v4, "http://chelun.com/url/3YTPLL"

    const-string/jumbo v5, "LX_100027"

    const-string/jumbo v6, "migu"

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "\u5feb\u9012"

    const-string/jumbo v3, "http://xz.voicecloud.cn/resources/homelife/ic_express.png"

    const-string/jumbo v4, "http://m.kuaidi100.com/ucdaohang/"

    const-string/jumbo v5, "LX_100080"

    const-string/jumbo v6, "migu"

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v1, "3"

    const-string/jumbo v2, "\u706b\u8f66\u7968"

    const-string/jumbo v3, "http://xz.voicecloud.cn/resources/homelife/ic_train.png"

    const-string/jumbo v4, "http://m.ctrip.com/webapp/train/?allianceid=11120&sid=288113&ouid="

    const-string/jumbo v5, "LX_100012"

    const-string/jumbo v6, "migu"

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v1, "4"

    const-string/jumbo v2, "\u673a\u7968"

    const-string/jumbo v3, "http://xz.voicecloud.cn/resources/homelife/ic_flight.png"

    const-string/jumbo v4, "http://m.ctrip.com/webapp/flight/?allianceid=11120&sid=288113&ouid="

    const-string/jumbo v5, "LX_100013"

    const-string/jumbo v6, "migu"

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v1, "12"

    const-string/jumbo v2, "\u6ef4\u6ef4\u6253\u8f66"

    const-string/jumbo v3, "http://xz.voicecloud.cn/resources/homelife/ic_didi.png"

    const-string/jumbo v4, "https://common.diditaxi.com.cn/general/webEntry?channel=73731"

    const-string/jumbo v5, "LX_100102"

    const-string/jumbo v6, "migu"

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v1, "13"

    const-string/jumbo v2, "\u9ad8\u5fb7\u5730\u56fe"

    const-string/jumbo v3, "http://xz.voicecloud.cn/resources/homelife/ic_gaode.png"

    const-string/jumbo v4, "http://m.amap.com/index/index/src=uriapi"

    const-string/jumbo v5, "LX_100019"

    const-string/jumbo v6, "migu"

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    .end local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    const-string/jumbo v1, "14"

    const-string/jumbo v2, "\u54aa\u5495FM"

    const-string/jumbo v3, "http://xz.voicecloud.cn/resources/homelife/ic_migufm.png"

    const-string/jumbo v4, "http://wap.cmread.com/tingclient/publish/clt/resource/callback/h5/publicActivity.jsp?contId=11214726"

    const-string/jumbo v5, "LX_100101"

    const-string/jumbo v6, "migu"

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .restart local v0    # "homeLifeServiceItem":Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object v7
.end method

.method public static h()Ljava/util/Map;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "map":Ljava/util/Map;
    const-string/jumbo v1, "speak"

    const-string/jumbo v2, "image.card_life_speak"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v1, "smart"

    const-string/jumbo v2, "image.card_life_smart"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v1, "music"

    const-string/jumbo v2, "image.card_life_music"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v1, "plug"

    const-string/jumbo v2, "image.card_life_plug"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v1, "more"

    const-string/jumbo v2, "image.card_life_more"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_express.png"

    const-string/jumbo v2, "image.card_life_express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_rule.png"

    const-string/jumbo v2, "image.card_life_rule"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_train.png"

    const-string/jumbo v2, "image.card_life_train"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_flight.png"

    const-string/jumbo v2, "image.card_life_flight"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_didi.png"

    const-string/jumbo v2, "image.card_life_taxi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_gaode.png"

    const-string/jumbo v2, "image.card_life_map"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_migufm.png"

    const-string/jumbo v2, "image.card_life_fm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_dream.png"

    const-string/jumbo v2, "image.card_life_star"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_calendar.png"

    const-string/jumbo v2, "image.card_life_data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_test.png"

    const-string/jumbo v2, "image.card_life_test"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_novel.png"

    const-string/jumbo v2, "image.card_life_novel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ico_shouji.png"

    const-string/jumbo v2, "image.card_life_phone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/homelife/ic_cartoon.png"

    const-string/jumbo v2, "image.card_life_cartoon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-object v0
.end method


# virtual methods
.method public a()Lakw;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->b:Lakw;

    return-object v0
.end method

.method public a(Lakw;)V
    .locals 0
    .param p1, "content"    # Lakw;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->b:Lakw;

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->c:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->d:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastEditTime"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->f:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;->f:Ljava/lang/String;

    return-object v0
.end method
