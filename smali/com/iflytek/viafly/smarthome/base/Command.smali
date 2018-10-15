.class public Lcom/iflytek/viafly/smarthome/base/Command;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Command"


# instance fields
.field private cmd:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Param;",
            ">;"
        }
    .end annotation
.end field

.field private paramsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->cmd:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Param;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Param;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->cmd:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/base/Command;->list2Map()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->cmd:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    .line 48
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/base/Command;->map2List()V

    .line 49
    return-void
.end method

.method public static parseCommand(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Command;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 63
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const-string/jumbo v4, "cmd"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "cmd":Ljava/lang/String;
    const/4 v3, 0x0

    .line 58
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Param;>;"
    const-string/jumbo v4, "params"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const-string/jumbo v4, "params"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 60
    .local v2, "jsonArr":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/iflytek/viafly/smarthome/base/Param;->parseParams(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 62
    .end local v2    # "jsonArr":Lorg/json/JSONArray;
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v1, v0, v3}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 63
    .local v1, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    goto :goto_0
.end method

.method public static parseCommands(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .param p0, "jsonArr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 83
    :cond_1
    return-object v1

    .line 71
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 72
    .local v5, "len":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    const/4 v2, 0x0

    .line 74
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 75
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 76
    .local v4, "json":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/base/Command;->parseCommand(Lorg/json/JSONObject;)Lcom/iflytek/viafly/smarthome/base/Command;

    move-result-object v0

    .line 77
    .local v0, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    if-eqz v0, :cond_3

    .line 78
    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 74
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addParams(Lcom/iflytek/viafly/smarthome/base/Param;)V
    .locals 3
    .param p1, "param"    # Lcom/iflytek/viafly/smarthome/base/Param;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/base/Param;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/base/Param;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Lcom/iflytek/viafly/smarthome/base/Param;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/viafly/smarthome/base/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->addParams(Lcom/iflytek/viafly/smarthome/base/Param;)V

    .line 116
    return-void
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Command;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public final getParamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Param;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    return-object v0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    return-object v0
.end method

.method public list2Map()V
    .locals 5

    .prologue
    .line 131
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 142
    :cond_1
    return-void

    .line 138
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    .line 139
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smarthome/base/Param;

    .line 140
    .local v0, "param":Lcom/iflytek/viafly/smarthome/base/Param;
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/base/Param;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/base/Param;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public map2List()V
    .locals 6

    .prologue
    .line 145
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 157
    :cond_1
    return-void

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    .line 153
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    .local v0, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    new-instance v5, Lcom/iflytek/viafly/smarthome/base/Param;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lcom/iflytek/viafly/smarthome/base/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->cmd:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/Param;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Param;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    .line 105
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/base/Command;->list2Map()V

    .line 106
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/base/Command;->paramsMap:Ljava/util/Map;

    .line 111
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/base/Command;->map2List()V

    .line 112
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v5, "cmd"

    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/base/Command;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 166
    .local v4, "jsonArr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/base/Command;->params:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/smarthome/base/Param;

    invoke-virtual {v5}, Lcom/iflytek/viafly/smarthome/base/Param;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    const-string/jumbo v5, "params"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "i":I
    .end local v4    # "jsonArr":Lorg/json/JSONArray;
    :cond_1
    move-object v2, v3

    .line 174
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v5, "Command"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    goto :goto_2
.end method
