.class public Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
.super Ljava/lang/Object;
.source "BannerBaseModel.java"


# instance fields
.field private action:I

.field private actionparams:Ljava/lang/String;

.field private admark:Ljava/lang/String;

.field private admarkflag:I

.field private adtype:I

.field private clicknoticeurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;"
        }
    .end annotation
.end field

.field private clickurl:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private expirationtime:J

.field private id:Ljava/lang/String;

.field private ignorenoticeurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;"
        }
    .end annotation
.end field

.field private mathtml:Ljava/lang/String;

.field private mattype:I

.field private maturl:Ljava/lang/String;

.field private noticeurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;"
        }
    .end annotation
.end field

.field private platformid:I

.field private platformslotid:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModelFromJson(Lorg/json/JSONObject;)Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 189
    new-instance v0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;-><init>()V

    .line 190
    .local v0, "bannerBaseModel":Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;
    const-string/jumbo v4, "action"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setAction(I)V

    .line 191
    const-string/jumbo v4, "actionparams"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setActionparams(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v4, "adtype"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setAdtype(I)V

    .line 193
    const-string/jumbo v4, "admark"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setAdmark(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v4, "admarkflag"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setAdmarkflag(I)V

    .line 195
    const-string/jumbo v4, "clickurl"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setClickurl(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v4, "des"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setDes(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v4, "expirationtime"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setExpirationtime(J)V

    .line 198
    const-string/jumbo v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setId(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v4, "mattype"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setMattype(I)V

    .line 200
    const-string/jumbo v4, "maturl"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setMaturl(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v4, "mathtml"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setMathtml(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v4, "platformid"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setPlatformid(I)V

    .line 203
    const-string/jumbo v4, "platformslotid"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setPlatformslotid(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v4, "title"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setTitle(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v4, "type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setType(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v4, "clicknoticeurls"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->getModelFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "clickNoticeurls":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;>;"
    const-string/jumbo v4, "ignorenoticeurls"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->getModelFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 208
    .local v2, "ignoreNoticeurls":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;>;"
    const-string/jumbo v4, "noticeurls"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;->getModelFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "noticeurls":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;>;"
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setClicknoticeurls(Ljava/util/List;)V

    .line 210
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setNoticeurls(Ljava/util/List;)V

    .line 211
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->setIgnorenoticeurls(Ljava/util/List;)V

    .line 212
    return-object v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->action:I

    return v0
.end method

.method public getActionparams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->actionparams:Ljava/lang/String;

    return-object v0
.end method

.method public getAdmark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->admark:Ljava/lang/String;

    return-object v0
.end method

.method public getAdmarkflag()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->admarkflag:I

    return v0
.end method

.method public getAdtype()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->adtype:I

    return v0
.end method

.method public getClicknoticeurls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->clicknoticeurls:Ljava/util/List;

    return-object v0
.end method

.method public getClickurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->clickurl:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationtime()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->expirationtime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnorenoticeurls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->ignorenoticeurls:Ljava/util/List;

    return-object v0
.end method

.method public getMathtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->mathtml:Ljava/lang/String;

    return-object v0
.end method

.method public getMattype()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->mattype:I

    return v0
.end method

.method public getMaturl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->maturl:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeurls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->noticeurls:Ljava/util/List;

    return-object v0
.end method

.method public getPlatformid()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->platformid:I

    return v0
.end method

.method public getPlatformslotid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->platformslotid:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->action:I

    .line 42
    return-void
.end method

.method public setActionparams(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionparams"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->actionparams:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setAdmark(Ljava/lang/String;)V
    .locals 0
    .param p1, "admark"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->admark:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setAdmarkflag(I)V
    .locals 0
    .param p1, "admarkflag"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->admarkflag:I

    .line 74
    return-void
.end method

.method public setAdtype(I)V
    .locals 0
    .param p1, "adtype"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->adtype:I

    .line 58
    return-void
.end method

.method public setClicknoticeurls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "clicknoticeurls":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->clicknoticeurls:Ljava/util/List;

    .line 170
    return-void
.end method

.method public setClickurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickurl"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->clickurl:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->des:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setExpirationtime(J)V
    .locals 1
    .param p1, "expirationtime"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->expirationtime:J

    .line 98
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->id:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setIgnorenoticeurls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "ignorenoticeurls":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->ignorenoticeurls:Ljava/util/List;

    .line 178
    return-void
.end method

.method public setMathtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "mathtml"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->mathtml:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setMattype(I)V
    .locals 0
    .param p1, "mattype"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->mattype:I

    .line 114
    return-void
.end method

.method public setMaturl(Ljava/lang/String;)V
    .locals 0
    .param p1, "maturl"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->maturl:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setNoticeurls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "noticeurls":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/view/banner/model/NoticeUrlModel;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->noticeurls:Ljava/util/List;

    .line 186
    return-void
.end method

.method public setPlatformid(I)V
    .locals 0
    .param p1, "platformid"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->platformid:I

    .line 138
    return-void
.end method

.method public setPlatformslotid(Ljava/lang/String;)V
    .locals 0
    .param p1, "platformslotid"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->platformslotid:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->title:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/banner/model/BannerBaseModel;->type:Ljava/lang/String;

    .line 162
    return-void
.end method
