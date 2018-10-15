.class public final Lcom/iflytek/framework/business/components/EventComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "EventComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_EventComponents"


# instance fields
.field private mRegistFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    const-string/jumbo v0, "Business_EventComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExec action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string/jumbo v0, "isEventCallback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/framework/business/components/EventComponents;->mRegistFlag:Z

    .line 32
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 80
    return-void
.end method

.method public varargs onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "systemEvent"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 36
    if-nez p1, :cond_1

    .line 37
    const-string/jumbo v3, "Business_EventComponents"

    const-string/jumbo v4, "onSystemEventChanged systemEvent is empty"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    .local v0, "callbackMethod":Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, "params":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/iflytek/framework/business/components/EventComponents$1;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 70
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/EventComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/iflytek/framework/business/components/EventComponents;->mRegistFlag:Z

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/EventComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v3

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/EventComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Business_EventComponents"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "onIncomingCall"

    .line 48
    goto :goto_1

    .line 50
    :pswitch_1
    const-string/jumbo v0, "onIncomingSms"

    .line 51
    goto :goto_1

    .line 53
    :pswitch_2
    const-string/jumbo v0, "onIncomingSchedule"

    .line 54
    goto :goto_1

    .line 56
    :pswitch_3
    const-string/jumbo v0, "onScreenChanged"

    .line 57
    const-string/jumbo v2, "screen_off"

    .line 58
    goto :goto_1

    .line 60
    :pswitch_4
    const-string/jumbo v0, "onScreenChanged"

    .line 61
    const-string/jumbo v2, "screen_on"

    .line 62
    goto :goto_1

    .line 64
    :pswitch_5
    const-string/jumbo v0, "onNetWorkChanged"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    goto :goto_1

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
