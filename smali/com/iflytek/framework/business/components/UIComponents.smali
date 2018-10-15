.class public final Lcom/iflytek/framework/business/components/UIComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "UIComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;,
        Lcom/iflytek/framework/business/components/UIComponents$TitleObj;,
        Lcom/iflytek/framework/business/components/UIComponents$ToastObj;,
        Lcom/iflytek/framework/business/components/UIComponents$UrlObj;,
        Lcom/iflytek/framework/business/components/UIComponents$SearchObj;
    }
.end annotation


# static fields
.field private static final MSG_OPEN_BROWSER:I = 0x2

.field private static final MSG_OPEN_SEARCH_BROWSER:I = 0x3

.field private static final MSG_SET_PAGE_FLOW_TITLE:I = 0x4

.field private static final MSG_SHOW_JSCALLBACK_INTERACTIVE_TOAST:I = 0x5

.field private static final MSG_SHOW_TOAST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Business_UIComponents"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 27
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    const-string/jumbo v24, "Business_UIComponents"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "onExec action = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " params = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string/jumbo v24, "showToast"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 53
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "content":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v16

    .line 55
    .local v16, "showType":I
    new-instance v11, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;-><init>(Lcom/iflytek/framework/business/components/UIComponents;Lcom/iflytek/framework/business/components/UIComponents$1;)V

    .line 56
    .local v11, "obj":Lcom/iflytek/framework/business/components/UIComponents$ToastObj;
    iput-object v6, v11, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;->mContent:Ljava/lang/String;

    .line 57
    move/from16 v0, v16

    iput v0, v11, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;->mShowType:I

    .line 58
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/iflytek/framework/business/components/UIComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 176
    .end local v6    # "content":Ljava/lang/String;
    .end local v11    # "obj":Lcom/iflytek/framework/business/components/UIComponents$ToastObj;
    .end local v16    # "showType":I
    :cond_0
    :goto_0
    const/16 v24, 0x0

    :goto_1
    return-object v24

    .line 66
    :cond_1
    const-string/jumbo v24, "showMockDialog"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/UIComponents;->getContext()Landroid/content/Context;

    move-result-object v24

    if-nez v24, :cond_2

    .line 68
    const-string/jumbo v24, "Business_UIComponents"

    const-string/jumbo v25, "mContext is null"

    invoke-static/range {v24 .. v25}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/16 v24, 0x0

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/UIComponents;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lazp;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string/jumbo v24, "showJscallbackInteractiveToast"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 75
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    .restart local v6    # "content":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "interAction":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 78
    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    .line 80
    :cond_5
    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "jsCallBack":Ljava/lang/String;
    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v15

    .line 82
    .local v15, "showTime":I
    new-instance v11, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;-><init>(Lcom/iflytek/framework/business/components/UIComponents;Lcom/iflytek/framework/business/components/UIComponents$1;)V

    .line 83
    .local v11, "obj":Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;
    iput-object v6, v11, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mContent:Ljava/lang/String;

    .line 84
    iput-object v7, v11, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mAction:Ljava/lang/String;

    .line 85
    iput-object v8, v11, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mJsCallBack:Ljava/lang/String;

    .line 86
    iput v15, v11, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mShowTime:I

    .line 87
    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/iflytek/framework/business/components/UIComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "interAction":Ljava/lang/String;
    .end local v8    # "jsCallBack":Ljava/lang/String;
    .end local v11    # "obj":Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;
    .end local v15    # "showTime":I
    :cond_6
    const-string/jumbo v24, "openBrowser"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 90
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 91
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 92
    .local v18, "titleName":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 93
    .local v21, "url":Ljava/lang/String;
    new-instance v22, Lcom/iflytek/framework/business/components/UIComponents$UrlObj;

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/UIComponents$UrlObj;-><init>(Lcom/iflytek/framework/business/components/UIComponents;Lcom/iflytek/framework/business/components/UIComponents$1;)V

    .line 94
    .local v22, "urlObj":Lcom/iflytek/framework/business/components/UIComponents$UrlObj;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/iflytek/framework/business/components/UIComponents$UrlObj;->mTitle:Ljava/lang/String;

    .line 95
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/iflytek/framework/business/components/UIComponents$UrlObj;->mUrl:Ljava/lang/String;

    .line 96
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/business/components/UIComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 99
    .end local v18    # "titleName":Ljava/lang/String;
    .end local v21    # "url":Ljava/lang/String;
    .end local v22    # "urlObj":Lcom/iflytek/framework/business/components/UIComponents$UrlObj;
    :cond_7
    const-string/jumbo v24, "isNewUserGuide"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 100
    invoke-static {}, Lil;->a()Lil;

    move-result-object v24

    const-string/jumbo v25, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual/range {v24 .. v25}, Lil;->d(Ljava/lang/String;)I

    move-result v12

    .line 102
    .local v12, "oldVersionCode":I
    if-nez v12, :cond_8

    .line 103
    new-instance v24, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v25, "OK"

    const/16 v26, 0x1

    invoke-direct/range {v24 .. v26}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 105
    :cond_8
    new-instance v24, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v25, "OK"

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 108
    .end local v12    # "oldVersionCode":I
    :cond_9
    const-string/jumbo v24, "openSearchBrowser"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 109
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "searchContent":Ljava/lang/String;
    const/4 v3, 0x0

    .line 111
    .local v3, "channel":Ljava/lang/String;
    move-object v9, v13

    .line 112
    .local v9, "keyWord":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 113
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    .line 116
    const/16 v24, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    :cond_b
    new-instance v14, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v14, v0, v1}, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;-><init>(Lcom/iflytek/framework/business/components/UIComponents;Lcom/iflytek/framework/business/components/UIComponents$1;)V

    .line 119
    .local v14, "searchObj":Lcom/iflytek/framework/business/components/UIComponents$SearchObj;
    iput-object v3, v14, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;->mChannel:Ljava/lang/String;

    .line 120
    iput-object v13, v14, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;->mSearchContent:Ljava/lang/String;

    .line 121
    iput-object v9, v14, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;->mKeyWord:Ljava/lang/String;

    .line 122
    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Lcom/iflytek/framework/business/components/UIComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 124
    .end local v3    # "channel":Ljava/lang/String;
    .end local v9    # "keyWord":Ljava/lang/String;
    .end local v13    # "searchContent":Ljava/lang/String;
    .end local v14    # "searchObj":Lcom/iflytek/framework/business/components/UIComponents$SearchObj;
    :cond_c
    const-string/jumbo v24, "setPageFlowTitle"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 125
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 126
    .local v17, "text":Ljava/lang/String;
    new-instance v19, Lcom/iflytek/framework/business/components/UIComponents$TitleObj;

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/UIComponents$TitleObj;-><init>(Lcom/iflytek/framework/business/components/UIComponents;Lcom/iflytek/framework/business/components/UIComponents$1;)V

    .line 127
    .local v19, "titleObj":Lcom/iflytek/framework/business/components/UIComponents$TitleObj;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/iflytek/framework/business/components/UIComponents$TitleObj;->mText:Ljava/lang/String;

    .line 128
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/business/components/UIComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 129
    .end local v17    # "text":Ljava/lang/String;
    .end local v19    # "titleObj":Lcom/iflytek/framework/business/components/UIComponents$TitleObj;
    :cond_d
    const-string/jumbo v24, "addCommonResultMessage"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 130
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 131
    .restart local v6    # "content":Ljava/lang/String;
    const-string/jumbo v21, ""

    .line 132
    .restart local v21    # "url":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_e

    .line 133
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v21

    .line 135
    :cond_e
    const-string/jumbo v20, ""

    .line 136
    .local v20, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 137
    const/16 v24, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v20

    .line 140
    :cond_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_10

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 141
    :cond_10
    const-string/jumbo v24, "Business_UIComponents"

    const-string/jumbo v25, "content or url is null, return"

    invoke-static/range {v24 .. v25}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 145
    :cond_11
    new-instance v5, Laef;

    invoke-direct {v5, v6}, Laef;-><init>(Ljava/lang/String;)V

    .line 147
    .local v5, "commonMessage":Laef;
    const-string/jumbo v24, "map"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 148
    const v24, 0x7f020120

    move/from16 v0, v24

    iput v0, v5, Laef;->a:I

    .line 151
    :cond_12
    move-object/from16 v23, v21

    .line 153
    .local v23, "urlString":Ljava/lang/String;
    new-instance v24, Lcom/iflytek/framework/business/components/UIComponents$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/UIComponents$1;-><init>(Lcom/iflytek/framework/business/components/UIComponents;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Laef;->a(Ljava/lang/Runnable;)V

    .line 160
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_0

    .line 161
    .end local v5    # "commonMessage":Laef;
    .end local v6    # "content":Ljava/lang/String;
    .end local v20    # "type":Ljava/lang/String;
    .end local v21    # "url":Ljava/lang/String;
    .end local v23    # "urlString":Ljava/lang/String;
    :cond_13
    const-string/jumbo v24, "addAnswerMessage"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 162
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 163
    .restart local v6    # "content":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    .line 165
    .local v10, "needBroadcast":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 166
    const-string/jumbo v24, "Business_UIComponents"

    const-string/jumbo v25, "content is null, return"

    invoke-static/range {v24 .. v25}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 170
    :cond_14
    new-instance v4, Laec;

    invoke-direct {v4, v6}, Laec;-><init>(Ljava/lang/String;)V

    .line 171
    .local v4, "chatLeftMessage":Laec;
    iput-boolean v10, v4, Laec;->b:Z

    .line 173
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_0
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/iflytek/framework/business/components/AbsComponents;->onHandleMessage(Landroid/os/Message;)V

    .line 200
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    const-string/jumbo v5, "Business_UIComponents"

    const-string/jumbo v6, "MSG_SHOW_TOAST"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;

    if-eqz v5, :cond_0

    .line 204
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;

    .line 205
    .local v2, "obj":Lcom/iflytek/framework/business/components/UIComponents$ToastObj;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/UIComponents;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 206
    iget v5, v2, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;->mShowType:I

    if-nez v5, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/UIComponents;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;->mContent:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/UIComponents;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;->mContent:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 215
    .end local v2    # "obj":Lcom/iflytek/framework/business/components/UIComponents$ToastObj;
    :pswitch_1
    const-string/jumbo v5, "Business_UIComponents"

    const-string/jumbo v6, "MSG_OPEN_BROWSER"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/iflytek/framework/business/components/UIComponents$UrlObj;

    if-eqz v5, :cond_0

    .line 217
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/framework/business/components/UIComponents$UrlObj;

    .line 218
    .local v2, "obj":Lcom/iflytek/framework/business/components/UIComponents$UrlObj;
    iget-object v5, v2, Lcom/iflytek/framework/business/components/UIComponents$UrlObj;->mTitle:Ljava/lang/String;

    iget-object v6, v2, Lcom/iflytek/framework/business/components/UIComponents$UrlObj;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/iflytek/framework/business/components/UIComponents;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v2    # "obj":Lcom/iflytek/framework/business/components/UIComponents$UrlObj;
    :pswitch_2
    const-string/jumbo v5, "Business_UIComponents"

    const-string/jumbo v6, "MSG_OPEN_SEARCH_BROWSER"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;

    if-eqz v5, :cond_0

    .line 224
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;

    .line 225
    .local v3, "searchObj":Lcom/iflytek/framework/business/components/UIComponents$SearchObj;
    iget-object v5, v3, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;->mSearchContent:Ljava/lang/String;

    iget-object v6, v3, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;->mChannel:Ljava/lang/String;

    iget-object v7, v3, Lcom/iflytek/framework/business/components/UIComponents$SearchObj;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/iflytek/framework/business/components/UIComponents;->openSearchBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v3    # "searchObj":Lcom/iflytek/framework/business/components/UIComponents$SearchObj;
    :pswitch_3
    const-string/jumbo v5, "Business_UIComponents"

    const-string/jumbo v6, "MSG_SET_PAGE_FLOW_TITLE"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/iflytek/framework/business/components/UIComponents$TitleObj;

    if-eqz v5, :cond_0

    .line 231
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/iflytek/framework/business/components/UIComponents$TitleObj;

    .line 232
    .local v4, "titleObj":Lcom/iflytek/framework/business/components/UIComponents$TitleObj;
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 233
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v5

    invoke-virtual {v5}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 235
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v5

    invoke-virtual {v5}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v5

    iget-object v6, v4, Lcom/iflytek/framework/business/components/UIComponents$TitleObj;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->setPageFlowTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    .end local v4    # "titleObj":Lcom/iflytek/framework/business/components/UIComponents$TitleObj;
    :pswitch_4
    const-string/jumbo v5, "Business_UIComponents"

    const-string/jumbo v6, "MSG_SHOW_JSCALLBACK_INTERACTIVE_TOAST"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;

    if-eqz v5, :cond_0

    .line 242
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;

    .line 243
    .local v2, "obj":Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;-><init>()V

    .line 244
    .local v0, "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    iget-object v5, v2, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setToastTip(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 245
    iget-object v5, v2, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setBtnContent(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 246
    iget v5, v2, Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;->mShowTime:I

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setToastDuration(I)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 247
    new-instance v5, Lcom/iflytek/framework/business/components/UIComponents$2;

    invoke-direct {v5, p0, v0, v2}, Lcom/iflytek/framework/business/components/UIComponents$2;-><init>(Lcom/iflytek/framework/business/components/UIComponents;Lcom/iflytek/viafly/ui/InteractiveToast$Builder;Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;)V

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setOnClickListener(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 258
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/UIComponents;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Landroid/app/Activity;)Lcom/iflytek/viafly/ui/InteractiveToast;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 260
    .end local v0    # "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    .end local v2    # "obj":Lcom/iflytek/framework/business/components/UIComponents$InterActiveJsToastObject;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Business_UIComponents"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 194
    return-void
.end method

.method public onUIChanged(Lcom/iflytek/framework/business/entities/UIEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/UIEvent;

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const-string/jumbo v0, "Business_UIComponents"

    const-string/jumbo v1, "onUIChanged event is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string/jumbo v0, "Business_UIComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUIChanged event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string/jumbo v0, "Business_UIComponents"

    const-string/jumbo v1, "openBrowser url is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openSearchBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;
    .param p3, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string/jumbo v0, "Business_UIComponents"

    const-string/jumbo v1, "openSearchBrowser searchText is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/UIComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lbbt;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
