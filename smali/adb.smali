.class public Ladb;
.super Ljava/lang/Object;
.source "WidgetContactListView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/Context;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lacp;

.field private o:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Ladb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ladb;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lacp;Ljava/util/List;Ljava/lang/String;B)V
    .locals 1
    .param p1, "pResultHandler"    # Lacp;
    .param p3, "pFocus"    # Ljava/lang/String;
    .param p4, "pTextSearchMode"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lacp;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "pContactSets":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladb;->a:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladb;->b:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladb;->c:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladb;->e:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladb;->f:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladb;->g:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ladb;->j:Ljava/util/List;

    .line 71
    iput-object p1, p0, Ladb;->n:Lacp;

    .line 72
    invoke-interface {p1}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ladb;->l:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Ladb;->m:Ljava/util/List;

    .line 75
    iput-byte p4, p0, Ladb;->o:B

    .line 76
    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 3
    .param p1, "pIndex"    # I
    .param p2, "pIndexInItem"    # I

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v1, p0, Ladb;->m:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 605
    :goto_0
    return-object v1

    .line 600
    :cond_1
    iget-object v1, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v0

    .line 601
    .local v0, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    :cond_2
    move-object v1, v2

    .line 602
    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 609
    iget-object v1, p0, Ladb;->n:Lacp;

    invoke-interface {v1}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 610
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    .line 612
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 614
    :cond_0
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 553
    const/4 v3, 0x0

    .line 555
    .local v3, "isShowSimName":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 556
    iget-object v12, p0, Ladb;->a:Ljava/util/List;

    iget-object v10, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v12, p0, Ladb;->b:Ljava/util/List;

    iget-object v10, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :try_start_0
    iget-object v10, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhc;->a(Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v10

    iget-object v0, v10, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    .line 560
    .local v0, "defaultNum":Ljava/lang/String;
    iget-object v10, p0, Ladb;->c:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v0    # "defaultNum":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/Exception;
    iget-object v12, p0, Ladb;->c:Ljava/util/List;

    iget-object v10, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 566
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    :goto_2
    iget-object v10, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 567
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 568
    .local v6, "numberList":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 569
    .local v7, "simList":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 570
    .local v9, "tagList":Lorg/json/JSONArray;
    iget-object v10, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    .line 571
    .local v8, "singleContactNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 572
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 573
    .local v5, "number":Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 574
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10, v5}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 575
    iget-object v10, p0, Ladb;->m:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v10, v5}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 571
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 577
    .end local v5    # "number":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Ladb;->f:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v10, p0, Ladb;->e:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v10, p0, Ladb;->g:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 581
    .end local v4    # "j":I
    .end local v6    # "numberList":Lorg/json/JSONArray;
    .end local v7    # "simList":Lorg/json/JSONArray;
    .end local v8    # "singleContactNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "tagList":Lorg/json/JSONArray;
    :cond_2
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10}, Laba;->b()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 582
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v12, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v10, v12}, Lil;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 583
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10}, Laba;->g()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x1

    .line 585
    :goto_4
    iget-object v10, p0, Ladb;->j:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    iget-object v12, p0, Ladb;->l:Landroid/content/Context;

    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v11, v12, v13, v3}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v10, p0, Ladb;->j:Ljava/util/List;

    invoke-static {}, Laba;->a()Laba;

    move-result-object v11

    iget-object v12, p0, Ladb;->l:Landroid/content/Context;

    sget-object v13, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v11, v12, v13, v3}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_3
    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10}, Laba;->b()Z

    move-result v10

    iput-boolean v10, p0, Ladb;->d:Z

    .line 590
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ladb;->h:Ljava/lang/String;

    .line 591
    iput-boolean v3, p0, Ladb;->i:Z

    .line 593
    return-void

    :cond_4
    move v3, v11

    .line 583
    goto :goto_4
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 26
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v19, Ladb;->k:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "exec start, aciton is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ,args is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v14

    .line 83
    .local v14, "mFocus":Ljava/lang/String;
    const-string/jumbo v19, "contactItemClick"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 86
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "args":Lorg/json/JSONArray;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 92
    .local v18, "targetId":Ljava/lang/String;
    const-string/jumbo v19, "contactItem"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 93
    .local v17, "strs":[Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 94
    .local v12, "itemID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 95
    .local v7, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "contactName":Ljava/lang/String;
    sget-object v19, Ladb;->k:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "----------------->>>contactName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v14, :cond_3

    const-string/jumbo v19, "telephone"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 107
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->isTTSSpeaking()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->stopTTSAsync()V

    .line 112
    :cond_1
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laba;->b()Z

    move-result v19

    if-eqz v19, :cond_4

    const-string/jumbo v19, "telephone"

    .line 113
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->l:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v5, v1, v2}, Labd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V

    .line 447
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v5    # "contactName":Ljava/lang/String;
    .end local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v12    # "itemID":I
    .end local v17    # "strs":[Ljava/lang/String;
    .end local v18    # "targetId":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct/range {v19 .. v19}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    :goto_2
    return-object v19

    .line 88
    :catch_0
    move-exception v8

    .line 89
    .local v8, "e":Lorg/json/JSONException;
    sget-object v19, Ladb;->k:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "JSON error"

    const-string/jumbo v21, ""

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v3    # "args":Lorg/json/JSONArray;
    .restart local v5    # "contactName":Ljava/lang/String;
    .restart local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v12    # "itemID":I
    .restart local v17    # "strs":[Ljava/lang/String;
    .restart local v18    # "targetId":Ljava/lang/String;
    :cond_3
    if-eqz v14, :cond_0

    const-string/jumbo v19, "message"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 101
    invoke-static {}, Labb;->j()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-static {}, Labb;->j()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "\u59d3\u540d:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    goto/16 :goto_0

    .line 116
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "select_contact_name"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto :goto_1

    .line 120
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v5    # "contactName":Ljava/lang/String;
    .end local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v12    # "itemID":I
    .end local v17    # "strs":[Ljava/lang/String;
    .end local v18    # "targetId":Ljava/lang/String;
    :cond_5
    const-string/jumbo v19, "cancelCall"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 131
    const-string/jumbo v9, "other"

    .line 132
    .local v9, "focus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lacf;->g()Ljava/lang/String;

    move-result-object v9

    .line 136
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "cancel"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v9, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->l:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lbbp;->c()V

    goto/16 :goto_1

    .line 150
    .end local v9    # "focus":Ljava/lang/String;
    :cond_7
    const-string/jumbo v19, "callOut"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 157
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v3    # "args":Lorg/json/JSONArray;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 159
    .restart local v18    # "targetId":Ljava/lang/String;
    if-nez v18, :cond_8

    .line 160
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "OK"

    const-string/jumbo v21, "item id is null"

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 169
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v18    # "targetId":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 170
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v19, Ladb;->k:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "JSON error"

    const-string/jumbo v21, ""

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 162
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v3    # "args":Lorg/json/JSONArray;
    .restart local v18    # "targetId":Ljava/lang/String;
    :cond_8
    :try_start_2
    sget-object v19, Ladb;->k:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "touch item id is *"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 165
    .restart local v12    # "itemID":I
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "index":Ljava/lang/String;
    if-nez v10, :cond_9

    .line 167
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "OK"

    const-string/jumbo v21, "item index is null"

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 174
    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 175
    .local v13, "itemIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ladb;->a(II)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "contactNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual/range {v19 .. v19}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 178
    .local v15, "numberCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 179
    .restart local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5    # "contactName":Ljava/lang/String;
    const-string/jumbo v19, "contacts"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 187
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 188
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laba;->b()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "call"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    const/16 v23, 0x1

    aput-object v6, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 193
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "call"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 204
    :cond_b
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laba;->b()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    .line 206
    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v20, v0

    .line 205
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v5, v6, v1}, Labd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V

    goto/16 :goto_1

    .line 213
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "call"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v6, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 219
    :cond_d
    const-string/jumbo v19, "telephone"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 220
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laba;->b()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    .line 222
    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v20, v0

    .line 221
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v5, v6, v1}, Labd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V

    goto/16 :goto_1

    .line 227
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "call"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v6, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 233
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v5    # "contactName":Ljava/lang/String;
    .end local v6    # "contactNumber":Ljava/lang/String;
    .end local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v10    # "index":Ljava/lang/String;
    .end local v12    # "itemID":I
    .end local v13    # "itemIndex":I
    .end local v15    # "numberCount":I
    .end local v18    # "targetId":Ljava/lang/String;
    :cond_f
    const-string/jumbo v19, "directCallOut"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 235
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laba;->b()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 238
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v3    # "args":Lorg/json/JSONArray;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 242
    .restart local v18    # "targetId":Ljava/lang/String;
    if-nez v18, :cond_10

    .line 243
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "JSON error"

    const-string/jumbo v21, "item id is null"

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 336
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v18    # "targetId":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 337
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v19, Ladb;->k:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v3    # "args":Lorg/json/JSONArray;
    .restart local v18    # "targetId":Ljava/lang/String;
    :cond_10
    :try_start_4
    sget-object v19, Ladb;->k:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "touch item id is *"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 248
    .restart local v12    # "itemID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 251
    .restart local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    .restart local v10    # "index":Ljava/lang/String;
    if-nez v10, :cond_11

    .line 253
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "JSON error"

    const-string/jumbo v21, "item index is null"

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 255
    :cond_11
    sget-object v19, Ladb;->k:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "touch itemIndex is *"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string/jumbo v6, ""

    .line 257
    .restart local v6    # "contactNumber":Ljava/lang/String;
    const-string/jumbo v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 258
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "contactNumber":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 265
    .restart local v6    # "contactNumber":Ljava/lang/String;
    :goto_3
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "card":Ljava/lang/String;
    if-nez v4, :cond_13

    .line 267
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "JSON error"

    const-string/jumbo v21, "card is null"

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 260
    .end local v4    # "card":Ljava/lang/String;
    :cond_12
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 261
    .restart local v13    # "itemIndex":I
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "contactNumber":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "contactNumber":Ljava/lang/String;
    goto :goto_3

    .line 269
    .end local v13    # "itemIndex":I
    .restart local v4    # "card":Ljava/lang/String;
    :cond_13
    sget-object v19, Ladb;->k:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "touch card is *"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v19, "card1"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 273
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v19

    sget-object v20, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_14

    .line 276
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v19

    .line 277
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    .line 275
    invoke-static/range {v19 .. v19}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v19

    const-string/jumbo v20, "FD01005"

    const-string/jumbo v21, "sss_click_lc"

    .line 278
    invoke-virtual/range {v19 .. v21}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Labb;->g()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 284
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v19

    .line 285
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    .line 283
    invoke-static/range {v19 .. v19}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v19

    const-string/jumbo v20, "FD01018"

    const-string/jumbo v21, "bubble_callout"

    .line 286
    invoke-virtual/range {v19 .. v21}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_14
    sget-object v19, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lacx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 295
    sget-object v19, Ladb;->k:Ljava/lang/String;

    const-string/jumbo v20, "[exec] callOut by card1"

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "call"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v6, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    aput-object v24, v22, v23

    const/16 v23, 0x2

    sget-object v24, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v24, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 301
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    sget-object v20, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Laba;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 334
    :cond_15
    :goto_4
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Labb;->d(Z)V

    goto/16 :goto_1

    .line 303
    :cond_16
    const-string/jumbo v19, "card2"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 304
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v19

    sget-object v20, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 307
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v19

    .line 308
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    .line 306
    invoke-static/range {v19 .. v19}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v19

    const-string/jumbo v20, "FD01005"

    const-string/jumbo v21, "sss_click_lc"

    .line 309
    invoke-virtual/range {v19 .. v21}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Labb;->g()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 315
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v19

    .line 316
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    .line 314
    invoke-static/range {v19 .. v19}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v19

    const-string/jumbo v20, "FD01018"

    const-string/jumbo v21, "bubble_callout"

    .line 317
    invoke-virtual/range {v19 .. v21}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_17
    sget-object v19, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lacx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 325
    sget-object v19, Ladb;->k:Ljava/lang/String;

    const-string/jumbo v20, "[exec] callOut by card1"

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "call"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v6, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    aput-object v24, v22, v23

    const/16 v23, 0x2

    sget-object v24, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v24, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 331
    invoke-static {}, Laba;->a()Laba;

    move-result-object v19

    sget-object v20, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Laba;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 340
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v4    # "card":Ljava/lang/String;
    .end local v6    # "contactNumber":Ljava/lang/String;
    .end local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v10    # "index":Ljava/lang/String;
    .end local v12    # "itemID":I
    .end local v18    # "targetId":Ljava/lang/String;
    :cond_18
    sget-object v19, Ladb;->k:Ljava/lang/String;

    const-string/jumbo v20, "[exec] it will not happen"

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 342
    :cond_19
    const-string/jumbo v19, "sendMessage"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 352
    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 353
    .restart local v3    # "args":Lorg/json/JSONArray;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 354
    .restart local v18    # "targetId":Ljava/lang/String;
    if-nez v18, :cond_1a

    .line 355
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "OK"

    const-string/jumbo v21, "item id is null"

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 364
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v18    # "targetId":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 365
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v19, Ladb;->k:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "JSON error"

    const-string/jumbo v21, ""

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 358
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v3    # "args":Lorg/json/JSONArray;
    .restart local v18    # "targetId":Ljava/lang/String;
    :cond_1a
    :try_start_6
    sget-object v19, Ladb;->k:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "touch item id is *"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 360
    .restart local v12    # "itemID":I
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 361
    .restart local v10    # "index":Ljava/lang/String;
    if-nez v10, :cond_1b

    .line 362
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "OK"

    const-string/jumbo v21, "item index is null"

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 369
    :cond_1b
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 370
    .restart local v13    # "itemIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ladb;->a(II)Ljava/lang/String;

    move-result-object v6

    .line 372
    .restart local v6    # "contactNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual/range {v19 .. v19}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v16

    .line 373
    .local v16, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 374
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 377
    .restart local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v5

    .line 379
    .restart local v5    # "contactName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual/range {v19 .. v19}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 380
    .restart local v15    # "numberCount":I
    const-string/jumbo v19, "contacts"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 385
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_1c

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "message"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 398
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "action_send_message_to_special"

    const/16 v21, 0x1

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "\u53d1\u77ed\u4fe1\u7ed9"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v5, v22, v23

    const/16 v23, 0x2

    aput-object v6, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 404
    :cond_1d
    const-string/jumbo v19, "message"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->n:Lacp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "message"

    move-object/from16 v0, p0

    iget-byte v0, v0, Ladb;->o:B

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    invoke-static/range {v19 .. v22}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 411
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v5    # "contactName":Ljava/lang/String;
    .end local v6    # "contactNumber":Ljava/lang/String;
    .end local v7    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v10    # "index":Ljava/lang/String;
    .end local v12    # "itemID":I
    .end local v13    # "itemIndex":I
    .end local v15    # "numberCount":I
    .end local v16    # "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "targetId":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v19, "isOpen"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 414
    :try_start_7
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v3    # "args":Lorg/json/JSONArray;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v11

    .line 420
    .local v11, "isOpen":Ljava/lang/String;
    if-nez v11, :cond_1f

    .line 421
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "OK"

    const-string/jumbo v21, "isOpen is null"

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 416
    .end local v3    # "args":Lorg/json/JSONArray;
    .end local v11    # "isOpen":Ljava/lang/String;
    :catch_4
    move-exception v8

    .line 417
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v19, Ladb;->k:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v19, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v20, "JSON error"

    const-string/jumbo v21, ""

    invoke-direct/range {v19 .. v21}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 445
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v3    # "args":Lorg/json/JSONArray;
    .restart local v11    # "isOpen":Ljava/lang/String;
    :cond_1f
    sget-object v19, Ladb;->k:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isOpen :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 459
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    const-string/jumbo v0, "WidgetContactListView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 452
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 25

    .prologue
    .line 463
    const/4 v14, 0x0

    .line 465
    .local v14, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 467
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .local v15, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 468
    .local v11, "jsonNameArray":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 469
    .local v9, "jsonIconArray":Lorg/json/JSONArray;
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 470
    .local v12, "jsonNumberArray":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 471
    .local v8, "jsonArray_SimName":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 473
    .local v6, "isShowSimName":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_0

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/base/contacts/entities/ContactSet;->getContactIconUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 477
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lhc;->a(Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    .line 478
    .local v3, "defaultNum":Ljava/lang/String;
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 473
    .end local v3    # "defaultNum":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    :catch_0
    move-exception v4

    .line 480
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 523
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v6    # "isShowSimName":Z
    .end local v8    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v9    # "jsonIconArray":Lorg/json/JSONArray;
    .end local v11    # "jsonNameArray":Lorg/json/JSONArray;
    .end local v12    # "jsonNumberArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v4

    move-object v14, v15

    .line 524
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "e":Lorg/json/JSONException;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    sget-object v22, Ladb;->k:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v14, 0x0

    .line 530
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_3
    return-object v14

    .line 483
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "i":I
    .restart local v6    # "isShowSimName":Z
    .restart local v8    # "jsonArray_SimName":Lorg/json/JSONArray;
    .restart local v9    # "jsonIconArray":Lorg/json/JSONArray;
    .restart local v11    # "jsonNameArray":Lorg/json/JSONArray;
    .restart local v12    # "jsonNumberArray":Lorg/json/JSONArray;
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_4
    const-string/jumbo v22, "contactNameList"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string/jumbo v22, "contactIconList"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    const-string/jumbo v22, "contactNumberList"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    const-string/jumbo v22, "taskHandler"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 489
    .local v13, "jsonNumberLists":Lorg/json/JSONArray;
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 490
    .local v16, "jsonSimLists":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 491
    .local v10, "jsonLocationLists":Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 492
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 493
    .local v18, "numberList":Lorg/json/JSONArray;
    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    .line 494
    .local v19, "simList":Lorg/json/JSONArray;
    new-instance v21, Lorg/json/JSONArray;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V

    .line 495
    .local v21, "tagList":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v20

    .line 496
    .local v20, "singleContactNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_1

    .line 497
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 498
    .local v17, "number":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 499
    invoke-static {}, Laba;->a()Laba;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->m:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/iflytek/base/contacts/entities/ContactSet;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 496
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 502
    .end local v17    # "number":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 503
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 504
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 491
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 506
    .end local v7    # "j":I
    .end local v18    # "numberList":Lorg/json/JSONArray;
    .end local v19    # "simList":Lorg/json/JSONArray;
    .end local v20    # "singleContactNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "tagList":Lorg/json/JSONArray;
    :cond_2
    invoke-static {}, Laba;->a()Laba;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laba;->b()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 507
    invoke-static {}, Lil;->a()Lil;

    move-result-object v22

    const-string/jumbo v23, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual/range {v22 .. v23}, Lil;->c(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 508
    invoke-static {}, Laba;->a()Laba;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laba;->g()Z

    move-result v22

    if-eqz v22, :cond_4

    const/4 v6, 0x1

    .line 510
    :goto_6
    invoke-static {}, Laba;->a()Laba;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->l:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v6}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 511
    invoke-static {}, Laba;->a()Laba;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ladb;->l:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v6}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 514
    :cond_3
    const-string/jumbo v22, "isDoubleSim"

    invoke-static {}, Laba;->a()Laba;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Laba;->b()Z

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 515
    const-string/jumbo v22, "contactAllSimLists"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string/jumbo v22, "contactAllNumberLists"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string/jumbo v22, "locationLists"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string/jumbo v22, "focusType"

    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string/jumbo v22, "isShowSimName"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 521
    const-string/jumbo v22, "SimNameList"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v14, v15

    .line 529
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 508
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 526
    .end local v5    # "i":I
    .end local v6    # "isShowSimName":Z
    .end local v8    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v9    # "jsonIconArray":Lorg/json/JSONArray;
    .end local v10    # "jsonLocationLists":Lorg/json/JSONArray;
    .end local v11    # "jsonNameArray":Lorg/json/JSONArray;
    .end local v12    # "jsonNumberArray":Lorg/json/JSONArray;
    .end local v13    # "jsonNumberLists":Lorg/json/JSONArray;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "jsonSimLists":Lorg/json/JSONArray;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v4

    .line 527
    .local v4, "e":Ljava/lang/Exception;
    :goto_7
    sget-object v22, Ladb;->k:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 526
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v4

    move-object v14, v15

    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_7

    .line 523
    :catch_4
    move-exception v4

    goto/16 :goto_2
.end method
