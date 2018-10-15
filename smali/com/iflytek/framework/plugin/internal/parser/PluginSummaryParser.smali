.class public final Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;
.super Ljava/lang/Object;
.source "PluginSummaryParser.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/parser/IPluginParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/framework/plugin/internal/parser/IPluginParser",
        "<",
        "Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginSummaryParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    .locals 29
    .param p1, "parseData"    # Ljava/util/Properties;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/Properties;->size()I

    move-result v27

    if-nez v27, :cond_1

    .line 26
    :cond_0
    const-string/jumbo v27, "PluginSummaryParser"

    const-string/jumbo v28, "parseData map is null or size 0"

    invoke-static/range {v27 .. v28}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/16 v23, 0x0

    .line 144
    :goto_0
    return-object v23

    .line 31
    :cond_1
    :try_start_0
    new-instance v23, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    invoke-direct/range {v23 .. v23}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;-><init>()V

    .line 33
    .local v23, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    const-string/jumbo v27, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 34
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v27, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 35
    .local v12, "id":Ljava/lang/String;
    const-string/jumbo v27, "platform"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 36
    .local v17, "platform":Ljava/lang/String;
    const-string/jumbo v27, "author"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "author":Ljava/lang/String;
    const-string/jumbo v27, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 38
    .local v25, "version":Ljava/lang/String;
    const-string/jumbo v27, "app_minversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "appmin":Ljava/lang/String;
    const-string/jumbo v27, "api_minversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "apimin":Ljava/lang/String;
    const-string/jumbo v27, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 41
    .local v24, "type":Ljava/lang/String;
    const-string/jumbo v27, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "description":Ljava/lang/String;
    const-string/jumbo v27, "packagename"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 43
    .local v16, "packageName":Ljava/lang/String;
    const-string/jumbo v27, "require_plugininfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 44
    .local v21, "requirePlugin":Ljava/lang/String;
    const-string/jumbo v27, "icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    .local v11, "icon":Ljava/lang/String;
    const-string/jumbo v27, "custom"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "custom":Ljava/lang/String;
    const-string/jumbo v27, "entry_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "entry_type":Ljava/lang/String;
    const-string/jumbo v27, "kind"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, "kind":Ljava/lang/String;
    const-string/jumbo v27, "visibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 50
    .local v26, "visibility":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 51
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setName(Ljava/lang/String;)V

    .line 54
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 55
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setId(Ljava/lang/String;)V

    .line 58
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 59
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setPlatform(Ljava/lang/String;)V

    .line 62
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 63
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setAuthor(Ljava/lang/String;)V

    .line 66
    :cond_5
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 67
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setVersion(I)V

    .line 70
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setRequireAppMinVersion(I)V

    .line 74
    :cond_7
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 75
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setType(I)V

    .line 78
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setRequireOSApi(I)V

    .line 82
    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 83
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setDescription(Ljava/lang/String;)V

    .line 86
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 87
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setCustom(Ljava/lang/String;)V

    .line 90
    :cond_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 91
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setEntryType(Ljava/lang/String;)V

    .line 94
    :cond_c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 95
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setKind(Ljava/lang/String;)V

    .line 98
    :cond_d
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 99
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setPackageName(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v27, "com.iflytek.cmcc"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 101
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setIsApk(I)V

    .line 102
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 103
    invoke-static {v12}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->getInstallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setInstallPath(Ljava/lang/String;)V

    .line 110
    :cond_e
    :goto_1
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_12

    .line 111
    const-string/jumbo v27, ";"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 112
    .local v22, "requireStrings":[Ljava/lang/String;
    if-eqz v22, :cond_12

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_12

    .line 113
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v20, "requireMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v10, v0, :cond_11

    .line 115
    aget-object v27, v22, v10

    const-string/jumbo v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, "idAndVersions":[Ljava/lang/String;
    if-eqz v13, :cond_f

    array-length v0, v13

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_f

    .line 118
    const/16 v27, 0x0

    aget-object v18, v13, v27

    .line 119
    .local v18, "plugigId":Ljava/lang/String;
    const/16 v27, 0x1

    aget-object v19, v13, v27

    .line 120
    .local v19, "pluginVersion":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_f

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_f

    .line 121
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v18    # "plugigId":Ljava/lang/String;
    .end local v19    # "pluginVersion":Ljava/lang/String;
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 106
    .end local v10    # "i":I
    .end local v13    # "idAndVersions":[Ljava/lang/String;
    .end local v20    # "requireMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "requireStrings":[Ljava/lang/String;
    :cond_10
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setIsApk(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    .end local v3    # "apimin":Ljava/lang/String;
    .end local v4    # "appmin":Ljava/lang/String;
    .end local v5    # "author":Ljava/lang/String;
    .end local v6    # "custom":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "entry_type":Ljava/lang/String;
    .end local v11    # "icon":Ljava/lang/String;
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "kind":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "platform":Ljava/lang/String;
    .end local v21    # "requirePlugin":Ljava/lang/String;
    .end local v23    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    .end local v24    # "type":Ljava/lang/String;
    .end local v25    # "version":Ljava/lang/String;
    .end local v26    # "visibility":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 141
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v27, "PluginSummaryParser"

    const-string/jumbo v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 125
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "apimin":Ljava/lang/String;
    .restart local v4    # "appmin":Ljava/lang/String;
    .restart local v5    # "author":Ljava/lang/String;
    .restart local v6    # "custom":Ljava/lang/String;
    .restart local v7    # "description":Ljava/lang/String;
    .restart local v9    # "entry_type":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "icon":Ljava/lang/String;
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v14    # "kind":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "platform":Ljava/lang/String;
    .restart local v20    # "requireMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "requirePlugin":Ljava/lang/String;
    .restart local v22    # "requireStrings":[Ljava/lang/String;
    .restart local v23    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    .restart local v24    # "type":Ljava/lang/String;
    .restart local v25    # "version":Ljava/lang/String;
    .restart local v26    # "visibility":Ljava/lang/String;
    :cond_11
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setRequirePluginMap(Ljava/util/HashMap;)V

    .line 129
    .end local v10    # "i":I
    .end local v20    # "requireMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "requireStrings":[Ljava/lang/String;
    :cond_12
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_13

    .line 130
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setIcon(Ljava/lang/String;)V

    .line 133
    :cond_13
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 134
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setVisibility(I)V

    goto/16 :goto_0

    .line 136
    :cond_14
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public bridge synthetic parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/interfaces/IPluginData;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;->parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    return-object v0
.end method
