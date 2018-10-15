.class public Lcom/migu/uem/statistics/event/bean/Action;
.super Ljava/lang/Object;


# instance fields
.field private actionId:Ljava/lang/String;

.field private actionTime:J

.field private ocinfoId:Ljava/lang/String;

.field private values:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->ocinfoId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->actionId:Ljava/lang/String;

    iput-object p1, p0, Lcom/migu/uem/statistics/event/bean/Action;->ocinfoId:Ljava/lang/String;

    iput-object p2, p0, Lcom/migu/uem/statistics/event/bean/Action;->actionId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->actionTime:J

    return-void
.end method


# virtual methods
.method public addActionData(Lcom/migu/uem/statistics/event/bean/ActionData;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->values:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->values:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "EID"

    iget-object v1, p0, Lcom/migu/uem/statistics/event/bean/Action;->actionId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ETM"

    iget-wide v4, p0, Lcom/migu/uem/statistics/event/bean/Action;->actionTime:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "OCID"

    iget-object v1, p0, Lcom/migu/uem/statistics/event/bean/Action;->ocinfoId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->values:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/migu/uem/statistics/event/bean/Action;->values:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/statistics/event/bean/ActionData;

    const-string/jumbo v5, "EK"

    iget-object v6, v0, Lcom/migu/uem/statistics/event/bean/ActionData;->actionKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "EV"

    iget-object v0, v0, Lcom/migu/uem/statistics/event/bean/ActionData;->actionValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "TDT"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/migu/uem/statistics/event/bean/Action;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
