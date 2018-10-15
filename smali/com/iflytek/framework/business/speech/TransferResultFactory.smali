.class public Lcom/iflytek/framework/business/speech/TransferResultFactory;
.super Ljava/lang/Object;
.source "TransferResultFactory.java"


# static fields
.field public static final ACTION_CALL:Ljava/lang/String; = "call"

.field public static final ACTION_CREATE_WEATHER_SCHEDULE:Ljava/lang/String; = "create_weather_schedule"

.field public static final ACTION_MESSAGE:Ljava/lang/String; = "message"

.field public static final ACTION_MUSIC_TO_SMARTHOME:Ljava/lang/String; = "music_to_smarthome"

.field public static final ACTION_NEWS_TO_SMARTHOME:Ljava/lang/String; = "news_to_smarthome"

.field public static final ACTION_SELECT_CONTACT_NAME:Ljava/lang/String; = "select_contact_name"

.field public static final ACTION_SELECT_CONTACT_NUMBER:Ljava/lang/String; = "select_contact_number"

.field public static final ACTION_SELECT_SCHEDULE_TIME:Ljava/lang/String; = "select_sehedule_time"

.field public static final ACTION_SELECT_SMS_SEND_CONFIRM:Ljava/lang/String; = "select_sms_send_confirm"

.field public static final ACTION_SEND_MESSAGE:Ljava/lang/String; = "send_message"

.field public static final ACTION_SEND_MESSAGE_TO_SPECIAL:Ljava/lang/String; = "action_send_message_to_special"

.field public static final ACTION_SMS_CONTENT:Ljava/lang/String; = "sms_content"

.field public static final ACTION_SMS_SEARCH_BLESS:Ljava/lang/String; = "sms_search_bless"

.field public static final ACTION_TRANSFER_OTHER:Ljava/lang/String; = "transfer_other"

.field public static final ACTION_VIDEO_TO_SMARTHOME:Ljava/lang/String; = "video_to_smarthome"

