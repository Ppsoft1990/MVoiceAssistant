.class Latz;
.super Latw;
.source "UserInteractNoticeBusinessHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Latw;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    const-string/jumbo v4, "UserInteractNoticeBusinessHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "directHandleNoticeAction action= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " businessMap= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_2

    .line 113
    :cond_0
    const-string/jumbo v2, "UserInteractNoticeBusinessHandler"

    const-string/jumbo v4, "directHandleNoticeAction()| param is illegal"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 137
    :cond_1
    :goto_0
    return v2

    .line 118
    :cond_2
    const-string/jumbo v4, "3016"

    invoke-static {v4}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-virtual {p0, p2}, Latz;->b(Ljava/util/Map;)Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;

    move-result-object v1

    .line 121
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;
    if-eqz v1, :cond_4

    .line 122
    const/16 v4, -0x2710

    invoke-virtual {p0, v1, v4}, Latz;->a(Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;I)I

    move-result v0

    .line 123
    .local v0, "result":I
    if-gez v0, :cond_3

    .line 125
    iget-object v3, p0, Latz;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lawm;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;Z)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v4, p0, Latz;->a:Landroid/content/Context;

    const-string/jumbo v5, "\u5df2\u521b\u5efa\u63d0\u9192"

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    .end local v0    # "result":I
    :cond_4
    const-string/jumbo v2, "UserInteractNoticeBusinessHandler"

    const-string/jumbo v4, "schedule business data is not legal"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 133
    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "businessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 27
    const-string/jumbo v3, "UserInteractNoticeBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleNoticeAction action= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " businessMap= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    const-string/jumbo v3, "UserInteractNoticeBusinessHandler"

    const-string/jumbo v4, "handleNoticeAction()| param is illegal"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 37
    :cond_1
    const-string/jumbo v3, "3001"

    invoke-static {v3}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    invoke-virtual {p0, p2}, Latz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "UserInteractNoticeBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notice open url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "3007"

    invoke-static {v3}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    const-string/jumbo v3, "UserInteractNoticeBusinessHandler"

    const-string/jumbo v4, "notice open main"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_3
    const-string/jumbo v3, "3011"

    invoke-static {v3}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    const-string/jumbo v3, "UserInteractNoticeBusinessHandler"

    const-string/jumbo v4, "notice open channel: WRONG ACTION"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_4
    const-string/jumbo v3, "3014"

    invoke-static {v3}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 57
    const-string/jumbo v3, "businessid"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "operationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 59
    const-string/jumbo v3, "telephone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "contacts"

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "message"

    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 63
    :cond_5
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v3

    const-string/jumbo v4, "telephone"

    .line 65
    invoke-virtual {v3, v4, v6}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 75
    :cond_6
    :goto_1
    const-string/jumbo v3, "UserInteractNoticeBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notice open operation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 66
    :cond_7
    const-string/jumbo v3, "schedule"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 67
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v3

    const-string/jumbo v4, "schedule"

    .line 69
    invoke-virtual {v3, v4, v6}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_1

    .line 72
    :cond_8
    invoke-virtual {p0, v0, p2}, Latz;->c(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 78
    .end local v0    # "operationId":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "3015"

    invoke-static {v3}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 80
    invoke-virtual {p0, p2}, Latz;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "pluginType":Ljava/lang/String;
    const-string/jumbo v3, "UserInteractNoticeBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notice open plugin type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 101
    .end local v1    # "pluginType":Ljava/lang/String;
    :cond_a
    const-string/jumbo v3, "UserInteractNoticeBusinessHandler"

    const-string/jumbo v4, "USER_INTERACT mode, while ACTION is not right"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
