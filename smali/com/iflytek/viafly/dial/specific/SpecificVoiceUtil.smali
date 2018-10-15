.class public Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;
.super Ljava/lang/Object;
.source "SpecificVoiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/specificVoice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;
    .locals 7
    .param p0, "ptype"    # Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .prologue
    const/4 v6, 0x1

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, "params":Landroid/os/Bundle;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 179
    sget-object v2, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_NOTIFY_CALL_MODE"

    const/4 v4, 0x0

    .line 181
    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_3

    .line 182
    const-string/jumbo v2, "stream"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    :cond_0
    :goto_0
    const-string/jumbo v2, "tts_engine_type"

    const-string/jumbo v3, "local"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v2, "volume"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 192
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v2, v3}, Lil;->d(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 193
    const-string/jumbo v2, "role"

    const-string/jumbo v3, "xiaomei"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_TTS_ROLE_CHOICE"

    invoke-virtual {v2, v3}, Lil;->d(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, "roleID":I
    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_2

    .line 208
    :cond_1
    const-string/jumbo v2, "speed"

    const/16 v3, 0x37

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    :cond_2
    const-string/jumbo v2, "scene"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    return-object v0

    .line 184
    .end local v1    # "roleID":I
    :cond_3
    const-string/jumbo v2, "stream"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 195
    :cond_4
    const-string/jumbo v2, "role"

    const-string/jumbo v3, "jiajia"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_5
    const-string/jumbo v2, "role"

    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    const-string/jumbo v5, "jiajia"

    .line 199
    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I

    .prologue
    .line 95
    const/16 v0, 0x384

    if-ne p1, v0, :cond_0

    .line 96
    const v0, 0x7f0c02e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const v0, 0xc3c09

    if-ne p1, v0, :cond_1

    .line 98
    const v0, 0x7f0c0300

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    const v0, 0xc3c0a

    if-ne p1, v0, :cond_2

    .line 100
    const v0, 0x7f0c0308

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lns;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/specificVoice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "roleName"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string/jumbo v0, "xiaomei"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Resource_yueyu.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Resource_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 84
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_STATUS"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 88
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "SpecificVoiceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readResouceList: e ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lagm;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_CALL_NEED_REMIND"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 116
    .local v1, "needRemind":Z
    if-eqz v1, :cond_1

    .line 117
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    const-string/jumbo v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 119
    const-string/jumbo v2, "\u56e0\u4e3a\u7cfb\u7edf\u53ca\u673a\u578b\u9650\u5236\uff0c\u53ef\u80fd\u65e0\u6cd5\u6b63\u5e38\u64ad\u62a5\u3002\u5982\u679c\u51fa\u73b0\u8be5\u60c5\u51b5\uff0c\u8bf7\u5173\u95ed\u6b64\u529f\u80fd\u3002\n\u7ee7\u7eed\u542f\u7528\uff1f"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 120
    const-string/jumbo v2, "\u4e0d\u518d\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setCheckboxTips(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 121
    const-string/jumbo v2, "com.iflytek.cmccIFLY_CALL_NEED_REMIND"

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setCheckBoxSetting(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 123
    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$1;

    invoke-direct {v3, v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$1;-><init>(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 132
    const-string/jumbo v2, "\u542f\u7528"

    new-instance v3, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$2;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$2;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 141
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    goto :goto_0

    .line 143
    .end local v0    # "builder":Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    :cond_1
    invoke-static {p0}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 146
    .end local v1    # "needRemind":Z
    :cond_2
    invoke-static {p0}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Larn;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginType"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;
    .param p4, "pluginInstallListener"    # Larn;

    .prologue
    .line 252
    if-eqz p0, :cond_0

    .line 253
    new-instance v5, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v5, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const v0, 0x7f0c015b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 255
    invoke-virtual {v5, p2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 256
    const-string/jumbo v0, "\u53d6\u6d88"

    new-instance v1, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$3;

    invoke-direct {v1, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$3;-><init>(Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v5, v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 264
    const-string/jumbo v6, "\u5b89\u88c5"

    new-instance v0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;

    move-object v1, p4

    move v2, p1

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;-><init>(Larn;ILandroid/content/Context;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v5, v6, v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 274
    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 276
    .end local v5    # "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/dial/specific/SpecificVoice;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 67
    .local v2, "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    :try_start_0
    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "SpecificVoiceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveDownloadUrLList: e ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_STATUS"

    .line 73
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setCallBroadcastOpened(Z)V

    .line 158
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.CALL_NOTIFY_ACTION"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 161
    return-void
.end method

.method public static c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 283
    invoke-static {v0}, Lasa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginVersion()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 296
    invoke-static {v0}, Lasa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 299
    :cond_0
    return v0
.end method

.method public static e()V
    .locals 6

    .prologue
    .line 305
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    const-string/jumbo v5, "jiajia"

    .line 306
    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "slectedRole":Ljava/lang/String;
    const-string/jumbo v3, "jiajia"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    invoke-static {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_TTS_ROLE_CHOICE"

    invoke-virtual {v3, v4}, Lil;->d(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v1}, Ljk;->a(ILjava/lang/String;)V

    .line 326
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 315
    .local v0, "languageChoice":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 316
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    const-string/jumbo v5, "xiaomei"

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_TTS_ROLE_CHOICE"

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;I)I

    goto :goto_0

    .line 320
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPECIFIC_BROADCAST_SELECTED"

    const-string/jumbo v5, "jiajia"

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_TTS_ROLE_CHOICE"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
