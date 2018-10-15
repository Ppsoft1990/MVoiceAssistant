.class public final Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "SmartSpeechResultFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartSpeechResultFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 11
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 28
    if-nez p1, :cond_1

    .line 29
    const-string/jumbo v9, "SmartSpeechResultFilter"

    const-string/jumbo v10, "recognize result is null"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v6, 0x0

    .line 72
    :cond_0
    :goto_0
    return-object v6

    .line 33
    :cond_1
    new-instance v6, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;

    invoke-direct {v6}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;-><init>()V

    .line 35
    .local v6, "smartSpeechResult":Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;
    :try_start_0
    invoke-virtual {p0, v6, p1}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v8

    .line 37
    .local v8, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v8}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 38
    .local v5, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v4

    .line 39
    .local v4, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 40
    .local v3, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_2

    .line 41
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v10, "content"

    .line 42
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 43
    .local v7, "subElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 44
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setContent(Ljava/lang/String;)V

    .line 48
    .end local v7    # "subElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 49
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 50
    .local v2, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "name"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v6, v1}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setName(Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 53
    const-string/jumbo v9, "SmartSpeechResultFilter"

    const-string/jumbo v10, "filterRecognizeResult obj name is empty"

    invoke-static {v9, v10}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SmartSpeechResultFilter"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v3    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v4    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v5    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v8    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_3
    :try_start_1
    const-string/jumbo v9, "tvchannel"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setTVchannel(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v9, "mode"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setMode(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v9, "brightness"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setBrightness(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v9, "color"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setColor(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v9, "humidity"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setHumidity(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v9, "rotatespeed"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setRotateSpeed(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v9, "windspeed"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setWindSpeed(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v9, "winddirection"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setWindDirection(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v9, "temperature"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setTemperature(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v9, "swingangle"

    invoke-virtual {p0, v2, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;->getSubElementValue(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setSwingAngle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
