.class public Lada;
.super Ljava/lang/Object;
.source "WidgetContactCreateView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lacp;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lacp;Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 2
    .param p1, "pResultHandler"    # Lacp;
    .param p2, "contactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v1, ""

    iput-object v1, p0, Lada;->a:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lada;->c:Lacp;

    .line 53
    invoke-interface {p1}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lada;->d:Landroid/content/Context;

    .line 54
    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lada;->a:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lada;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 56
    const-string/jumbo v1, ""

    iput-object v1, p0, Lada;->a:Ljava/lang/String;

    .line 58
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lada;->b:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 61
    const-string/jumbo v0, ""

    .line 63
    :cond_1
    iget-object v1, p0, Lada;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method static synthetic a(Lada;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lada;

    .prologue
    .line 43
    iget-object v0, p0, Lada;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lada;->c:Lacp;

    invoke-interface {v1}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 279
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->c()V

    .line 283
    :cond_0
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 32
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string/jumbo v27, "ContactCreateView"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "------------>>>> action:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " ,jsonArgs:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 90
    const-string/jumbo v27, "contactSave"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 91
    const-string/jumbo v27, "ContactCreateView"

    const-string/jumbo v28, "----------------------->>> save"

    invoke-static/range {v27 .. v28}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 95
    .local v7, "args":Lorg/json/JSONArray;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "contactName":Ljava/lang/String;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v14

    .line 97
    .local v14, "jsonNumbers":Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 98
    .local v18, "numbers":[Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v17, "numberArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v22, "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v12, v0, :cond_4

    .line 102
    const-string/jumbo v27, "ContactCreateView"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "----------------------->>> contactName:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string/jumbo v27, "ContactCreateView"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "----------------------->>> contactNumber:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v18, v12

    .line 105
    aget-object v27, v18, v12

    const-string/jumbo v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 100
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 108
    :cond_0
    aget-object v27, v18, v12

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string/jumbo v15, ""

    .line 110
    .local v15, "location":Ljava/lang/String;
    aget-object v27, v18, v12

    invoke-static/range {v27 .. v27}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 111
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v27

    aget-object v28, v18, v12

    invoke-static/range {v27 .. v28}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 112
    .local v20, "result":Ljava/lang/String;
    if-nez v20, :cond_2

    .line 113
    const-string/jumbo v15, ""

    .line 120
    .end local v20    # "result":Ljava/lang/String;
    :goto_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "`"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v18, v12

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 121
    .local v23, "showNumber":Ljava/lang/String;
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    .end local v7    # "args":Lorg/json/JSONArray;
    .end local v8    # "contactName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "jsonNumbers":Lorg/json/JSONArray;
    .end local v15    # "location":Ljava/lang/String;
    .end local v17    # "numberArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "numbers":[Ljava/lang/String;
    .end local v22    # "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "showNumber":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 158
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 196
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_3
    new-instance v27, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct/range {v27 .. v27}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    return-object v27

    .line 115
    .restart local v7    # "args":Lorg/json/JSONArray;
    .restart local v8    # "contactName":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "jsonNumbers":Lorg/json/JSONArray;
    .restart local v15    # "location":Ljava/lang/String;
    .restart local v17    # "numberArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "numbers":[Ljava/lang/String;
    .restart local v20    # "result":Ljava/lang/String;
    .restart local v22    # "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v15, v20

    goto :goto_2

    .line 118
    .end local v20    # "result":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v15, "\u56fa\u8bdd"

    goto :goto_2

    .line 123
    .end local v15    # "location":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->d:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lhe;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v20

    .line 124
    .local v20, "result":J
    const-wide/16 v28, -0x1

    cmp-long v27, v28, v20

    if-nez v27, :cond_5

    .line 125
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->d:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "write_contact"

    invoke-virtual/range {v27 .. v29}, Laqv;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 127
    :cond_5
    new-instance v19, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->d:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v19, "questionView":Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
    const-string/jumbo v27, "\u4fdd\u5b58"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->setText(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-wide/from16 v2, v28

    invoke-interface {v0, v1, v2, v3}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 131
    const-string/jumbo v25, "\u8054\u7cfb\u4eba\u65b0\u5efa\u6210\u529f"

    .line 132
    .local v25, "tipText":Ljava/lang/String;
    new-instance v6, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->d:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v6, v0, v1, v2}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;-><init>(Landroid/content/Context;Lcom/iflytek/framework/ui/container/WidgetContainerInterface;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 133
    .local v6, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x96

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-interface {v0, v6, v1, v2}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-wide/16 v30, 0x96

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lacp;->speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 137
    new-instance v9, Lcom/iflytek/base/contacts/entities/ContactSet;

    const-string/jumbo v27, ""

    move-object/from16 v0, v27

    invoke-direct {v9, v8, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v9, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    const-string/jumbo v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->setContactIconUri(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 140
    const/4 v13, 0x0

    .line 141
    .local v13, "isNumberEmpty":Z
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 142
    .local v16, "number":Ljava/lang/String;
    if-eqz v16, :cond_6

    const-string/jumbo v28, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    :cond_6
    const/4 v13, 0x1

    .line 143
    :goto_5
    goto :goto_4

    .line 142
    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    .line 145
    .end local v16    # "number":Ljava/lang/String;
    :cond_8
    if-nez v13, :cond_9

    .line 146
    new-instance v26, Ladc;

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->d:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    check-cast v27, Labx;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v9, v3}, Ladc;-><init>(Landroid/content/Context;Labx;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/util/List;)V

    .line 149
    .local v26, "widgetContactSearchListView":Ladc;
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ladc;->a(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x12c

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-interface {v0, v1, v2, v3}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 153
    .end local v26    # "widgetContactSearchListView":Ladc;
    :cond_9
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 162
    .end local v6    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v7    # "args":Lorg/json/JSONArray;
    .end local v8    # "contactName":Ljava/lang/String;
    .end local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v12    # "i":I
    .end local v13    # "isNumberEmpty":Z
    .end local v14    # "jsonNumbers":Lorg/json/JSONArray;
    .end local v17    # "numberArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "numbers":[Ljava/lang/String;
    .end local v19    # "questionView":Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
    .end local v20    # "result":J
    .end local v22    # "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "tipText":Ljava/lang/String;
    :cond_a
    const-string/jumbo v27, "contactCancel"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 163
    const-string/jumbo v27, "ContactCreateView"

    const-string/jumbo v28, "----------------------->>> cancel"

    invoke-static/range {v27 .. v28}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v19, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->d:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;-><init>(Landroid/content/Context;)V

    .line 166
    .restart local v19    # "questionView":Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
    const-string/jumbo v27, "\u53d6\u6d88"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->setText(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-wide/from16 v2, v28

    invoke-interface {v0, v1, v2, v3}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 169
    const-string/jumbo v25, "\u64cd\u4f5c\u5df2\u53d6\u6d88"

    .line 170
    .restart local v25    # "tipText":Ljava/lang/String;
    new-instance v6, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->d:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v6, v0, v1, v2}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;-><init>(Landroid/content/Context;Lcom/iflytek/framework/ui/container/WidgetContainerInterface;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 171
    .restart local v6    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x96

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-interface {v0, v6, v1, v2}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-wide/16 v30, 0x96

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lacp;->speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Lacp;->cacheScenceData(Lacf;)V

    .line 177
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    goto/16 :goto_3

    .line 178
    .end local v6    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v19    # "questionView":Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
    .end local v25    # "tipText":Ljava/lang/String;
    :cond_b
    const-string/jumbo v27, "stopVoiceInteraction"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lada;->c:Lacp;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v10

    check-cast v10, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .line 182
    .local v10, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    if-eqz v10, :cond_1

    .line 183
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->setNeedSoftKeyboardShow(Z)V

    goto/16 :goto_3

    .line 185
    .end local v10    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    :cond_c
    const-string/jumbo v27, "showSoftKeyboard"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 186
    new-instance v24, Ljava/util/Timer;

    invoke-direct/range {v24 .. v24}, Ljava/util/Timer;-><init>()V

    .line 187
    .local v24, "timer":Ljava/util/Timer;
    new-instance v27, Lada$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lada$1;-><init>(Lada;)V

    const-wide/16 v28, 0x12c

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 226
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string/jumbo v0, "WidgetContactCreateView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 202
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 236
    .local v0, "contactNumbers":Lorg/json/JSONArray;
    iget-object v5, p0, Lada;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 242
    .end local v0    # "contactNumbers":Lorg/json/JSONArray;
    .end local v4    # "number":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 243
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v1, "e":Lorg/json/JSONException;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 244
    const/4 v2, 0x0

    .line 249
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v2

    .line 239
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "contactNumbers":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    const-string/jumbo v5, "contactName"

    iget-object v6, p0, Lada;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string/jumbo v5, "contactNumberList"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v5, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 248
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 245
    .end local v0    # "contactNumbers":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    const/4 v2, 0x0

    goto :goto_2

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 242
    :catch_3
    move-exception v1

    goto :goto_1
.end method
