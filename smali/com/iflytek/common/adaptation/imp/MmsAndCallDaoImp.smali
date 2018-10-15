.class public Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;
.super Lbby;
.source "MmsAndCallDaoImp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsAndCallDaoImp"


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lbby;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/Class;)V
    .locals 0
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            "Ljava/lang/Class",
            "<",
            "Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;>;"
    invoke-direct {p0, p1, p2}, Lbby;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/Class;)V

    .line 28
    return-void
.end method


# virtual methods
.method public match(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    .locals 10
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "selection":Ljava/lang/String;
    move-object v0, p0

    move-object v3, p3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    .line 33
    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;->find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 34
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 35
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 36
    .local v9, "mmsAndCallInfo":Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    if-eqz v9, :cond_0

    .line 37
    const-string/jumbo v0, "MmsAndCallDaoImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "modelInfo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getModelInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " siminfo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    invoke-virtual {v9}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getSimInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " call = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {v9}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getCall()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " mms ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    invoke-virtual {v9}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getMms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v9    # "mmsAndCallInfo":Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    :cond_0
    :goto_0
    return-object v9

    .line 45
    :cond_1
    const-string/jumbo v0, "MmsAndCallDaoImp"

    const-string/jumbo v3, "match null"

    invoke-static {v0, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v1

    .line 46
    goto :goto_0
.end method

.method public matchByCpu()Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x0

    .line 66
    const-string/jumbo v0, "ro.mediatek.platform"

    invoke-static {v0}, Lazk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "platform":Ljava/lang/String;
    const-string/jumbo v0, "ro.mediatek.gemini_support"

    invoke-static {v0}, Lazk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "dualSim":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 70
    .local v8, "cpu":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-string/jumbo v0, "true"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v8, "mtk"

    .line 73
    const-string/jumbo v0, "MmsAndCallDaoImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "matchByCpu MTK double card cpu = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    aput-object v8, v3, v13

    .line 82
    .local v3, "selectionArgs1":[Ljava/lang/String;
    const-string/jumbo v2, "cpuInfo = ?"

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;->find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 83
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 84
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 85
    .local v12, "tmp":Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    const-string/jumbo v0, "MmsAndCallDaoImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modelInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getModelInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " siminfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-virtual {v12}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getSimInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " call + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {v12}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getCall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mms + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {v12}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getMms()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "cpu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    move-object v1, v0

    .line 94
    .end local v3    # "selectionArgs1":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;>;"
    .end local v12    # "tmp":Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    :goto_1
    return-object v1

    .line 75
    :cond_0
    const-string/jumbo v0, "MmsAndCallDaoImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "matchByCpu MTK single card cpu = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    :cond_1
    invoke-static {}, Lazg;->a()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 93
    .restart local v3    # "selectionArgs1":[Ljava/lang/String;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;>;"
    :cond_2
    const-string/jumbo v0, "MmsAndCallDaoImp"

    const-string/jumbo v2, "match null"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public matchByModel()Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    .line 51
    .local v3, "selectionArgs1":[Ljava/lang/String;
    const-string/jumbo v2, "modelInfo = ?"

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/common/adaptation/imp/MmsAndCallDaoImp;->find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 52
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 54
    .local v9, "tmp":Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    const-string/jumbo v0, "MmsAndCallDaoImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modelInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getModelInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " siminfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {v9}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getSimInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " call + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v9}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getCall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mms + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {v9}, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;->getMms()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;

    .line 62
    .end local v9    # "tmp":Lcom/iflytek/common/adaptation/entity/MmsAndCallInfo;
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const-string/jumbo v0, "MmsAndCallDaoImp"

    const-string/jumbo v2, "match null"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 62
    goto :goto_0
.end method
