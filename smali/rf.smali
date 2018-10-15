.class public Lrf;
.super Ljava/lang/Object;
.source "MicToolModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mTag"    # Ljava/lang/String;
    .param p2, "mLabel"    # Ljava/lang/String;
    .param p3, "mIcon"    # Ljava/lang/String;
    .param p4, "mPackageName"    # Ljava/lang/String;
    .param p5, "mClassName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrf;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lrf;->b:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lrf;->c:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lrf;->d:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lrf;->e:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrf;->g:Z

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lrf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Lrf;>;"
    new-instance v1, Lrf;

    const-string/jumbo v2, "NATIVE"

    const-string/jumbo v3, "\u7ffb\u8bd1"

    const-string/jumbo v4, "home_speech_tool_translate"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.viafly.translate.ui.TranslateMainActivity"

    invoke-direct/range {v1 .. v6}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v1, "translate":Lrf;
    new-instance v2, Lrf;

    const-string/jumbo v3, "NATIVE"

    const-string/jumbo v4, "\u63d0\u9192"

    const-string/jumbo v5, "home_speech_tool_remind"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.viafly.schedule.framework.ui.beforetrigger.ScheduleHomePageActivity"

    invoke-direct/range {v2 .. v7}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v2, "schedule":Lrf;
    new-instance v3, Lrf;

    const-string/jumbo v4, "NATIVE"

    const-string/jumbo v5, "\u901f\u8bb0"

    const-string/jumbo v6, "home_speech_tool_note"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.viafly.voicenote.VoiceNoteActivity"

    invoke-direct/range {v3 .. v8}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v3, "note":Lrf;
    new-instance v4, Lrf;

    const-string/jumbo v5, "WEB"

    const-string/jumbo v6, "\u53d1\u73b0"

    const-string/jumbo v7, "home_speech_tool_topic"

    const-string/jumbo v8, "\u53d1\u73b0"

    const-string/jumbo v9, "http://wap.cmread.com/r/p/zthj1.jsp?vt=3"

    invoke-direct/range {v4 .. v9}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v4, "topic":Lrf;
    const-string/jumbo v9, "topic"

    invoke-virtual {v4, v9}, Lrf;->a(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lrf;->g()Lrf;

    move-result-object v14

    .line 57
    .local v14, "listen":Lrf;
    const-string/jumbo v9, "listen"

    invoke-virtual {v14, v9}, Lrf;->a(Ljava/lang/String;)V

    .line 59
    new-instance v5, Lrf;

    const-string/jumbo v6, "WEB"

    const-string/jumbo v7, "\u8da3\u6717\u8bfb"

    const-string/jumbo v8, "home_speech_tool_ugc"

    const-string/jumbo v9, "\u8da3\u6717\u8bfb"

    const-string/jumbo v10, "http://wap.cmread.com/tingclient/publish/clt/resource/share/activity/goread/ugcindex.jsp"

    invoke-direct/range {v5 .. v10}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v5, "ugc":Lrf;
    const-string/jumbo v9, "ugc"

    invoke-virtual {v5, v9}, Lrf;->a(Ljava/lang/String;)V

    .line 62
    new-instance v6, Lrf;

    const-string/jumbo v7, "PLUGIN"

    const-string/jumbo v8, "\u83ab\u6bd4\u65af"

    const-string/jumbo v9, "home_speech_tool_mobuis"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.viafly.translate.ui.TranslateMainActivity"

    invoke-direct/range {v6 .. v11}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v6, "mobius":Lrf;
    invoke-static {}, Lari;->a()Lari;

    move-result-object v9

    const/16 v10, 0x12d

    invoke-virtual {v9, v10}, Lari;->b(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    move-result-object v15

    .line 64
    .local v15, "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    sget-object v9, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    if-eq v15, v9, :cond_0

    sget-object v9, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->outside_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    if-ne v15, v9, :cond_c

    .line 65
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_b

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v6, Lrf;->g:Z

    .line 73
    :goto_1
    new-instance v7, Lrf;

    const-string/jumbo v8, "MORE"

    const-string/jumbo v9, "\u66f4\u591a\u5de5\u5177"

    const-string/jumbo v10, "home_speech_tool_more"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.viafly.homepage.life.HomeLifeMoreActivity"

    invoke-direct/range {v7 .. v12}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v7, "more":Lrf;
    new-instance v8, Lrf;

    const-string/jumbo v9, "PLUGIN"

    const-string/jumbo v10, "\u8bed\u97f3\u9065\u63a7"

    const-string/jumbo v11, "home_tv_assist_tool_ugc"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "com.iflytek.viafly.translate.ui.TranslateMainActivity"

    invoke-direct/range {v8 .. v13}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v8, "tvAssist":Lrf;
    const-string/jumbo v9, "tvRemote"

    invoke-virtual {v8, v9}, Lrf;->a(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lari;->a()Lari;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lari;->b(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    move-result-object v17

    .line 79
    .local v17, "tvPluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    sget-object v9, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    move-object/from16 v0, v17

    if-eq v0, v9, :cond_1

    sget-object v9, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->outside_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    move-object/from16 v0, v17

    if-ne v0, v9, :cond_e

    .line 80
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, v8, Lrf;->g:Z

    .line 85
    :goto_2
    iget-boolean v9, v1, Lrf;->g:Z

    if-eqz v9, :cond_2

    .line 86
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_2
    iget-boolean v9, v2, Lrf;->g:Z

    if-eqz v9, :cond_3

    .line 89
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_3
    iget-boolean v9, v3, Lrf;->g:Z

    if-eqz v9, :cond_4

    .line 92
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_4
    iget-boolean v9, v6, Lrf;->g:Z

    if-eqz v9, :cond_5

    .line 95
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_5
    iget-boolean v9, v4, Lrf;->g:Z

    if-eqz v9, :cond_6

    .line 98
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_6
    iget-boolean v9, v14, Lrf;->g:Z

    if-eqz v9, :cond_7

    .line 101
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_7
    iget-boolean v9, v5, Lrf;->g:Z

    if-eqz v9, :cond_8

    .line 104
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_8
    iget-boolean v9, v8, Lrf;->g:Z

    if-eqz v9, :cond_9

    .line 107
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_9
    iget-boolean v9, v7, Lrf;->g:Z

    if-eqz v9, :cond_a

    .line 110
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_a
    return-object v16

    .line 65
    .end local v7    # "more":Lrf;
    .end local v8    # "tvAssist":Lrf;
    .end local v17    # "tvPluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 70
    :cond_c
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_d

    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, v6, Lrf;->g:Z

    goto/16 :goto_1

    .line 82
    .restart local v7    # "more":Lrf;
    .restart local v8    # "tvAssist":Lrf;
    .restart local v17    # "tvPluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    :cond_e
    const/4 v9, 0x0

    iput-boolean v9, v8, Lrf;->g:Z

    goto :goto_2
.end method

.method private static g()Lrf;
    .locals 8

    .prologue
    .line 116
    new-instance v0, Lrf;

    const-string/jumbo v1, "WEB"

    const-string/jumbo v2, "\u542c\u4e66"

    const-string/jumbo v3, "home_speech_tool_listen"

    const-string/jumbo v4, "\u7075\u7280 | \u7eb7\u6742\u4e16\u754c \u9759\u5fc3\u8046\u542c"

    const-string/jumbo v5, "http://wap.cmread.com/lx/p/cpts.jsp?vt=3"

    invoke-direct/range {v0 .. v5}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v0, "listen":Lrf;
    new-instance v6, Lqz;

    invoke-direct {v6}, Lqz;-><init>()V

    .line 118
    .local v6, "mTabBizHandler":Lqz;
    invoke-virtual {v6}, Lqz;->a()Lrc;

    move-result-object v7

    .line 119
    .local v7, "tabData":Lrc;
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Lrc;->b()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {v7}, Lrc;->a()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "des":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Lrf;

    .end local v0    # "listen":Lrf;
    const-string/jumbo v1, "WEB"

    const-string/jumbo v3, "home_speech_tool_listen"

    const-string/jumbo v4, "\u7075\u7280 | \u7eb7\u6742\u4e16\u754c \u9759\u5fc3\u8046\u542c"

    invoke-direct/range {v0 .. v5}, Lrf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v2    # "des":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .restart local v0    # "listen":Lrf;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lrf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRemark"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lrf;->f:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lrf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lrf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lrf;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lrf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lrf;->f:Ljava/lang/String;

    return-object v0
.end method
