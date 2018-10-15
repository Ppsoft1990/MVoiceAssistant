.class public final Lhe;
.super Ljava/lang/Object;
.source "ContactManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe$c;,
        Lhe$a;,
        Lhe$b;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static final d:Ljava/lang/String;

.field private static h:Z


# instance fields
.field private b:Lhb;

.field private c:Lhg;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private i:Lcom/dictcompile/DictCompile;

.field private j:J

.field private k:Lhe$c;

.field private l:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lhe;->a:Landroid/content/Context;

    .line 45
    sget-object v0, Lnj;->a:Ljava/lang/String;

    sput-object v0, Lhe;->d:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lhe;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lhe;->b:Lhb;

    .line 41
    iput-object v0, p0, Lhe;->c:Lhg;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhe;->e:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhe;->f:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhe;->g:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/dictcompile/DictCompile;

    invoke-direct {v0}, Lcom/dictcompile/DictCompile;-><init>()V

    iput-object v0, p0, Lhe;->i:Lcom/dictcompile/DictCompile;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhe;->j:J

    .line 61
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lhe;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 90
    new-instance v0, Lhb;

    sget-object v1, Lhe;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhe;->b:Lhb;

    .line 91
    new-instance v0, Lhg;

    sget-object v1, Lhe;->a:Landroid/content/Context;

    iget-object v2, p0, Lhe;->b:Lhb;

    invoke-direct {v0, v1, v2}, Lhg;-><init>(Landroid/content/Context;Lhb;)V

    iput-object v0, p0, Lhe;->c:Lhg;

    .line 92
    iget-object v0, p0, Lhe;->b:Lhb;

    sget-object v1, Lhe;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lhb;->a(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lhe$1;)V
    .locals 0
    .param p1, "x0"    # Lhe$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lhe;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lhe;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget-object v0, Lhe;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lhe;->a:Landroid/content/Context;

    .line 71
    :cond_0
    sget-object v0, Lhe$b;->a:Lhe;

    return-object v0
.end method

