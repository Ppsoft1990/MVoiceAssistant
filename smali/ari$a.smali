.class Lari$a;
.super Ljava/lang/Object;
.source "PluginController.java"

# interfaces
.implements Lasg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lari;

.field private b:[I


# direct methods
.method public constructor <init>(Lari;[I)V
    .locals 3
    .param p2, "pluginTypeList"    # [I

    .prologue
    .line 311
    iput-object p1, p0, Lari$a;->a:Lari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lari$a;->b:[I

    .line 313
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MyNetPluginInfoListener init| pluginTypes= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 312
    :cond_0
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 377
    const-string/jumbo v2, "PluginController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetInfoFail() |pluginTypes= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lari$a;->b:[I

    .line 378
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lari$a;->b:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lari$a;->b:[I

    array-length v2, v2

    if-nez v2, :cond_2

    .line 380
    :cond_0
    const-string/jumbo v2, "PluginController"

    const-string/jumbo v3, "onGetInfoFail() pluginTypeList is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    return-void

    .line 383
    :cond_2
    iget-object v3, p0, Lari$a;->b:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    .line 384
    .local v1, "pluginType":I
    iget-object v5, p0, Lari$a;->a:Lari;

    invoke-virtual {v5, v1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 385
    .local v0, "info":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_3

    .line 383
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_3
    iget-object v5, p0, Lari$a;->a:Lari;

    const-string/jumbo v6, "\u63d2\u4ef6\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-static {v5, v0, v6}, Lari;->b(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a([ILcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V
    .locals 14
    .param p1, "pluginTypes"    # [I
    .param p2, "historyPluginInfo"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    .param p3, "currentPluginInfo"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .prologue
    .line 320
    const-string/jumbo v7, "PluginController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onGetInfoSuccess() |pluginTypes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lasd;->a([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " historyPluginInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " currentPluginInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v7, p0, Lari$a;->b:[I

    if-eqz v7, :cond_0

    iget-object v7, p0, Lari$a;->b:[I

    array-length v7, v7

    if-nez v7, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-eqz p1, :cond_2

    array-length v7, p1

    if-eqz v7, :cond_2

    if-eqz p3, :cond_2

    .line 328
    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 330
    :cond_2
    invoke-virtual {p0}, Lari$a;->a()V

    goto :goto_0

    .line 334
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v4

    .line 335
    .local v4, "netPluginList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    iget-object v8, p0, Lari$a;->b:[I

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_0

    aget v6, v8, v7

    .line 336
    .local v6, "pluginType":I
    invoke-static {v4, v6}, Lasb;->a(Ljava/util/List;I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v3

    .line 338
    .local v3, "netPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    iget-object v10, p0, Lari$a;->a:Lari;

    invoke-virtual {v10, v6}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v1

    .line 339
    .local v1, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v1, :cond_4

    .line 335
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 342
    :cond_4
    if-nez v3, :cond_5

    .line 343
    iget-object v10, p0, Lari$a;->a:Lari;

    const-string/jumbo v11, "\u63d2\u4ef6\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-static {v10, v1, v11}, Lari;->b(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 348
    :cond_5
    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getLinkUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getVersion()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lasd;->a(Ljava/lang/String;I)I

    move-result v5

    .line 352
    .local v5, "netVersion":I
    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v10

    invoke-static {v10, v5}, Lasa;->a(II)Z

    move-result v2

    .line 354
    .local v2, "isSupportPlugin":Z
    if-nez v2, :cond_6

    .line 355
    iget-object v10, p0, Lari$a;->a:Lari;

    const-string/jumbo v11, "\u63d2\u4ef6\u6846\u67b6\u6821\u9a8c\u9519\u8bef"

    invoke-static {v10, v1, v11}, Lari;->b(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 360
    :cond_6
    iget-object v10, p0, Lari$a;->a:Lari;

    invoke-virtual {v10, v1}, Lari;->d(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 361
    iget-object v10, p0, Lari$a;->a:Lari;

    invoke-static {v10}, Lari;->c(Lari;)Larl;

    move-result-object v10

    .line 362
    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v11

    .line 361
    invoke-virtual {v10, v11}, Larl;->a(I)V

    .line 364
    iget-object v10, p0, Lari$a;->a:Lari;

    invoke-virtual {v10, v1}, Lari;->c(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 366
    iget-object v10, p0, Lari$a;->a:Lari;

    invoke-static {v10}, Lari;->a(Lari;)Larm;

    move-result-object v10

    .line 367
    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v11

    iget-object v12, p0, Lari$a;->a:Lari;

    .line 368
    invoke-static {v12}, Lari;->b(Lari;)Landroid/content/Context;

    move-result-object v12

    .line 367
    invoke-static {v12, v3, v6}, Lasb;->a(Landroid/content/Context;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;I)Ljava/lang/String;

    move-result-object v12

    .line 369
    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c()Ljava/lang/String;

    move-result-object v13

    .line 366
    invoke-virtual {v10, v6, v11, v12, v13}, Larm;->a(ILasc;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v10, p0, Lari$a;->a:Lari;

    invoke-static {v10}, Lari;->b(Lari;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v10

    .line 371
    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->d()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    move-result-object v11

    .line 370
    invoke-virtual {v10, v6, v11}, Lxk;->b(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_2
.end method
