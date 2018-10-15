.class public Ladc;
.super Ljava/lang/Object;
.source "WidgetContactSearchListView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Lorg/json/JSONArray;

.field private e:Lcom/iflytek/base/contacts/entities/ContactSet;

.field private f:Labx;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[Z

.field private k:Z

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Labx;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultHandler"    # Labx;
    .param p3, "contactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Labx;",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "markTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Ladc;->k:Z

    .line 62
    iput-object p2, p0, Ladc;->f:Labx;

    .line 63
    iput-object p1, p0, Ladc;->l:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 65
    iget-object v0, p0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    iget-object v0, p0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->setName(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-direct {p0, p4}, Ladc;->a(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "markTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 79
    .local v4, "size":I
    if-lez v4, :cond_2

    .line 80
    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Ladc;->g:[Ljava/lang/String;

    .line 81
    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Ladc;->h:[Ljava/lang/String;

    .line 82
    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Ladc;->i:[Ljava/lang/String;

    .line 83
    new-array v6, v4, [Z

    iput-object v6, p0, Ladc;->j:[Z

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "markText":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 88
    const-string/jumbo v6, "`"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "splitTexts":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 91
    iget-object v6, p0, Ladc;->i:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    aput-object v7, v6, v0

    .line 93
    iget-object v6, p0, Ladc;->g:[Ljava/lang/String;

    aget-object v7, v5, v9

    aput-object v7, v6, v0

    .line 95
    aget-object v6, v5, v9

    const-string/jumbo v7, "&"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v6, "^"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 102
    .local v3, "phonePre":I
    if-lez v3, :cond_1

    .line 103
    iget-object v6, p0, Ladc;->h:[Ljava/lang/String;

    const-string/jumbo v7, "^"

    const-string/jumbo v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 104
    iget-object v6, p0, Ladc;->j:[Z

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v7

    aput-boolean v7, v6, v0

    .line 85
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "phonePre":I
    .end local v5    # "splitTexts":[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .restart local v2    # "phoneNumber":Ljava/lang/String;
    .restart local v3    # "phonePre":I
    .restart local v5    # "splitTexts":[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Ladc;->h:[Ljava/lang/String;

    aput-object v2, v6, v0

    .line 107
    iget-object v6, p0, Ladc;->j:[Z

    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v7

    aput-boolean v7, v6, v0

    goto :goto_1

    .line 114
    .end local v0    # "i":I
    .end local v1    # "markText":Ljava/lang/String;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "phonePre":I
    .end local v4    # "size":I
    .end local v5    # "splitTexts":[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Ladc;->f:Labx;

    invoke-virtual {v1}, Labx;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 336
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 340
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Ladc;->k:Z

    .line 74
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 9

    .prologue
    .line 299
    iget-object v6, p0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "contactIconUri":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 301
    const-string/jumbo v0, ""

    .line 304
    :cond_0
    iget-object v6, p0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "contactName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 306
    const-string/jumbo v1, ""

    .line 309
    :cond_1
    iput-object v0, p0, Ladc;->a:Ljava/lang/String;

    .line 310
    iput-object v1, p0, Ladc;->b:Ljava/lang/String;

    .line 311
    iget-boolean v6, p0, Ladc;->k:Z

    iput-boolean v6, p0, Ladc;->c:Z

    .line 314
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 315
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Ladc;->g:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 316
    iget-object v6, p0, Ladc;->g:[Ljava/lang/String;

    aget-object v6, v6, v3

    if-nez v6, :cond_2

    .line 315
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 320
    .local v5, "tempJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "contactTag"

    iget-object v7, p0, Ladc;->i:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string/jumbo v6, "contactNumber"

    iget-object v7, p0, Ladc;->g:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string/jumbo v6, "isMobileNumber"

    iget-object v7, p0, Ladc;->j:[Z

    aget-boolean v7, v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 323
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 326
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "tempJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "WidgetContactSearchListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    return-void

    .line 325
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    iput-object v4, p0, Ladc;->d:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 328
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "WidgetContactSearchListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 18
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string/jumbo v13, "WidgetContactSearchListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "------------>>>> action:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ,jsonArgs:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "args":Lorg/json/JSONArray;
    const-string/jumbo v13, "phoneItemClick"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 127
    const-string/jumbo v13, "WidgetContactSearchListView"

    const-string/jumbo v14, "phoneItemClick"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "arg1":Ljava/lang/String;
    const-string/jumbo v13, "_"

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "resultsStrings":[Ljava/lang/String;
    if-eqz v11, :cond_1

    array-length v13, v11

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    .line 133
    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 134
    .local v9, "pos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->h:[Ljava/lang/String;

    aget-object v8, v13, v9

    .line 135
    .local v8, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v13, "WidgetContactSearchListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "phoneNumber:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string/jumbo v13, "item"

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "right"

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 138
    :cond_0
    invoke-static {}, Laba;->a()Laba;

    move-result-object v13

    invoke-virtual {v13}, Laba;->b()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->l:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v14}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ladc;->f:Labx;

    invoke-virtual {v15}, Labx;->getViaAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v15

    invoke-static {v13, v14, v8, v15}, Labd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .end local v1    # "arg1":Ljava/lang/String;
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "pos":I
    .end local v11    # "resultsStrings":[Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v13, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v13}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    :goto_1
    return-object v13

    .line 141
    .restart local v1    # "arg1":Ljava/lang/String;
    .restart local v2    # "args":Lorg/json/JSONArray;
    .restart local v8    # "phoneNumber":Ljava/lang/String;
    .restart local v9    # "pos":I
    .restart local v11    # "resultsStrings":[Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v13}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "contactName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->f:Labx;

    invoke-virtual {v13}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "call"

    move-object/from16 v0, p0

    iget-object v15, v0, Ladc;->f:Labx;

    .line 144
    invoke-virtual {v15}, Labx;->getViaAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    const/16 v17, 0x1

    aput-object v8, v16, v17

    .line 142
    invoke-static/range {v13 .. v16}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 205
    .end local v1    # "arg1":Ljava/lang/String;
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v3    # "contactName":Ljava/lang/String;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "pos":I
    .end local v11    # "resultsStrings":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 206
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v13, "WidgetContactSearchListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v13, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v14, "JSON error"

    const-string/jumbo v15, ""

    invoke-direct {v13, v14, v15}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v1    # "arg1":Ljava/lang/String;
    .restart local v2    # "args":Lorg/json/JSONArray;
    .restart local v8    # "phoneNumber":Ljava/lang/String;
    .restart local v9    # "pos":I
    .restart local v11    # "resultsStrings":[Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v13, "left"

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v13}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v3

    .line 149
    .restart local v3    # "contactName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->f:Labx;

    invoke-virtual {v13}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "message"

    move-object/from16 v0, p0

    iget-object v15, v0, Ladc;->f:Labx;

    .line 151
    invoke-virtual {v15}, Labx;->getViaAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    const/16 v17, 0x1

    aput-object v8, v16, v17

    .line 149
    invoke-static/range {v13 .. v16}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 153
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 208
    .end local v1    # "arg1":Ljava/lang/String;
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v3    # "contactName":Ljava/lang/String;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "pos":I
    .end local v11    # "resultsStrings":[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 209
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "WidgetContactSearchListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "args":Lorg/json/JSONArray;
    :cond_4
    :try_start_3
    const-string/jumbo v13, "startCall"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 157
    const-string/jumbo v13, "WidgetContactSearchListView"

    const-string/jumbo v14, "startCall"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, "tel":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "nam":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 161
    .local v5, "isDefault":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_5

    .line 162
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->f:Labx;

    invoke-virtual {v13}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v6, v12}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v13, "true"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 165
    const-string/jumbo v13, "WidgetContactSearchListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "----->>isDefault: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->f:Labx;

    invoke-virtual {v13}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v13

    const-string/jumbo v14, "FD02019"

    invoke-virtual {v13, v14}, Labu;->a(Ljava/lang/String;)V

    .line 172
    :cond_5
    :goto_2
    invoke-static {}, Laba;->a()Laba;

    move-result-object v13

    invoke-virtual {v13}, Laba;->b()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->l:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Ladc;->f:Labx;

    invoke-virtual {v14}, Labx;->getViaAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v14

    invoke-static {v13, v6, v12, v14}, Labd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 167
    :cond_6
    const-string/jumbo v13, "false"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 168
    const-string/jumbo v13, "WidgetContactSearchListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "----->>isDefault: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->f:Labx;

    invoke-virtual {v13}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v13

    const-string/jumbo v14, "FD02020"

    invoke-virtual {v13, v14}, Labu;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_7
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v13

    invoke-virtual {v13, v12}, Lgx;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    .end local v5    # "isDefault":Ljava/lang/String;
    .end local v6    # "nam":Ljava/lang/String;
    .end local v12    # "tel":Ljava/lang/String;
    :cond_8
    const-string/jumbo v13, "startSmsRecog"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 183
    const-string/jumbo v13, "WidgetContactSearchListView"

    const-string/jumbo v14, "startSmsRecog"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->f:Labx;

    invoke-virtual {v13}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lwx;->a(Landroid/content/Context;)Lwx;

    move-result-object v13

    const-string/jumbo v14, "recent_contact_send_msg"

    invoke-virtual {v13, v14}, Lwx;->a(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->f:Labx;

    invoke-virtual {v13}, Labx;->getDialContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmcc.broadcast_stop_wake"

    invoke-virtual {v13, v14}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 187
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "name":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 189
    .restart local v12    # "tel":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u53d1\u77ed\u4fe1\u7ed9"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "rawtext":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-static {v13}, Labd;->b(Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->f:Labx;

    sget-object v14, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->start_new_task:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    invoke-virtual {v13, v14}, Labx;->Cancel(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)Z

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Ladc;->l:Landroid/content/Context;

    const-string/jumbo v14, "action_send_message_to_special"

    const/4 v15, 0x1

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    const/16 v17, 0x1

    aput-object v7, v16, v17

    const/16 v17, 0x2

    aput-object v12, v16, v17

    invoke-static/range {v13 .. v16}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 232
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-string/jumbo v0, "WidgetContactSearchListView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 217
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Ladc;->f:Labx;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Ladc;->f:Labx;

    invoke-virtual {v0}, Labx;->isHistoryResult()Z

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 11

    .prologue
    .line 238
    iget-object v8, p0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "contactIconUri":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 240
    const-string/jumbo v0, ""

    .line 243
    :cond_0
    iget-object v8, p0, Ladc;->e:Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "contactName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 245
    const-string/jumbo v1, ""

    .line 248
    :cond_1
    const/4 v5, 0x0

    .line 250
    .local v5, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v8, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string/jumbo v8, "contactIconUri"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v8, "contactName"

    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v8, "isCreateMode"

    iget-boolean v9, p0, Ladc;->k:Z

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 256
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 257
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Ladc;->g:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_3

    .line 258
    iget-object v8, p0, Ladc;->g:[Ljava/lang/String;

    aget-object v8, v8, v3

    if-nez v8, :cond_2

    .line 257
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    :cond_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 262
    .local v7, "tempJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "contactTag"

    iget-object v9, p0, Ladc;->i:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v8, "contactNumber"

    iget-object v9, p0, Ladc;->g:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v8, "isMobileNumber"

    iget-object v9, p0, Ladc;->j:[Z

    aget-boolean v9, v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 265
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 268
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "tempJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 269
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "e":Lorg/json/JSONException;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    const-string/jumbo v8, "WidgetContactSearchListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v5, 0x0

    .line 275
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    return-object v5

    .line 267
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    const-string/jumbo v8, "contactTagAndNumberArray"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .line 274
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 271
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v8, "WidgetContactSearchListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v5, 0x0

    goto :goto_3

    .line 271
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_4

    .line 268
    :catch_3
    move-exception v2

    goto :goto_2
.end method
