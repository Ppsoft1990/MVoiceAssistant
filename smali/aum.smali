.class public Laum;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "ScheduleRecognizeFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "contentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/16 v5, 0x1e

    .line 197
    const-string/jumbo v0, ""

    .line 198
    .local v0, "content":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 200
    .local v1, "element":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 206
    if-nez v0, :cond_2

    .line 207
    const-string/jumbo v0, ""

    .line 217
    .end local v1    # "element":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_1
    :goto_0
    const-string/jumbo v2, "ScheduleRecognizeFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "filterRemindContentResult() | content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v0

    .line 208
    .restart local v1    # "element":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 209
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 5
    .param p2, "reminderItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "repeatElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v1, ""

    .line 118
    .local v1, "repeatRawtext":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 119
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_0
    const-string/jumbo v2, "ScheduleRecognizeFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "filterRepeatResult() | repeatRawtext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterRawtext(Ljava/lang/String;J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 124
    .local v0, "datetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {p2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 125
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 126
    const-string/jumbo v2, "ScheduleRecognizeFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "filterRepeatResult() | repeatFilterString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "loseElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    .line 226
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 227
    .local v1, "element":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "content":Ljava/lang/String;
    goto :goto_0
.end method

.method private b(Ljava/util/List;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 16
    .param p2, "reminderItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v13, "ScheduleRecognizeFilter"

    const-string/jumbo v14, "filterDateTimeResult()"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 138
    .local v8, "datetimeLong":J
    const-string/jumbo v6, ""

    .line 139
    .local v6, "dateRawtext":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 141
    .local v12, "timeRawtext":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 143
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 144
    .local v7, "dateTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const/4 v10, 0x0

    .line 145
    .local v10, "day":Ljava/lang/String;
    const/4 v11, 0x0

    .line 146
    .local v11, "time":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 147
    const-string/jumbo v12, ""

    .line 148
    if-nez v7, :cond_1

    .line 188
    .end local v7    # "dateTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v10    # "day":Ljava/lang/String;
    .end local v11    # "time":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 189
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateRawtext(Ljava/lang/String;)V

    .line 190
    return-void

    .line 151
    .restart local v7    # "dateTimeElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v10    # "day":Ljava/lang/String;
    .restart local v11    # "time":Ljava/lang/String;
    :cond_1
    const-string/jumbo v13, "date"

    invoke-virtual {v7, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v2

    .line 152
    .local v2, "attributeDate":Lcom/iflytek/yd/util/xml/XmlAttribute;
    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {v2}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 154
    const-string/jumbo v13, "ScheduleRecognizeFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "day="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    const-string/jumbo v13, "time"

    invoke-virtual {v7, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v4

    .line 157
    .local v4, "attributeTime":Lcom/iflytek/yd/util/xml/XmlAttribute;
    if-eqz v4, :cond_3

    .line 158
    invoke-virtual {v4}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 159
    const-string/jumbo v13, "ScheduleRecognizeFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "time="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    const-string/jumbo v13, "date_orig"

    invoke-virtual {v7, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v3

    .line 162
    .local v3, "attributeDateRawtext":Lcom/iflytek/yd/util/xml/XmlAttribute;
    if-eqz v3, :cond_4

    .line 163
    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 164
    const-string/jumbo v13, "ScheduleRecognizeFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "dateRawtext="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-nez v6, :cond_4

    .line 166
    const-string/jumbo v6, ""

    .line 169
    :cond_4
    const-string/jumbo v13, "time_orig"

    invoke-virtual {v7, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getAttribute(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    move-result-object v5

    .line 170
    .local v5, "attributeTimeRawtext":Lcom/iflytek/yd/util/xml/XmlAttribute;
    if-eqz v5, :cond_5

    .line 171
    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 172
    const-string/jumbo v13, "ScheduleRecognizeFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "timeRawtext="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-nez v12, :cond_5

    .line 174
    const-string/jumbo v12, ""

    .line 178
    :cond_5
    if-eqz v10, :cond_6

    if-nez v11, :cond_7

    .line 179
    :cond_6
    const-string/jumbo v6, ""

    .line 180
    const-string/jumbo v12, ""

    .line 182
    :cond_7
    invoke-static {v10, v11}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 183
    goto/16 :goto_0
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 24
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string/jumbo v21, "ScheduleRecognizeFilter"

    const-string/jumbo v22, "recognize result is null"

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v12, 0x0

    .line 108
    :goto_0
    return-object v12

    .line 40
    :cond_0
    new-instance v12, Lauk;

    invoke-direct {v12}, Lauk;-><init>()V

    .line 41
    .local v12, "reminderFilterResult":Lauk;
    new-instance v13, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 43
    .local v13, "reminderItem":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Laum;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 45
    invoke-virtual {v12}, Lauk;->getRawText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRawtext(Ljava/lang/String;)V

    .line 46
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v22, "yyyy-MM-dd HH:mm:ss"

    invoke-direct/range {v21 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lauk;->getDate()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Lauk;->getTime()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lbaa;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    .line 47
    .local v18, "timeStamp":J
    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTimeStamp(J)V

    .line 49
    invoke-virtual/range {p0 .. p1}, Laum;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v20

    .line 50
    .local v20, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v17

    .line 51
    .local v17, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Laum;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v16

    .line 52
    .local v16, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Laum;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 54
    .local v11, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_5

    .line 55
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 58
    .local v10, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v21, "datetime"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 59
    .local v4, "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Laum;->b(Ljava/util/List;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 62
    const-string/jumbo v21, "repeat"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 63
    .local v14, "repeatElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Laum;->a(Ljava/util/List;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 74
    .end local v4    # "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v14    # "repeatElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 75
    .local v15, "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v21, "content"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, "contentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Laum;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "content":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1e

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 80
    const/16 v21, 0x0

    const/16 v22, 0x1e

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 84
    :cond_2
    invoke-virtual {v13, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 87
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "contentElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v15    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    const-string/jumbo v21, "schedule"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lauk;->setFocus(Ljava/lang/String;)V

    .line 90
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 91
    .restart local v15    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v21, "content_lose"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 92
    .local v8, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Laum;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, "isLose":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string/jumbo v21, "true"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 94
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lauk;->a(Z)V

    .line 95
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAitalkContentLose(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "isLose":Ljava/lang/String;
    .end local v11    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v15    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v16    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v17    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v18    # "timeStamp":J
    .end local v20    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_4
    :goto_2
    invoke-virtual {v12, v13}, Lauk;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 107
    const-string/jumbo v21, "ScheduleRecognizeFilter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "filterRecognizeResult() | result="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 70
    .restart local v11    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v16    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v17    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v18    # "timeStamp":J
    .restart local v20    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_5
    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_1
    invoke-static/range {v21 .. v22}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 71
    .local v6, "datetime":J
    invoke-virtual {v13, v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 103
    .end local v6    # "datetime":J
    .end local v11    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v16    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v17    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v18    # "timeStamp":J
    .end local v20    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v5

    .line 104
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 97
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v9    # "isLose":Ljava/lang/String;
    .restart local v11    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v15    # "resultElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v16    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v17    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v18    # "timeStamp":J
    .restart local v20    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_6
    const/16 v21, 0x0

    :try_start_2
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lauk;->a(Z)V

    .line 98
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAitalkContentLose(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