.field private static final TAG:Ljava/lang/String; = "Business_TransferResultFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 31
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 111
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    const-string/jumbo v3, "Business_TransferResultFactory"

    const-string/jumbo v4, "transfer action is empty"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x0

    .line 454
    :cond_0
    :goto_0
    return-object v2

    .line 116
    :cond_1
    const/4 v2, 0x0

    .line 118
    .local v2, "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v3, "transfer_other"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    const/4 v3, 0x0

    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    .line 120
    .local v7, "rawText":Ljava/lang/String;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 121
    .local v30, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 122
    .local v20, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 127
    .local v25, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 129
    .local v16, "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "search"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v3, "tip"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6b63\u5728\u641c\u7d22"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v3, "speech"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[x1][k2]\u6b63\u5728\u641c\u7d22"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 135
    .local v23, "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 137
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "other"

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 141
    .end local v7    # "rawText":Ljava/lang/String;
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_2
    const-string/jumbo v3, "sms_content"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    const/4 v3, 0x0

    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    .line 143
    .restart local v7    # "rawText":Ljava/lang/String;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 144
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 145
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 150
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 152
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "sms"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v3, "content"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 155
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "message"

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 159
    .end local v7    # "rawText":Ljava/lang/String;
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_3
    const-string/jumbo v3, "select_contact_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 160
    const/4 v3, 0x0

    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    .line 161
    .restart local v7    # "rawText":Ljava/lang/String;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 162
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 163
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 168
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "focus":Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_7

    .line 170
    const/4 v3, 0x1

    aget-object v6, p1, v3

    .end local v6    # "focus":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 174
    .restart local v6    # "focus":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 176
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 178
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_6

    const/4 v3, 0x2

    aget-object v3, p1, v3

    instance-of v3, v3, Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eqz v3, :cond_6

    .line 183
    const/16 v26, 0x0

    .line 184
    .local v26, "simcardName":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne v3, v4, :cond_8

    .line 185
    const-string/jumbo v26, "\u5361\u4e00"

    .line 189
    :cond_5
    :goto_2
    if-eqz v26, :cond_6

    .line 190
    const-string/jumbo v3, "sim_card"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 194
    .end local v26    # "simcardName":Ljava/lang/String;
    :cond_6
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 195
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 171
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_7
    if-nez v6, :cond_4

    .line 172
    const-string/jumbo v6, "telephone"

    goto :goto_1

    .line 186
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v26    # "simcardName":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne v3, v4, :cond_5

    .line 187
    const-string/jumbo v26, "\u5361\u4e8c"

    goto :goto_2

    .line 198
    .end local v6    # "focus":Ljava/lang/String;
    .end local v7    # "rawText":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v26    # "simcardName":Ljava/lang/String;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_9
    const-string/jumbo v3, "select_contact_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "call"

    .line 199
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "message"

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 201
    :cond_a
    move-object/from16 v0, p1

    array-length v3, v0

    if-lez v3, :cond_d

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v17, v3

    .line 202
    .local v17, "argName":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_e

    const/4 v3, 0x1

    aget-object v3, p1, v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v18, v3

    .line 204
    .local v18, "argNumber":Ljava/lang/String;
    :goto_4
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 205
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 206
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 212
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "call"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 213
    const-string/jumbo v3, "telephone"

    invoke-static {v3}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 219
    :cond_b
    :goto_5
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v6

    .line 220
    .restart local v6    # "focus":Ljava/lang/String;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 222
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 224
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 225
    if-eqz v18, :cond_c

    .line 226
    const-string/jumbo v3, "code"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 229
    :cond_c
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 231
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    aget-object v14, p1, v3

    check-cast v14, Ljava/lang/String;

    move-object v9, v2

    move-object v13, v6

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 201
    .end local v6    # "focus":Ljava/lang/String;
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v17    # "argName":Ljava/lang/String;
    .end local v18    # "argNumber":Ljava/lang/String;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 202
    .restart local v17    # "argName":Ljava/lang/String;
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 214
    .restart local v18    # "argNumber":Ljava/lang/String;
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_f
    const-string/jumbo v3, "message"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 215
    const-string/jumbo v3, "message"

    invoke-static {v3}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    goto :goto_5

    .line 234
    .end local v17    # "argName":Ljava/lang/String;
    .end local v18    # "argNumber":Ljava/lang/String;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_10
    const-string/jumbo v3, "select_sms_send_confirm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 235
    const/4 v3, 0x0

    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    .line 236
    .restart local v7    # "rawText":Ljava/lang/String;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 237
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 238
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 240
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 242
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 243
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 245
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "send"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 246
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 247
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 249
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 250
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "message"

    move-object v9, v2

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 253
    .end local v7    # "rawText":Ljava/lang/String;
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_11
    const-string/jumbo v3, "select_sehedule_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 254
    const/4 v3, 0x0

    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    .line 255
    .restart local v7    # "rawText":Ljava/lang/String;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 256
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 257
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 262
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "schedule"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 264
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "create"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 266
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 268
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 270
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "schedule"

    move-object v9, v2

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 274
    .end local v7    # "rawText":Ljava/lang/String;
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_12
    const-string/jumbo v3, "sms_search_bless"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 275
    const/4 v3, 0x0

    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    .line 276
    .restart local v7    # "rawText":Ljava/lang/String;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 277
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 278
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    .line 279
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 285
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v3, "action"

    .line 288
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 289
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "speech"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    .line 290
    invoke-static {v7}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 293
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "topic"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "chat"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v3, "answer"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 296
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 298
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 299
    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "dialog"

    const/4 v14, 0x0

    move-object v9, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V

    goto/16 :goto_0

    .line 303
    .end local v7    # "rawText":Ljava/lang/String;
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_13
    const-string/jumbo v3, "action_send_message_to_special"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 304
    const/4 v3, 0x0

    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    .line 305
    .restart local v7    # "rawText":Ljava/lang/String;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 306
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 307
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    .line 308
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 314
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v3, "action"

    .line 317
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 318
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "send"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 323
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v3, "code"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 325
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 328
    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "message"

    const/4 v3, 0x1

    aget-object v14, p1, v3

    check-cast v14, Ljava/lang/String;

    move-object v9, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 332
    .end local v7    # "rawText":Ljava/lang/String;
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_14
    const-string/jumbo v3, "send_message"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 333
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 334
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 335
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 337
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 340
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 342
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "send"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v3, "content"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 344
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 345
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 346
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 348
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "message"

    const/4 v3, 0x1

    aget-object v14, p1, v3

    check-cast v14, Ljava/lang/String;

    move-object v9, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 352
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_15
    const-string/jumbo v3, "create_weather_schedule"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 353
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 355
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 356
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "\u63d0\u9192\u6211\u6bcf\u5468\u4e00\u5230\u5468\u4e94\u65e9\u4e0a8\u70b9\u8d77\u5e8a"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v3, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "000000"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v3, "time_stamp"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v27

    .line 360
    .local v27, "timeStamp":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    .line 361
    .local v28, "timeMillis":J
    const-string/jumbo v3, "date"

    const-string/jumbo v4, "yyyy-MM-dd"

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 362
    const-string/jumbo v3, "time"

    const-string/jumbo v4, "HH:mm:ss"

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 364
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 365
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "schedule"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 367
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "create"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 369
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "clock"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 370
    const-string/jumbo v3, "repeat"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "w1-w5"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v3, "datetime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v21

    .line 372
    .local v21, "datetime":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "time"

    const-string/jumbo v4, "08:00:00"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 373
    const-string/jumbo v3, "time_orig"

    const-string/jumbo v4, "\u65e9\u4e0a8\u70b9"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlAttribute;

    .line 374
    const-string/jumbo v3, "content"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "\u8d77\u5e8a"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 376
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 378
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "schedule"

    const/4 v14, 0x0

    move-object v9, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 381
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v21    # "datetime":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v27    # "timeStamp":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v28    # "timeMillis":J
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_16
    const-string/jumbo v3, "video_to_smarthome"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 382
    const/4 v3, 0x0

    aget-object v19, p1, v3

    check-cast v19, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 383
    .local v19, "asrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v24, Lcom/iflytek/yd/speech/BaseRecognizeFilter;

    invoke-direct/range {v24 .. v24}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;-><init>()V

    .line 384
    .local v24, "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v22

    .line 385
    .local v22, "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 387
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 388
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v3, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "000000"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 393
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "smarthome"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 395
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "setparameters"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v3, "tip"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/speech/FilterResult;->getTip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 397
    const-string/jumbo v3, "speech"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/speech/FilterResult;->getSpeechText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 399
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 400
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "tv"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 401
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 403
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "smarthome"

    const/4 v14, 0x0

    move-object v9, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 407
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v19    # "asrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v22    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v24    # "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_17
    const-string/jumbo v3, "news_to_smarthome"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 408
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 410
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 411
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 412
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 413
    const-string/jumbo v3, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "000000"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 416
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "smarthome"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 417
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 418
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "setparameters"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 419
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 420
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "tv"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 421
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 423
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "smarthome"

    const/4 v14, 0x0

    move-object v9, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 428
    .end local v8    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_18
    const-string/jumbo v3, "music_to_smarthome"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    const/4 v3, 0x0

    aget-object v19, p1, v3

    check-cast v19, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 430
    .restart local v19    # "asrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v24, Lcom/iflytek/yd/speech/BaseRecognizeFilter;

    invoke-direct/range {v24 .. v24}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;-><init>()V

    .line 431
    .restart local v24    # "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v22

    .line 432
    .restart local v22    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    new-instance v30, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 434
    .restart local v30    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v3, "biz_result"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 435
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 436
    const-string/jumbo v3, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 437
    const-string/jumbo v3, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "000000"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v3, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v25

    .line 440
    .restart local v25    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "focus"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "smarthome"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v3, "action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 442
    .restart local v16    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "operation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "setparameters"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v3, "tip"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/speech/FilterResult;->getTip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 444
    const-string/jumbo v3, "speech"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/speech/FilterResult;->getSpeechText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v3, "object"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 447
    .restart local v23    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const-string/jumbo v4, "voicebox"

    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 448
    invoke-static/range {v30 .. v30}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v8

    .line 450
    .restart local v8    # "xmlDocStr":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "smarthome"

    const/4 v14, 0x0

    move-object v9, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0
.end method
