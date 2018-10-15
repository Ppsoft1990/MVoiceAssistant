.class public Lags;
.super Ljava/lang/Object;
.source "GrayControlManagerImpl.java"

# interfaces
.implements Lagr;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lagn;

.field private c:Ljava/lang/Object;

.field private d:Lagp;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "GrayControlManager"

    iput-object v0, p0, Lags;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lags;->c:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lags;->e:Landroid/content/Context;

    .line 46
    new-instance v0, Lago;

    invoke-direct {v0, p2}, Lago;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lags;->b:Lagn;

    .line 47
    invoke-direct {p0}, Lags;->b()V

    .line 48
    return-void
.end method

.method private a(Lagp;)V
    .locals 3
    .param p1, "grayControlInfo"    # Lagp;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    const-string/jumbo v0, "GrayControlManager"

    const-string/jumbo v1, "updateDatabaseTask | grayControlInfo is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string/jumbo v0, "GrayControlManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDatabaseTask | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lagp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p1}, Lagp;->m()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    const-string/jumbo v0, "GrayControlManager"

    const-string/jumbo v1, "updateDatabaseTask | update datebases = "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lags;->b:Lagn;

    invoke-interface {v0, p1}, Lagn;->a(Lagp;)V

    goto :goto_0

    .line 231
    :cond_1
    const-string/jumbo v0, "GrayControlManager"

    const-string/jumbo v1, "updateDatabaseTask | insert into databasse"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lags;->b:Lagn;

    invoke-interface {v0, p1}, Lagn;->b(Lagp;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 69
    .local v4, "lstSubElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 71
    :cond_0
    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v6, v5, :cond_1

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 73
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {p2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {p2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 79
    :cond_2
    const-string/jumbo v5, ""

    invoke-direct {p0, v5, p2, v4}, Lags;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V

    goto :goto_2

    .line 60
    .end local v4    # "lstSubElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 83
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    .end local v3    # "j":I
    :cond_4
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lags;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lags;->b:Lagn;

    invoke-interface {v0}, Lagn;->a()Lagp;

    move-result-object v0

    iput-object v0, p0, Lags;->d:Lagp;

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v1

    invoke-virtual {v1}, Lhy;->d()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "phoneImei":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private d(Ljava/lang/String;)V
    .locals 28
    .param p1, "xmlString"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string/jumbo v25, "GrayControlManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "parserAndUpdateGrayInfo | xmlString = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v15, "mapValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v24

    .line 114
    .local v24, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v18

    .line 117
    .local v18, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 118
    .local v14, "lstElements":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;>;"
    const-string/jumbo v25, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v15, v14}, Lags;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V

    .line 119
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    .line 123
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, "model":Ljava/lang/String;
    const-string/jumbo v25, "model"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, "adapterModel":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 126
    const-string/jumbo v25, "GrayControlManager"

    const-string/jumbo v26, "parserXml | phoneModel != adapterModel-->return"

    invoke-static/range {v25 .. v26}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_2
    const-string/jumbo v25, "imei"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 131
    .local v9, "imei":Ljava/lang/String;
    const-string/jumbo v25, "incomming_call"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 132
    .local v10, "incomingCall":Ljava/lang/String;
    const-string/jumbo v25, "dial_call"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 133
    .local v7, "dialCall":Ljava/lang/String;
    const-string/jumbo v25, "answer_call"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, "answerCall":Ljava/lang/String;
    const-string/jumbo v25, "incoming_sms"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 135
    .local v11, "incomingSms":Ljava/lang/String;
    const-string/jumbo v25, "send_sms"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 136
    .local v20, "sendSms":Ljava/lang/String;
    const-string/jumbo v25, "bluetooth_record"

    .line 137
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 138
    .local v5, "bluetoothRecord":Ljava/lang/String;
    const-string/jumbo v25, "bluetooth_wake"

    .line 139
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 140
    .local v6, "bluetoothWake":Ljava/lang/String;
    const-string/jumbo v25, "bluetooth_play"

    .line 141
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 142
    .local v4, "bluetoothPlay":Ljava/lang/String;
    const-string/jumbo v25, "speech"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 143
    .local v23, "speech":Ljava/lang/String;
    const-string/jumbo v25, "lock_screen"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 144
    .local v13, "lockScreen":Ljava/lang/String;
    const-string/jumbo v25, "hardware_acce"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 145
    .local v8, "hardWareAcce":Ljava/lang/String;
    const-string/jumbo v25, "local_recognize"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 146
    .local v12, "localRecognize":Ljava/lang/String;
    const-string/jumbo v25, "speak_evaluate"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 147
    .local v22, "speakEvaluate":Ljava/lang/String;
    const-string/jumbo v25, "oral_game"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 148
    .local v17, "oralgame":Ljava/lang/String;
    const-string/jumbo v25, "sougou_plugin"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 149
    .local v21, "sogouPlugin":Ljava/lang/String;
    const-string/jumbo v25, "schedule_optimization"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 151
    .local v19, "schedule_optimization":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->c:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 152
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    if-nez v25, :cond_3

    .line 153
    new-instance v25, Lagp;

    invoke-direct/range {v25 .. v25}, Lagp;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lags;->d:Lagp;

    .line 156
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lagp;->a(Ljava/lang/String;)V

    .line 157
    if-eqz v4, :cond_4

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lagp;->i(Ljava/lang/String;)V

    .line 160
    :cond_4
    if-eqz v6, :cond_5

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lagp;->h(Ljava/lang/String;)V

    .line 163
    :cond_5
    if-eqz v20, :cond_6

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lagp;->f(Ljava/lang/String;)V

    .line 166
    :cond_6
    if-eqz v5, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lagp;->g(Ljava/lang/String;)V

    .line 169
    :cond_7
    if-eqz v11, :cond_8

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->e:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Lagp;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    :cond_8
    if-eqz v3, :cond_9

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lagp;->d(Ljava/lang/String;)V

    .line 175
    :cond_9
    if-eqz v7, :cond_a

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lagp;->e(Ljava/lang/String;)V

    .line 178
    :cond_a
    if-eqz v10, :cond_b

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lagp;->c(Ljava/lang/String;)V

    .line 181
    :cond_b
    if-eqz v23, :cond_c

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lagp;->b(Ljava/lang/String;)V

    .line 184
    :cond_c
    if-eqz v13, :cond_d

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lagp;->k(Ljava/lang/String;)V

    .line 187
    :cond_d
    if-eqz v8, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lagp;->j(Ljava/lang/String;)V

    .line 190
    :cond_e
    if-eqz v12, :cond_f

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lagp;->l(Ljava/lang/String;)V

    .line 193
    :cond_f
    if-eqz v9, :cond_10

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lagp;->m(Ljava/lang/String;)V

    .line 196
    :cond_10
    if-eqz v22, :cond_11

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lagp;->n(Ljava/lang/String;)V

    .line 199
    :cond_11
    if-eqz v17, :cond_12

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lagp;->o(Ljava/lang/String;)V

    .line 202
    :cond_12
    if-eqz v21, :cond_13

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lagp;->p(Ljava/lang/String;)V

    .line 205
    :cond_13
    if-eqz v19, :cond_14

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lags;->d:Lagp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lagp;->q(Ljava/lang/String;)V

    .line 208
    :cond_14
    monitor-exit v26

    goto/16 :goto_0

    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25
.end method

.method private e(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lags;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    return-void
.end method


# virtual methods
.method public a()Lagp;
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lags;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lags;->d:Lagp;

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "xmlString"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v1, "GrayControlManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filterAdapterXml | xmlString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0, p1}, Lags;->d(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lags;->d:Lagp;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lags;->d:Lagp;

    invoke-virtual {v1}, Lagp;->l()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "imei":Ljava/lang/String;
    const-string/jumbo v1, "GrayControlManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filterAdapterXml | imei = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lags;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :cond_2
    const-string/jumbo v1, "GrayControlManager"

    const-string/jumbo v2, "filterAdapterXml | imei is null or is my imei"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lags;->d:Lagp;

    invoke-direct {p0, v1}, Lags;->a(Lagp;)V

    .line 97
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LOCKSCREEN_REFRESH_INDICATOR"

    invoke-direct {p0, v1}, Lags;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "model":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 248
    const-string/jumbo v4, "select * from gray_control_adaptation where modelInfo = ?"

    .line 250
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    .line 251
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lags;->b:Lagn;

    invoke-interface {v5, v4, v3}, Lagn;->query2MapList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 252
    .local v0, "grayList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 254
    .local v1, "grayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, v1, Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 255
    check-cast v1, Ljava/util/HashMap;

    .line 261
    .end local v0    # "grayList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "grayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "sql":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
