.class public final Lcom/iflytek/framework/business/components/CallAndSmsComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "CallAndSmsComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_CallAndSmsComponents"


# instance fields
.field private mCallManager:Lgx;

.field private mContactManager:Lhe;

.field private mSmsManager:Lhp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method public hasContacts(Lcom/iflytek/yd/speech/ViaAsrResult;Landroid/content/Context;)Z
    .locals 10
    .param p1, "viaAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 109
    const-string/jumbo v8, "Business_CallAndSmsComponents"

    const-string/jumbo v9, "hasContacts asrResult is empty"

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    :goto_0
    return v7

    .line 114
    :cond_1
    :try_start_0
    new-instance v5, Lzx;

    invoke-direct {v5}, Lzx;-><init>()V

    .line 116
    .local v5, "recognizeFilter":Lcom/iflytek/yd/speech/RecognizeFilter;
    invoke-virtual {v5, p1}, Lcom/iflytek/yd/speech/RecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v6

    check-cast v6, Laau;

    .line 117
    .local v6, "result":Laau;
    if-eqz v6, :cond_0

    .line 118
    invoke-virtual {v6}, Laau;->c()Ljava/util/List;

    move-result-object v4

    .line 119
    .local v4, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 121
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {p0, v3, p2}, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->queryContactItems(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 124
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lez v8, :cond_2

    .line 125
    const/4 v7, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "recognizeFilter":Lcom/iflytek/yd/speech/RecognizeFilter;
    .end local v6    # "result":Laau;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    const-string/jumbo v9, "Business_CallAndSmsComponents"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onExec action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " params = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string/jumbo v9, "sendSms"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "number":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "content":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    .line 51
    .local v8, "simType":I
    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 52
    .local v7, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 53
    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 55
    :cond_0
    invoke-virtual {p0, v6, v1, v7}, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->sendSms(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 81
    .end local v1    # "content":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v8    # "simType":I
    :cond_1
    :goto_0
    const/4 v9, 0x0

    :goto_1
    return-object v9

    .line 57
    :cond_2
    const-string/jumbo v9, "startCall"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 58
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 59
    .restart local v6    # "number":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    .line 60
    .restart local v8    # "simType":I
    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 61
    .restart local v7    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 62
    sget-object v7, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 64
    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->startCall(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 66
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v8    # "simType":I
    :cond_4
    const-string/jumbo v9, "queryContactNumber"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->queryContactItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 69
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "name"

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 72
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 74
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 77
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_5
    const-string/jumbo v9, "numbers"

    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    new-instance v9, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v10, "OK"

    invoke-direct {v9, v10, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 193
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mCallManager:Lgx;

    .line 194
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mSmsManager:Lhp;

    .line 195
    invoke-static {p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mContactManager:Lhe;

    .line 196
    return-void
.end method

.method public queryContactItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const-string/jumbo v1, "Business_CallAndSmsComponents"

    const-string/jumbo v2, "queryContactItems name is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mContactManager:Lhe;

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mContactManager:Lhe;

    invoke-virtual {v0, p1}, Lhe;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public queryContactItems(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string/jumbo v0, "Business_CallAndSmsComponents"

    const-string/jumbo v1, "queryContactItems name is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mContactManager:Lhe;

    if-nez v0, :cond_1

    .line 185
    invoke-static {p2}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mContactManager:Lhe;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mContactManager:Lhe;

    invoke-virtual {v0, p1}, Lhe;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :cond_0
    const-string/jumbo v0, "Business_CallAndSmsComponents"

    const-string/jumbo v1, "sendSms number or content is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mSmsManager:Lhp;

    if-eqz v0, :cond_1

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 100
    .local v5, "card":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-eqz p3, :cond_3

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p3, v0, :cond_3

    .line 101
    move-object v5, p3

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mSmsManager:Lhp;

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Lhr;)V

    goto :goto_0
.end method

.method public startCall(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string/jumbo v0, "Business_CallAndSmsComponents"

    const-string/jumbo v1, "startCall number is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mCallManager:Lgx;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->mCallManager:Lgx;

    invoke-virtual {v0, p1, p2}, Lgx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0
.end method
