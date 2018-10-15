.class public Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
.super Ljava/lang/Object;
.source "WidgetCustomerQuestionView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;


# instance fields
.field private context:Landroid/content/Context;

.field private mEditEnable:Z

.field private mIntentType:Ljava/lang/String;

.field private questionText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->mEditEnable:Z

    .line 32
    iput-object p1, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->context:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public canDelete()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public configInfo()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditEnable()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->mEditEnable:Z

    return v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->mIntentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, ""

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->mIntentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "WidgetCustomerQuestionView"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->questionText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->questionText:Ljava/lang/String;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public setEditEnable(Z)V
    .locals 0
    .param p1, "mEditEnable"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->mEditEnable:Z

    .line 29
    return-void
.end method

.method public setIntentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentType"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->mIntentType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->questionText:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->questionText:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "questionText"

    invoke-virtual {p0}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v3, "intentType"

    invoke-virtual {p0}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->getIntentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v3, "editEnable"

    invoke-virtual {p0}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->getEditEnable()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v3, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 91
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method
