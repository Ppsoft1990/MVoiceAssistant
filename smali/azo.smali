.class public final Lazo;
.super Ljava/lang/Object;
.source "LauncherManager.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lhl;->k()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 111
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_1
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LauncherManager"

    const-string/jumbo v3, "startNetSetting()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginType"    # I
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    .line 162
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmccACTION_LAUNCH_PLUGIN_MANAGER_TO_ENTER_PLUGIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const-string/jumbo v2, "EXTRA_PLUGIN_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string/jumbo v2, "EXTRA_ENTRY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "LauncherManager"

    const-string/jumbo v3, "enterPlugin() exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Landroid/content/Intent;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/browser/BrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 94
    .local v0, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    iput-object p1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 95
    const-string/jumbo v2, "com.iflytek.cmccbrowser.EXTRA_BREIF_ITEM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    invoke-static {p0, v1}, Lazo;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 81
    .local v0, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    iput-object p0, v0, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 82
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqh;->a(Lcom/iflytek/viafly/browser/BrowserParams;)V

    .line 84
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v2, "content://contacts/people/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LauncherManager"

    const-string/jumbo v3, "startContactsApp()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Landroid/content/Intent;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v1, 0xbb9

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LauncherManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    :try_start_0
    const-string/jumbo v4, "CommonHomePage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/HomeRootView;->a()V

    .line 182
    invoke-static {p0}, Lazo;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LauncherManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "RemindHomePage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x30000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v4

    const-string/jumbo v5, "other"

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v4, "ShorthandHomePage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 190
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x30000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_type"

    const-string/jumbo v5, "otherEntrance"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v4

    const-string/jumbo v5, "FT90202"

    invoke-virtual {v4, v5, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 198
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v4, "TranslateHomePage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 199
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v4

    const-string/jumbo v5, "other"

    invoke-virtual {v4, v5}, Lxq;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v4, "MicHomePage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 204
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/HomeRootView;->b()V

    .line 207
    invoke-static {p0}, Lazo;->c(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 208
    :cond_6
    const-string/jumbo v4, "VoicePacketHomePage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 209
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .restart local v2    # "intent":Landroid/content/Intent;
    if-eqz p0, :cond_0

    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 212
    const-string/jumbo v4, "STAR_ENTRY_TYPE"

    const-string/jumbo v5, "ad"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 215
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_7
    const-string/jumbo v4, "LoginHomePage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 216
    invoke-static {}, Lth;->a()Lth;

    move-result-object v4

    invoke-virtual {v4}, Lth;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 218
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v4

    const-string/jumbo v5, "20012"

    invoke-virtual {v4, v5}, Lvm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 220
    const-string/jumbo v4, "LauncherManager"

    const-string/jumbo v5, "user info use default url"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string/jumbo v3, "http://xz.voicecloud.cn/resources/lxUserInfo/index.html"

    .line 223
    :cond_8
    invoke-static {p0, v3}, Lazo;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    .end local v3    # "url":Ljava/lang/String;
    :cond_9
    invoke-static {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v4

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v5, 0x0

    sget-object v6, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v7, "other"

    invoke-virtual {v4, p0, v5, v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .restart local p0    # "context":Landroid/content/Context;
    :cond_a
    const-string/jumbo v4, "SetVoiceprintHomePage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    invoke-static {}, Lth;->a()Lth;

    move-result-object v4

    invoke-virtual {v4}, Lth;->c()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 230
    invoke-static {}, Lth;->a()Lth;

    move-result-object v4

    invoke-virtual {v4}, Lth;->m()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 232
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/account/ui/UserActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "user.voiceSet"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 237
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_b
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/account/ui/UserActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "user.voice"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 243
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-static {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v4

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v5, 0x0

    sget-object v6, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v7, "other"

    invoke-virtual {v4, p0, v5, v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LauncherManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
