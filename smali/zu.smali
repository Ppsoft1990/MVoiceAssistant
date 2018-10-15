.class public Lzu;
.super Ljava/lang/Object;
.source "CallReceiveHelper.java"


# direct methods
.method public static a(FFF)F
    .locals 3
    .param p0, "maxRingVolume"    # F
    .param p1, "currentRingVolume"    # F
    .param p2, "maxMediaVolume"    # F

    .prologue
    .line 354
    div-float v1, p1, p0

    mul-float/2addr v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    add-float v0, v1, v2

    .line 355
    .local v0, "ttsVolume":F
    cmpg-float v1, v0, p2

    if-gtz v1, :cond_0

    .end local v0    # "ttsVolume":F
    :goto_0
    return v0

    .restart local v0    # "ttsVolume":F
    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public static a(ILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "ttsCallTimes"    # I
    .param p1, "mTtsContent"    # Ljava/lang/StringBuilder;

    .prologue
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v1, "mTtsAllContent":Ljava/lang/StringBuilder;
    invoke-static {}, Lzu;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const-string/jumbo v2, "[p370]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, p0, :cond_2

    .line 236
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 237
    if-ge v0, p0, :cond_1

    .line 238
    const-string/jumbo v2, "[p300]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pContent"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v10, "ttsContent":Ljava/lang/StringBuilder;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, "callPattern":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "callPatternStrings":[Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN_NAME"

    invoke-virtual {v11, v12}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "callNameString":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 151
    const v11, 0x7f0c0334

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_0
    invoke-static {p0}, Lzu;->b(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 210
    const-string/jumbo v11, "[p300]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmccIFLY_CARMODE_COLORRING_SWITCH"

    invoke-virtual {v11, v12}, Lil;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 212
    const v11, 0x7f0c0337

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    :goto_1
    return-object v10

    .line 156
    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :goto_2
    const-string/jumbo v3, ""

    .line 161
    .local v3, "content":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 162
    .local v9, "strangeTip":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 163
    .local v6, "formatString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 164
    .local v8, "strangeFlag":I
    if-nez v7, :cond_6

    .line 165
    move-object v3, p1

    .line 178
    :goto_3
    const/4 v11, 0x1

    if-ne v8, v11, :cond_2

    .line 179
    const v11, 0x7f0c0056

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 182
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 183
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_3
    if-ltz v1, :cond_4

    array-length v11, v2

    if-lt v1, v11, :cond_5

    .line 187
    :cond_4
    const/4 v1, 0x0

    .line 189
    :cond_5
    packed-switch v1, :pswitch_data_0

    .line 203
    aget-object v11, v2, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 157
    .end local v3    # "content":Ljava/lang/String;
    .end local v6    # "formatString":Ljava/lang/String;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "strangeFlag":I
    .end local v9    # "strangeTip":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 158
    .local v5, "e1":Lorg/json/JSONException;
    const/4 v7, 0x0

    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 168
    .end local v5    # "e1":Lorg/json/JSONException;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v6    # "formatString":Ljava/lang/String;
    .restart local v8    # "strangeFlag":I
    .restart local v9    # "strangeTip":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string/jumbo v11, "content"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 173
    :goto_4
    :try_start_2
    const-string/jumbo v11, "strange"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    goto :goto_3

    .line 169
    :catch_1
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    goto :goto_4

    .line 174
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 175
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_3

    .line 191
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_0
    const v11, 0x7f0c0053

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 195
    :pswitch_1
    const v11, 0x7f0c0054

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 196
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 199
    :pswitch_2
    const v11, 0x7f0c0055

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 200
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 214
    .end local v3    # "content":Ljava/lang/String;
    .end local v6    # "formatString":Ljava/lang/String;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "strangeFlag":I
    .end local v9    # "strangeTip":Ljava/lang/String;
    :cond_7
    const v11, 0x7f0c0338

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "model":Ljava/lang/String;
    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->SAMSUNGI9100G:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->ZTE_U879:Ljava/lang/String;

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->SAMSUNG_SM_G3558:Ljava/lang/String;

    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getCallPopWinState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 280
    if-nez p1, :cond_1

    .line 281
    const/4 v0, 0x0

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v1

    .line 284
    invoke-virtual {v1, p1}, Lhe;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 286
    move-object v0, p1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 400
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    .line 402
    .local v0, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 405
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v2

    .line 303
    invoke-virtual {v2, p1}, Lhe;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 307
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 422
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallPopWinOpend()Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    const/4 v0, 0x0

    .line 438
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-static {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const/4 v0, 0x2

    goto :goto_0
.end method
