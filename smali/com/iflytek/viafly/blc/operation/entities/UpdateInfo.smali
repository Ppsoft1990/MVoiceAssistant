.class public Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Lcom/iflytek/yd/business/OperationInfo;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateInfo"

.field private static final serialVersionUID:J = 0x1d158ee4fd493857L


# instance fields
.field private mBdTimeWin:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mNoticeDesc:Ljava/lang/String;

.field private mUpdateBrief:Ljava/lang/String;

.field private mUpdateDetail:Ljava/lang/String;

.field private mUpdateInfo:Ljava/lang/String;

.field private mUpdateShowId:Ljava/lang/String;

.field private mUpdateType:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

.field private mUpdateVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "updateType"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    .param p2, "updateInfo"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "updateVersion"    # Ljava/lang/String;
    .param p5, "updateDetail"    # Ljava/lang/String;
    .param p6, "updateShowId"    # Ljava/lang/String;
    .param p7, "updateBrief"    # Ljava/lang/String;
    .param p8, "noticeDesc"    # Ljava/lang/String;
    .param p9, "bdTimeWin"    # Ljava/lang/String;
    .param p10, "filePath"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateType:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 47
    iput-object p2, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateInfo:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mDownloadUrl:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateVersion:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateDetail:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateShowId:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateBrief:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mNoticeDesc:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mBdTimeWin:Ljava/lang/String;

    .line 55
    iput-object p10, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mFilePath:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static isAppValid(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 185
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getBdTimeWin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getNoticeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parser(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 19
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 80
    :goto_0
    return-object v2

    .line 62
    :cond_0
    const/4 v14, 0x0

    .line 64
    .local v14, "item":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v15, "json":Lorg/json/JSONObject;
    const-string/jumbo v17, "updatetype"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 66
    .local v16, "type":I
    const-string/jumbo v17, "updateinfo"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "updateInfo":Ljava/lang/String;
    const-string/jumbo v17, "downloadurl"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "downloadUrl":Ljava/lang/String;
    const-string/jumbo v17, "updateversion"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "updateVersion":Ljava/lang/String;
    const-string/jumbo v17, "updatedetail"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "updateDetail":Ljava/lang/String;
    const-string/jumbo v17, "updateshowid"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "updateShowId":Ljava/lang/String;
    const-string/jumbo v17, "updatebrief"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, "updateBrief":Ljava/lang/String;
    const-string/jumbo v17, "noticedesc"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "noticeDesc":Ljava/lang/String;
    const-string/jumbo v17, "dbtimewin"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, "bdTimeWin":Ljava/lang/String;
    const-string/jumbo v17, "filepath"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->values()[Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v17

    aget-object v3, v17, v16

    .line 76
    .local v3, "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    new-instance v2, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-direct/range {v2 .. v12}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;-><init>(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "item":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .local v2, "item":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    goto :goto_0

    .line 77
    .end local v2    # "item":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .end local v3    # "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    .end local v4    # "updateInfo":Ljava/lang/String;
    .end local v5    # "downloadUrl":Ljava/lang/String;
    .end local v6    # "updateVersion":Ljava/lang/String;
    .end local v7    # "updateDetail":Ljava/lang/String;
    .end local v8    # "updateShowId":Ljava/lang/String;
    .end local v9    # "updateBrief":Ljava/lang/String;
    .end local v10    # "noticeDesc":Ljava/lang/String;
    .end local v11    # "bdTimeWin":Ljava/lang/String;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v16    # "type":I
    .restart local v14    # "item":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    :catch_0
    move-exception v13

    .line 78
    .local v13, "e":Lorg/json/JSONException;
    const-string/jumbo v17, "UpdateInfo"

    const-string/jumbo v18, "parser error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v14

    .end local v14    # "item":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .restart local v2    # "item":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    goto :goto_0
.end method


# virtual methods
.method public getBdTimeWin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mBdTimeWin:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mNoticeDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateBrief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateBrief:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateShowId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateType:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    return-object v0
.end method

.method public getUpdateVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isNotificationShowType()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateShowId:Ljava/lang/String;

    const-string/jumbo v1, "2001"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setBdTimeWin(Ljava/lang/String;)V
    .locals 0
    .param p1, "bdTimeWin"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mBdTimeWin:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mDownloadUrl:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mFilePath:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setNoticeDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "noticeDesc"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mNoticeDesc:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setUpdateBrief(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateBrief"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateBrief:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setUpdateDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateDetail"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateDetail:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setUpdateInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateInfo"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateInfo:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setUpdateShowId(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateShowId"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateShowId:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setUpdateType(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)V
    .locals 0
    .param p1, "updateType"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateType:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 110
    return-void
.end method

.method public setUpdateVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateVersion"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateVersion:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "strJson":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "updatetype"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateType:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v3, "updateinfo"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateInfo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v3, "downloadurl"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v3, "updateversion"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateVersion:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v3, "updatedetail"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateDetail:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v3, "updateshowid"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateShowId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v3, "updatebrief"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mUpdateBrief:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v3, "noticedesc"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mNoticeDesc:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v3, "dbtimewin"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mBdTimeWin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v3, "filepath"

    iget-object v4, p0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "UpdateInfo"

    const-string/jumbo v4, "toJson error"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
