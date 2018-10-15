.class public Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;
.super Ljava/lang/Object;
.source "NoticeUrlModel.java"


# instance fields
.field private reporttime:I

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModelFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 44
    if-nez p0, :cond_1

    move-object v4, v5

    .line 61
    :cond_0
    :goto_0
    return-object v4

    .line 47
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v4, "noticeUrlModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 49
    .local v2, "len":I
    if-gtz v2, :cond_2

    move-object v4, v5

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 54
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;

    invoke-direct {v3}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;-><init>()V

    .line 55
    .local v3, "noticeUrlModel":Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;
    const-string/jumbo v5, "type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->setType(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v5, "reporttime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->setReporttime(I)V

    .line 57
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->setUrl(Ljava/lang/String;)V

    .line 59
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getReporttime()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->reporttime:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setReporttime(I)V
    .locals 0
    .param p1, "reporttime"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->reporttime:I

    .line 41
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->type:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->url:Ljava/lang/String;

    .line 33
    return-void
.end method
