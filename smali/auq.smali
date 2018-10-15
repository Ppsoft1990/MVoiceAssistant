.class public Lauq;
.super Ljava/lang/Object;
.source "WidgetRemindConfirmView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/yd/speech/ViaAsrResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lauq;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lauq;->b:Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 41
    return-void
.end method

.method private a(JZ)Ljava/lang/String;
    .locals 7
    .param p1, "timeInMillis"    # J
    .param p3, "needYear"    # Z

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 70
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 72
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 75
    iget-object v3, p0, Lauq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lbaa;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "date":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lbaa;->c(J)Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lbaa;->g(J)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "week":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private a(J)Ljava/util/Calendar;
    .locals 3
    .param p1, "timeInMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 51
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 52
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 54
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 55
    return-object v0
.end method

.method private b(J)Z
    .locals 7
    .param p1, "today"    # J

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-direct {p0, p1, p2}, Lauq;->a(J)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 63
    .local v0, "todayYear":I
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, p1

    invoke-direct {p0, v4, v5}, Lauq;->a(J)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 64
    .local v1, "tomorrowYear":I
    sub-int v3, v1, v0

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canDelete()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    new-instance v5, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-direct {v5}, Lcom/iflytek/framework/business/components/SynthesizeComponents;-><init>()V

    .line 121
    .local v5, "synthesizeComponents":Lcom/iflytek/framework/business/components/SynthesizeComponents;
    invoke-virtual {v5}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->stop()V

    .line 122
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v6

    const-string/jumbo v7, "schedule"

    invoke-interface {v6, v7}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .line 123
    .local v0, "businessHandler":Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->setNeedChoose(Z)V

    .line 125
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 126
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, "index":I
    const-string/jumbo v6, "ScheduleWidgetRemindConfirmView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "------------------->>> index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v4, ""

    .line 130
    .local v4, "selected":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 131
    const-string/jumbo v4, "\u4eca\u5929"

    .line 136
    :goto_0
    iget-object v6, p0, Lauq;->a:Landroid/content/Context;

    const-string/jumbo v7, "select_sehedule_time"

    iget-object v8, p0, Lauq;->b:Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 138
    invoke-virtual {v8}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    .line 136
    invoke-static {v6, v7, v8, v9}, Lcom/iflytek/framework/business/speech/ManualSelectHandler;->selectHandle(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v0    # "businessHandler":Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .end local v2    # "index":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "selected":Ljava/lang/String;
    .end local v5    # "synthesizeComponents":Lcom/iflytek/framework/business/components/SynthesizeComponents;
    :goto_1
    new-instance v6, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v7, "OK"

    const-string/jumbo v8, "OK"

    invoke-direct {v6, v7, v8}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 133
    .restart local v0    # "businessHandler":Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .restart local v2    # "index":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "selected":Ljava/lang/String;
    .restart local v5    # "synthesizeComponents":Lcom/iflytek/framework/business/components/SynthesizeComponents;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "\u660e\u5929"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 140
    .end local v0    # "businessHandler":Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .end local v2    # "index":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "selected":Ljava/lang/String;
    .end local v5    # "synthesizeComponents":Lcom/iflytek/framework/business/components/SynthesizeComponents;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, "WidgetRemindConfirmView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 151
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 86
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 87
    .local v6, "today":J
    const-wide/32 v10, 0x5265c00

    add-long v8, v6, v10

    .line 89
    .local v8, "tomorrow":J
    invoke-direct {p0, v6, v7}, Lauq;->b(J)Z

    move-result v4

    .line 91
    .local v4, "needYear":Z
    const/4 v2, 0x0

    .line 93
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 96
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6, v7, v4}, Lauq;->a(JZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\uff0c \u4eca\u5929"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 97
    const/4 v5, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v8, v9, v4}, Lauq;->a(JZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\uff0c \u660e\u5929"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    const-string/jumbo v5, "array"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v5, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 108
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    const/4 v2, 0x0

    .line 107
    goto :goto_0

    .line 104
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v2, 0x0

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 101
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method