.method static synthetic a(Lhe;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lhe;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 34
    iput-object p1, p0, Lhe;->e:Ljava/util/HashMap;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "backupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-direct {p0}, Lhe;->i()Ljava/util/HashMap;

    move-result-object v3

    .line 228
    .local v3, "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 231
    .local v2, "reusltList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 234
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "reusltList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method static synthetic a(Lhe;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lhe;

    .prologue
    .line 34
    iget-object v0, p0, Lhe;->l:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private a(Lhe$a;[Ljava/lang/String;ZZ)V
    .locals 24
    .param p1, "listener"    # Lhe$a;
    .param p2, "contactNames"    # [Ljava/lang/String;
    .param p3, "changeFlag"    # Z
    .param p4, "isContactChanged"    # Z

    .prologue
    .line 509
    const-string/jumbo v20, "ContactManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "split name isSplitDicLoaded: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lhe;->h:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-boolean v20, Lhe;->h:Z

    if-nez v20, :cond_0

    .line 511
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 512
    sget-object v20, Lhe;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lhe;->b(Landroid/content/Context;)V

    .line 513
    const-string/jumbo v20, "ContactManager"

    const-string/jumbo v21, "split name unzip"

    invoke-static/range {v20 .. v21}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lhe;->i:Lcom/dictcompile/DictCompile;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lhe;->d:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "//"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/dictcompile/DictCompile;->namexp_init(Ljava/lang/String;)I

    move-result v8

    .line 516
    .local v8, "flag":I
    const-string/jumbo v20, "ContactManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "split name read dic flag: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_0

    .line 518
    const/16 v20, 0x1

    sput-boolean v20, Lhe;->h:Z

    .line 522
    .end local v8    # "flag":I
    :cond_0
    sget-boolean v20, Lhe;->h:Z

    if-eqz v20, :cond_1

    if-nez p3, :cond_3

    invoke-direct/range {p0 .. p0}, Lhe;->i()Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 523
    :cond_1
    if-eqz p1, :cond_2

    .line 524
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lhe$a;->onContactQueryFinish([Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 581
    :cond_2
    :goto_0
    return-void

    .line 527
    :cond_3
    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_a

    .line 528
    const-string/jumbo v17, ""

    .line 529
    .local v17, "test":Ljava/lang/String;
    const/4 v9, 0x0

    .line 530
    .local v9, "i":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-object v15, p2, v20

    .line 531
    .local v15, "string":Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v9, v0, :cond_4

    .line 533
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 534
    add-int/lit8 v9, v9, 0x1

    .line 530
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 536
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 539
    .end local v15    # "string":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 540
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lhe;->i:Lcom/dictcompile/DictCompile;

    move-object/from16 v20, v0

    const-string/jumbo v21, "aa"

    const-string/jumbo v22, "UTF8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/dictcompile/DictCompile;->namexp_expand_mem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, "aaa":Ljava/lang/String;
    const-string/jumbo v20, "ContactManager"

    const-string/jumbo v21, "split name name exp"

    invoke-static/range {v20 .. v21}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 544
    const-string/jumbo v20, "%"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 545
    .local v12, "resultStrings":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lhe;->i()Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 546
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v18, "totalList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, v12

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v15, v12, v20

    .line 548
    .restart local v15    # "string":Ljava/lang/String;
    const-string/jumbo v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 549
    .local v7, "finalResult":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 550
    .local v19, "value":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 551
    .local v16, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 552
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 553
    .local v10, "isfirst":Ljava/lang/Boolean;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_6
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 554
    .local v14, "st":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 555
    move-object/from16 v19, v14

    .line 556
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_4

    .line 558
    :cond_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 559
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lhe;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 547
    .end local v14    # "st":Ljava/lang/String;
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 565
    .end local v7    # "finalResult":[Ljava/lang/String;
    .end local v10    # "isfirst":Ljava/lang/Boolean;
    .end local v15    # "string":Ljava/lang/String;
    .end local v16    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v20, "ContactManager"

    const-string/jumbo v21, "split name using in create map"

    invoke-static/range {v20 .. v21}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-direct/range {p0 .. p0}, Lhe;->h()V

    .line 567
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 568
    .local v6, "allStrings":[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lhe;->a:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "spliteName.txt"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 569
    .local v13, "spliteFile":Ljava/lang/String;
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v11

    .line 570
    .local v11, "newSpliteString":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v13, v11, v0}, Lcom/iflytek/yd/util/FileManager;->writeString(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 571
    const-string/jumbo v20, "ContactManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "total split size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v6

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-eqz p1, :cond_2

    .line 573
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v0, v1, v6, v2, v3}, Lhe$a;->onContactQueryFinish([Ljava/lang/String;[Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 576
    .end local v5    # "aaa":Ljava/lang/String;
    .end local v6    # "allStrings":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "newSpliteString":Ljava/lang/String;
    .end local v12    # "resultStrings":[Ljava/lang/String;
    .end local v13    # "spliteFile":Ljava/lang/String;
    .end local v17    # "test":Ljava/lang/String;
    .end local v18    # "totalList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    if-eqz p1, :cond_2

    .line 577
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lhe$a;->onContactQueryFinish([Ljava/lang/String;[Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lhe;Lhe$a;)V
    .locals 0
    .param p0, "x0"    # Lhe;
    .param p1, "x1"    # Lhe$a;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lhe;->c(Lhe$a;)V

    return-void
.end method

.method static synthetic b(Lhe;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lhe;

    .prologue
    .line 34
    iget-object v0, p0, Lhe;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 469
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccSPLITE_NAME_RES_VERSION"

    .line 470
    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 472
    const-string/jumbo v1, "ContactManager"

    const-string/jumbo v2, "split name database version is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccSPLITE_NAME_RES_VERSION"

    const-string/jumbo v3, "1.0"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {p1}, Lhe;->c(Landroid/content/Context;)V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    const-string/jumbo v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 477
    const-string/jumbo v1, "ContactManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "split name database current version is 1.0cached version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccSPLITE_NAME_RES_VERSION"

    const-string/jumbo v3, "1.0"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {p1}, Lhe;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 483
    :cond_2
    const-string/jumbo v1, "ContactManager"

    const-string/jumbo v2, "split name version check is right "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lhe;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lhe;->h:Z

    if-nez v1, :cond_0

    .line 485
    :cond_3
    invoke-static {p1}, Lhe;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    const-string/jumbo v1, "ContactManager"

    const-string/jumbo v2, "unzipDataBase from assets to rom"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lhe;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lhe;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 496
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "res.zip"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lhe;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/FileManager;->unZipFromAsset(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Lhe$a;)V
    .locals 3
    .param p1, "listener"    # Lhe$a;

    .prologue
    .line 427
    :try_start_0
    sget-object v1, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lhe$1;

    invoke-direct {v2, p0, p1}, Lhe$1;-><init>(Lhe;Lhe$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 598
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lhe$4;

    invoke-direct {v1, p0}, Lhe$4;-><init>(Lhe;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 615
    return-void
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lhe;->a:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lhe;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhe;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    const-string/jumbo v0, "ContactManager"

    const-string/jumbo v1, "Splite Name contact info cache is null or size is 0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_0
    return-void

    .line 588
    :cond_1
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lhe$3;

    invoke-direct {v1, p0}, Lhe$3;-><init>(Lhe;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private i()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v1, p0, Lhe;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 619
    :try_start_0
    iget-object v0, p0, Lhe;->e:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0, p1, p2}, Lhb;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 276
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0, p1, p2}, Lhb;->a(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "contactId":Ljava/lang/String;
    iget-object v1, p0, Lhe;->c:Lhg;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lhe;->c:Lhg;

    invoke-virtual {v1, p1}, Lhg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lhe;->b:Lhb;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lhe;->b:Lhb;

    invoke-virtual {v1, p1}, Lhb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_1
    return-object v0
.end method

.method public a(ZLjava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "fuzzyFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lhe;->c:Lhg;

    if-eqz v2, :cond_0

    .line 213
    move-object v1, p2

    .line 215
    .local v1, "enlargeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p2}, Lhe;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 219
    :goto_0
    iget-object v2, p0, Lhe;->c:Lhg;

    invoke-virtual {v2, p1, v1}, Lhg;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 221
    .end local v1    # "enlargeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 216
    .restart local v1    # "enlargeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "enlargeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    .local p2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 404
    iget-object v1, p0, Lhe;->c:Lhg;

    invoke-static {p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lhe;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhg;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    .line 406
    :cond_0
    iget-object v1, p0, Lhe;->c:Lhg;

    invoke-virtual {v1, p1, p3}, Lhg;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lhe$a;)V
    .locals 11
    .param p1, "listener"    # Lhe$a;

    .prologue
    const/16 v10, 0x3e8

    const-wide/32 v8, 0x1d4c0

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    .local v0, "currentTime":J
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lhe;->j:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lhe;->j:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 309
    :cond_0
    invoke-direct {p0, p1}, Lhe;->c(Lhe$a;)V

    .line 310
    iput-wide v0, p0, Lhe;->j:J

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-wide v4, p0, Lhe;->j:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 315
    iget-wide v4, p0, Lhe;->j:J

    sub-long v4, v0, v4

    cmp-long v3, v4, v8

    if-gtz v3, :cond_4

    .line 316
    iget-object v3, p0, Lhe;->k:Lhe$c;

    if-nez v3, :cond_3

    .line 317
    new-instance v3, Lhe$c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lhe$c;-><init>(Lhe;Lhe$1;)V

    iput-object v3, p0, Lhe;->k:Lhe$c;

    .line 320
    :cond_3
    iget-object v3, p0, Lhe;->k:Lhe$c;

    invoke-virtual {v3, v10}, Lhe$c;->removeMessages(I)V

    .line 322
    iget-object v3, p0, Lhe;->k:Lhe$c;

    invoke-virtual {v3}, Lhe$c;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 323
    .local v2, "message":Landroid/os/Message;
    iput v10, v2, Landroid/os/Message;->what:I

    .line 324
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    const-string/jumbo v3, "ContactManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delayed trigger query contact = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lhe;->j:J

    sub-long v6, v0, v6

    sub-long v6, v8, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lhe;->k:Lhe$c;

    iget-wide v4, p0, Lhe;->j:J

    sub-long v4, v0, v4

    sub-long v4, v8, v4

    invoke-virtual {v3, v2, v4, v5}, Lhe$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 330
    .end local v2    # "message":Landroid/os/Message;
    :cond_4
    const-string/jumbo v3, "ContactManager"

    const-string/jumbo v4, "last query time is over 2 min"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0, p1}, Lhe;->c(Lhe$a;)V

    .line 332
    iput-wide v0, p0, Lhe;->j:J

    goto :goto_0
.end method

.method public a(Lhe$a;Z)V
    .locals 7
    .param p1, "listener"    # Lhe$a;
    .param p2, "isContactChanged"    # Z

    .prologue
    .line 151
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 152
    iget-object v4, p0, Lhe;->c:Lhg;

    invoke-virtual {v4}, Lhg;->a()[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "contactNames":[Ljava/lang/String;
    iget-object v5, p0, Lhe;->f:Ljava/lang/Object;

    monitor-enter v5

    .line 154
    const/16 v4, 0xa

    :try_start_0
    invoke-static {v0, v4}, Lcom/iflytek/viafly/util/IflyStringUtil;->a([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "newNameString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lhe;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "name.txt"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "nameFile":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "oldNameString":Ljava/lang/String;
    const-string/jumbo v4, "ContactManager"

    const-string/jumbo v6, "queryAllContactNames"

    invoke-static {v4, v6}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    const-string/jumbo v4, "ContactManager"

    const-string/jumbo v6, "contact name is not change."

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_0

    .line 161
    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v4, p2}, Lhe;->a(Lhe$a;[Ljava/lang/String;ZZ)V

    .line 169
    :cond_0
    :goto_0
    monitor-exit v5

    .line 170
    return-void

    .line 164
    :cond_1
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/iflytek/yd/util/FileManager;->writeString(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const/4 v4, 0x1

    invoke-direct {p0, p1, v0, v4, p2}, Lhe;->a(Lhe$a;[Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 169
    .end local v1    # "nameFile":Ljava/lang/String;
    .end local v2    # "newNameString":Ljava/lang/String;
    .end local v3    # "oldNameString":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0, p1, p2}, Lhb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method public a(JJ)[B
    .locals 1
    .param p1, "photoId"    # J
    .param p3, "contactId"    # J

    .prologue
    .line 136
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0, p1, p2, p3, p4}, Lhb;->a(JJ)[B

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0}, Lhb;->d()[Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0}, Lhb;->e()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0, p1}, Lhb;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lhe$a;)V
    .locals 3
    .param p1, "listener"    # Lhe$a;

    .prologue
    .line 452
    :try_start_0
    sget-object v1, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lhe$2;

    invoke-direct {v2, p0, p1}, Lhe$2;-><init>(Lhe;Lhe$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lhe$a;Z)V
    .locals 2
    .param p1, "listener"    # Lhe$a;
    .param p2, "isRestart"    # Z

    .prologue
    .line 339
    if-eqz p2, :cond_2

    .line 340
    const-string/jumbo v0, "ContactManager"

    const-string/jumbo v1, "initQueryContact | restart process true | contact grammar ok "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0}, Lhe;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Lhe;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lhe;->d(Landroid/content/Context;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lhe;->c:Lhg;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lhe;->c:Lhg;

    invoke-virtual {v0}, Lhg;->c()V

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhe;->a(Lhe$a;Z)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-object v1, p0, Lhe;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_0
    iget-object v0, p0, Lhe;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lhe;->e:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_0
    iget-object v0, p0, Lhe;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0}, Lhb;->a()Landroid/net/Uri;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lhe;->c:Lhg;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lhe;->c:Lhg;

    invoke-virtual {v0, p1}, Lhg;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lhe;->b:Lhb;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0}, Lhb;->k()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhe;->b:Lhb;

    .line 241
    invoke-virtual {v0}, Lhb;->k()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0}, Lhb;->j()V

    .line 244
    :cond_1
    iget-object v0, p0, Lhe;->b:Lhb;

    invoke-virtual {v0}, Lhb;->k()Ljava/util/HashSet;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lhe;->c:Lhg;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lhe;->c:Lhg;

    invoke-virtual {v0, p1}, Lhg;->c(Ljava/lang/String;)Z

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lhe;->c:Lhg;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lhe;->c:Lhg;

    invoke-virtual {v0, p1}, Lhg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lhe;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "cacheStrings":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    const-string/jumbo v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "caches":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 365
    .end local v1    # "caches":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public f()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x2f

    .line 375
    const-string/jumbo v4, "ContactManager"

    const-string/jumbo v5, "geSpliteNameCacheStrings"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhe;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "spliteName.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 379
    const-string/jumbo v4, "ContactManager"

    const-string/jumbo v5, "geSpliteNameCacheStrings no file return null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 390
    :cond_0
    :goto_0
    return-object v1

    .line 382
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhe;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 383
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "spliteName.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-static {v4}, Lcom/iflytek/yd/util/FileManager;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "cacheStrings":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    const-string/jumbo v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "caches":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v4, v1

    if-gtz v4, :cond_0

    .end local v1    # "caches":[Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .line 390
    goto :goto_0
.end method
