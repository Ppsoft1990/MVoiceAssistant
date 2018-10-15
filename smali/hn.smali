.class public Lhn;
.super Ljava/lang/Object;
.source "SmsContactHelper.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 50
    :cond_0
    const/16 v16, 0x0

    .line 90
    :cond_1
    return-object v16

    .line 52
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 53
    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 55
    :cond_3
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v18, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v16, "tmpContactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 59
    .local v12, "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    invoke-virtual {v4, v12}, Lhe;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 61
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_5
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    const-string/jumbo v6, "message"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v2, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 68
    .local v13, "nameone":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v13, v6}, Lhe;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 71
    .local v11, "mContactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 72
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, "tempName":Ljava/lang/String;
    if-eqz v15, :cond_4

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static/range {p1 .. p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    invoke-virtual {v4, v15}, Lhe;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 74
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v2    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .end local v11    # "mContactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nameone":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "tempName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 80
    invoke-static/range {p1 .. p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    const/4 v5, 0x0

    .line 81
    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lhe;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v17

    .line 82
    .local v17, "tmpContactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 83
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 84
    .local v14, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v3, Lcom/iflytek/base/contacts/entities/ContactItem;

    const-wide/16 v4, 0x0

    invoke-virtual {v14}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 85
    invoke-virtual {v14}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v3, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentString"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lhn;->a:Ljava/lang/String;

    .line 41
    return-void
.end method
