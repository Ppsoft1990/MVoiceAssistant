.class public Lcom/iflytek/viafly/smartschedule/config/ScheduleConfigParser;
.super Ljava/lang/Object;
.source "ScheduleConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduleConfigParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parserScheduleConfig(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .locals 12
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, "classname"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "classname":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v0, "content"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v0, "remindtiming"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "remindtiming":Ljava/lang/String;
    const-string/jumbo v0, "extra"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "extra":Ljava/lang/String;
    const-string/jumbo v0, "defaultstatus"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 70
    .local v7, "defaultstatus":I
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 71
    .local v8, "version":I
    const-string/jumbo v0, "icon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, "icon":Ljava/lang/String;
    const-string/jumbo v0, "app_minversion"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "appMinVersion":Ljava/lang/String;
    const-string/jumbo v0, "api_minversion"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "apiMinVersion":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    invoke-direct/range {v0 .. v11}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parserScheduleConfig(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "strJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const/4 v2, 0x0

    .line 38
    :goto_0
    return-object v2

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 31
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/config/ScheduleConfigParser;->parserScheduleConfig(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 34
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ScheduleConfigParser"

    const-string/jumbo v4, "fromJson | error"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static parserScheduleConfig(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 43
    :cond_0
    const/4 v3, 0x0

    .line 55
    :cond_1
    return-object v3

    .line 46
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 48
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 49
    .local v2, "json":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/config/ScheduleConfigParser;->parserScheduleConfig(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    move-result-object v1

    .line 50
    .local v1, "item":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    if-eqz v1, :cond_3

    .line 51
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
