.class public Lcom/iflytek/viafly/account/model/UserInfoParser;
.super Ljava/lang/Object;
.source "UserInfoParser.java"


# static fields
.field private static final COMPLETE_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UserInfoParser"


# instance fields
.field public final filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/ViaFly/UserHead/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoParser;->filePath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private checkIsNeedDownloadImage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/account/model/UserInfoParser;->getLocalProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/account/model/UserInfoParser;->getLocalProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLocalProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iflytek/viafly/account/model/UserInfoParser;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    :goto_1
    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UserInfoParser"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public parserUserInfo(Ljava/lang/String;)Lcom/iflytek/viafly/account/entity/User;
    .locals 21
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const/16 v19, 0x0

    .line 100
    :goto_0
    return-object v19

    .line 43
    :cond_0
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v18, "profileObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "infofull"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 46
    .local v13, "isCompleteString":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 47
    .local v14, "isCompleteValue":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1

    const/4 v12, 0x1

    .line 49
    .local v12, "isComplete":Z
    :goto_1
    const-string/jumbo v2, "data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, "dataResult":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    const/16 v19, 0x0

    goto :goto_0

    .line 47
    .end local v10    # "dataResult":Ljava/lang/String;
    .end local v12    # "isComplete":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 54
    .restart local v10    # "dataResult":Ljava/lang/String;
    .restart local v12    # "isComplete":Z
    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v9, "dataObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "caller"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 57
    .local v16, "phoneNum":Ljava/lang/String;
    const-string/jumbo v2, "userid"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 63
    .local v20, "userId":Ljava/lang/String;
    const-string/jumbo v2, "operator"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, "operator":Ljava/lang/String;
    invoke-static {v15}, Lmz;->j(Ljava/lang/String;)V

    .line 66
    new-instance v19, Lcom/iflytek/viafly/account/entity/User;

    invoke-direct/range {v19 .. v19}, Lcom/iflytek/viafly/account/entity/User;-><init>()V

    .line 67
    .local v19, "user":Lcom/iflytek/viafly/account/entity/User;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setPhoneNum(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {v19 .. v20}, Lcom/iflytek/viafly/account/entity/User;->setUserId(Ljava/lang/String;)V

    .line 70
    new-instance v17, Lcom/iflytek/viafly/account/entity/UserProfile;

    invoke-direct/range {v17 .. v17}, Lcom/iflytek/viafly/account/entity/UserProfile;-><init>()V

    .line 71
    .local v17, "profile":Lcom/iflytek/viafly/account/entity/UserProfile;
    const-string/jumbo v2, "headlogo"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "portraitUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/account/entity/UserProfile;->setPortraitUrl(Ljava/lang/String;)V

    .line 74
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/account/model/UserInfoParser;->getLocalProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/account/entity/UserProfile;->setPortraitLocalPath(Ljava/lang/String;)V

    .line 75
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/account/model/UserInfoParser;->checkIsNeedDownloadImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    const-string/jumbo v2, "UserInfoParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start download Image url is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    const/16 v3, 0x17

    const-string/jumbo v4, "share_pic"

    const/4 v5, 0x0

    const-string/jumbo v6, "\u4fdd\u5b58\u56fe\u7247"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/viafly/account/model/UserInfoParser;->filePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    const-string/jumbo v2, "nickname"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/account/entity/UserProfile;->setNickName(Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/iflytek/viafly/account/entity/UserProfile;->setUserProfileComplete(Z)V

    .line 93
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setUserProfile(Lcom/iflytek/viafly/account/entity/UserProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 96
    .end local v7    # "portraitUrl":Ljava/lang/String;
    .end local v9    # "dataObj":Lorg/json/JSONObject;
    .end local v10    # "dataResult":Ljava/lang/String;
    .end local v12    # "isComplete":Z
    .end local v13    # "isCompleteString":Ljava/lang/String;
    .end local v14    # "isCompleteValue":I
    .end local v15    # "operator":Ljava/lang/String;
    .end local v16    # "phoneNum":Ljava/lang/String;
    .end local v17    # "profile":Lcom/iflytek/viafly/account/entity/UserProfile;
    .end local v18    # "profileObj":Lorg/json/JSONObject;
    .end local v19    # "user":Lcom/iflytek/viafly/account/entity/User;
    .end local v20    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 97
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UserInfoParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/16 v19, 0x0

    goto/16 :goto_0
.end method
