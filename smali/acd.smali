.class public Lacd;
.super Ljava/lang/Object;
.source "TransferResultFactoryForDial.java"


# direct methods
.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 26
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 85
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string/jumbo v2, "TransferResultFactoryForDial"

    const-string/jumbo v3, "transfer action is empty"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    .line 367
    :cond_0
    :goto_0
    return-object v1

    .line 90
    :cond_1
    const/4 v1, 0x0

    .line 92
    .local v1, "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v2, "cancel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    const/4 v2, 0x0

    aget-object v5, p1, v2

    check-cast v5, Ljava/lang/String;

    .line 94
    .local v5, "focus":Ljava/lang/String;
    const-string/jumbo v6, "\u53d6\u6d88"

    .line 95
    .local v6, "rawText":Ljava/lang/String;
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 96
    .local v25, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 97
    .local v20, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 102
    .local v23, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 104
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v5    # "focus":Ljava/lang/String;
    .end local v6    # "rawText":Ljava/lang/String;
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_2
    const-string/jumbo v2, "transfer_other"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    const/4 v2, 0x0

    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/String;

    .line 110
    .restart local v6    # "rawText":Ljava/lang/String;
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 111
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 112
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 117
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "other"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v15

    .line 119
    .local v15, "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "operation"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v2, "tip"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6b63\u5728\u641c\u7d22"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "speech"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[x1][k2]\u6b63\u5728\u641c\u7d22"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v2, "object"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v22

    .line 125
    .local v22, "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .restart local v7    # "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "other"

    move-object v8, v1

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 131
    .end local v6    # "rawText":Ljava/lang/String;
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_3
    const-string/jumbo v2, "sms_content"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    const/4 v2, 0x0

    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/String;

    .line 133
    .restart local v6    # "rawText":Ljava/lang/String;
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 134
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 135
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 140
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v2, "action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v15

    .line 142
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "operation"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "sms"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v2, "content"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .restart local v7    # "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "message"

    move-object v8, v1

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 149
    .end local v6    # "rawText":Ljava/lang/String;
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_4
    const-string/jumbo v2, "select_contact_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 150
    const/4 v2, 0x0

    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/String;

    .line 151
    .restart local v6    # "rawText":Ljava/lang/String;
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 152
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 153
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 158
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v5

    .line 159
    .restart local v5    # "focus":Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8

    .line 160
    const/4 v2, 0x1

    aget-object v5, p1, v2

    .end local v5    # "focus":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 164
    .restart local v5    # "focus":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v2, "action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v15

    .line 166
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "operation"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v2, "object"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v22

    .line 168
    .restart local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_7

    const/4 v2, 0x2

    aget-object v2, p1, v2

    instance-of v2, v2, Lcom/iflytek/common/adaptation/entity/SimCard;

    if-eqz v2, :cond_7

    .line 172
    const/16 v24, 0x0

    .line 173
    .local v24, "simcardName":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne v2, v3, :cond_9

    .line 174
    const-string/jumbo v24, "\u5361\u4e00"

    .line 178
    :cond_6
    :goto_2
    if-eqz v24, :cond_7

    .line 179
    const-string/jumbo v2, "sim_card"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 183
    .end local v24    # "simcardName":Ljava/lang/String;
    :cond_7
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 184
    .restart local v7    # "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 161
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_8
    if-nez v5, :cond_5

    .line 162
    const-string/jumbo v5, "telephone"

    goto :goto_1

    .line 175
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v24    # "simcardName":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne v2, v3, :cond_6

    .line 176
    const-string/jumbo v24, "\u5361\u4e8c"

    goto :goto_2

    .line 187
    .end local v5    # "focus":Ljava/lang/String;
    .end local v6    # "rawText":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v24    # "simcardName":Ljava/lang/String;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_a
    const-string/jumbo v2, "select_contact_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "call"

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "message"

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 191
    :cond_b
    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_10

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    .line 192
    .local v16, "argName":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_11

    const/4 v2, 0x1

    aget-object v2, p1, v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v2

    .line 194
    .local v18, "argNumber":Ljava/lang/String;
    :goto_4
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 195
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 196
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 202
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "call"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 203
    const-string/jumbo v2, "telephone"

    invoke-static {v2}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 208
    :cond_c
    :goto_5
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v5

    .line 209
    .restart local v5    # "focus":Ljava/lang/String;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v15

    .line 211
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "operation"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v2, "object"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v22

    .line 213
    .restart local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 214
    if-eqz v18, :cond_d

    .line 215
    const-string/jumbo v2, "code"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 217
    :cond_d
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_13

    const/4 v2, 0x2

    aget-object v2, p1, v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v19, v2

    .line 218
    .local v19, "argSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :goto_6
    if-eqz v19, :cond_f

    .line 221
    const/16 v24, 0x0

    .line 222
    .restart local v24    # "simcardName":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_14

    .line 223
    const-string/jumbo v24, "\u5361\u4e00"

    .line 227
    :cond_e
    :goto_7
    if-eqz v24, :cond_f

    .line 228
    const-string/jumbo v2, "sim_card"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 232
    .end local v24    # "simcardName":Ljava/lang/String;
    :cond_f
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 234
    .restart local v7    # "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    aget-object v13, p1, v2

    check-cast v13, Ljava/lang/String;

    move-object v8, v1

    move-object v12, v5

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 191
    .end local v5    # "focus":Ljava/lang/String;
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v16    # "argName":Ljava/lang/String;
    .end local v18    # "argNumber":Ljava/lang/String;
    .end local v19    # "argSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 192
    .restart local v16    # "argName":Ljava/lang/String;
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 204
    .restart local v18    # "argNumber":Ljava/lang/String;
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_12
    const-string/jumbo v2, "message"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 205
    const-string/jumbo v2, "message"

    invoke-static {v2}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 217
    .restart local v5    # "focus":Ljava/lang/String;
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_13
    const/16 v19, 0x0

    goto :goto_6

    .line 224
    .restart local v19    # "argSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .restart local v24    # "simcardName":Ljava/lang/String;
    :cond_14
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_e

    .line 225
    const-string/jumbo v24, "\u5361\u4e8c"

    goto :goto_7

    .line 237
    .end local v5    # "focus":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v16    # "argName":Ljava/lang/String;
    .end local v18    # "argNumber":Ljava/lang/String;
    .end local v19    # "argSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v24    # "simcardName":Ljava/lang/String;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_15
    const-string/jumbo v2, "call_simple"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "message_simple"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 239
    :cond_16
    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_18

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v2

    .line 240
    .restart local v6    # "rawText":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_19

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v17, v2

    .line 242
    .local v17, "argNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_9
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 243
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 244
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 246
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 250
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "call_simple"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 251
    const-string/jumbo v2, "telephone"

    invoke-static {v2}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 256
    :cond_17
    :goto_a
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v5

    .line 257
    .restart local v5    # "focus":Ljava/lang/String;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v2, "action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v15

    .line 259
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "operation"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 260
    if-eqz v17, :cond_1b

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    .line 261
    const-string/jumbo v2, "object"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v22

    .line 262
    .restart local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 263
    .local v21, "name":Ljava/lang/String;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_b

    .line 239
    .end local v5    # "focus":Ljava/lang/String;
    .end local v6    # "rawText":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v17    # "argNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 240
    .restart local v6    # "rawText":Ljava/lang/String;
    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 252
    .restart local v17    # "argNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_1a
    const-string/jumbo v2, "message_simple"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 253
    const-string/jumbo v2, "message"

    invoke-static {v2}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    goto :goto_a

    .line 267
    .restart local v5    # "focus":Ljava/lang/String;
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_1b
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 269
    .restart local v7    # "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 272
    .end local v5    # "focus":Ljava/lang/String;
    .end local v6    # "rawText":Ljava/lang/String;
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v17    # "argNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_1c
    const-string/jumbo v2, "select_sms_send_confirm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 273
    const/4 v2, 0x0

    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/String;

    .line 274
    .restart local v6    # "rawText":Ljava/lang/String;
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 275
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 276
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 281
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v15

    .line 283
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "operation"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "send"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v2, "object"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v22

    .line 285
    .restart local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 287
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .restart local v7    # "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "message"

    move-object v8, v1

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 292
    .end local v6    # "rawText":Ljava/lang/String;
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_1d
    const-string/jumbo v2, "sms_search_bless"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 293
    const/4 v2, 0x0

    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/String;

    .line 294
    .restart local v6    # "rawText":Ljava/lang/String;
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 295
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 296
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 297
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 303
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 305
    const-string/jumbo v2, "action"

    .line 306
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v15

    .line 307
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "speech"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 308
    invoke-static {v6}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v2, "object"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v22

    .line 311
    .restart local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "topic"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "chat"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v2, "answer"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 314
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 316
    .restart local v7    # "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 317
    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "dialog"

    const/4 v13, 0x0

    move-object v8, v1

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTextSearchMode(B)V

    goto/16 :goto_0

    .line 321
    .end local v6    # "rawText":Ljava/lang/String;
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_1e
    const-string/jumbo v2, "action_send_message_to_special"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const/4 v2, 0x0

    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/String;

    .line 324
    .restart local v6    # "rawText":Ljava/lang/String;
    new-instance v25, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 325
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v20

    .line 326
    .restart local v20    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "version"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 327
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v2, "rawtext"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 329
    const-string/jumbo v2, "status"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 332
    const-string/jumbo v2, "result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v23

    .line 333
    .restart local v23    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v2, "action"

    .line 336
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v15

    .line 337
    .restart local v15    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "operation"

    invoke-virtual {v15, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "send"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v2, "object"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v22

    .line 342
    .restart local v22    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v2, "code"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_21

    const/4 v2, 0x3

    aget-object v2, p1, v2

    if-eqz v2, :cond_21

    const/4 v2, 0x3

    aget-object v2, p1, v2

    check-cast v2, Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v19, v2

    .line 346
    .restart local v19    # "argSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :goto_c
    if-eqz v19, :cond_20

    .line 349
    const/16 v24, 0x0

    .line 350
    .restart local v24    # "simcardName":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_22

    .line 351
    const-string/jumbo v24, "\u5361\u4e00"

    .line 355
    :cond_1f
    :goto_d
    if-eqz v24, :cond_20

    .line 356
    const-string/jumbo v2, "sim_card"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 360
    .end local v24    # "simcardName":Ljava/lang/String;
    :cond_20
    invoke-static/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 362
    .restart local v7    # "xmlDocStr":Ljava/lang/String;
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 363
    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "message"

    const/4 v2, 0x1

    aget-object v13, p1, v2

    check-cast v13, Ljava/lang/String;

    move-object v8, v1

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 345
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v19    # "argSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_21
    const/16 v19, 0x0

    goto :goto_c

    .line 352
    .restart local v19    # "argSimCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .restart local v24    # "simcardName":Ljava/lang/String;
    :cond_22
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1f

    .line 353
    const-string/jumbo v24, "\u5361\u4e8c"

    goto :goto_d
.end method
