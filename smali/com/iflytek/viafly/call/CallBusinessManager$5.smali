.class Lcom/iflytek/viafly/call/CallBusinessManager$5;
.super Landroid/os/Handler;
.source "CallBusinessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/call/CallBusinessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/call/CallBusinessManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->m(Lcom/iflytek/viafly/call/CallBusinessManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v8, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "handleMessage "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v8, v0}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->n(Lcom/iflytek/viafly/call/CallBusinessManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1378
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v8, "com.iflytek.cmccIFLY_AUTO_PHONE_DATABASE_UPDATE"

    invoke-virtual {v2, v8}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1379
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v8, "com.iflytek.cmccIFLY_DATABASE_UPDATE_TIME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/iflytek/viafly/call/CallBusinessManager;->o(Lcom/iflytek/viafly/call/CallBusinessManager;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v8, v0}, Lil;->a(Ljava/lang/String;I)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->p(Lcom/iflytek/viafly/call/CallBusinessManager;)I

    move-result v2

    const/4 v8, 0x3

    if-ge v2, v8, :cond_0

    .line 1382
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v8, "com.iflytek.cmccPHONENUM_TYPE_VERSION_NET_FULL"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v8, v0}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1384
    .local v14, "lastFullVerion":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v8, "com.iflytek.cmccPHONENUM_TYPE_VERSION_NET_APPEND"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v8, v0}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1386
    .local v13, "lastAppendVerion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->q(Lcom/iflytek/viafly/call/CallBusinessManager;)Labs;

    move-result-object v2

    invoke-virtual {v2, v14, v13}, Labs;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 1481
    .end local v13    # "lastAppendVerion":Ljava/lang/String;
    .end local v14    # "lastFullVerion":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 1391
    const-string/jumbo v2, "CallBusinessManager"

    const-string/jumbo v8, "msg clock receive to update"

    invoke-static {v2, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;Z)Z

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Lcom/iflytek/viafly/call/CallBusinessManager;I)I

    .line 1394
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v8, "com.iflytek.cmccIFLY_DATABASE_UPDATE_TIME"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v8, v0}, Lil;->a(Ljava/lang/String;I)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->h()V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->m(Lcom/iflytek/viafly/call/CallBusinessManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1397
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v8, "com.iflytek.cmccIFLY_AUTO_PHONE_DATABASE_UPDATE"

    invoke-virtual {v2, v8}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1398
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v8, "com.iflytek.cmccPHONENUM_TYPE_VERSION_NET_FULL"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v8, v0}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1400
    .restart local v14    # "lastFullVerion":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v8, "com.iflytek.cmccPHONENUM_TYPE_VERSION_NET_APPEND"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v8, v0}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1402
    .restart local v13    # "lastAppendVerion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->q(Lcom/iflytek/viafly/call/CallBusinessManager;)Labs;

    move-result-object v2

    invoke-virtual {v2, v14, v13}, Labs;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 1405
    .end local v13    # "lastAppendVerion":Ljava/lang/String;
    .end local v14    # "lastFullVerion":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->m(Lcom/iflytek/viafly/call/CallBusinessManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->i()V

    goto/16 :goto_0

    .line 1408
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    if-ne v2, v8, :cond_4

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v8}, Lcom/iflytek/viafly/call/CallBusinessManager;->r(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1410
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_f

    .line 1412
    :try_start_0
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    .line 1413
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "name"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1414
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v2, "number"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1415
    .local v7, "num":Ljava/lang/String;
    const-string/jumbo v2, "type"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1416
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v2, "kind"

    const/4 v8, 0x2

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1417
    .local v3, "kind":I
    const-string/jumbo v2, "location"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1418
    .local v6, "location":Ljava/lang/String;
    const-string/jumbo v2, "flagSogou"

    const/4 v8, 0x0

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1420
    .local v12, "isSogouResult":Z
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 1421
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->m(Lcom/iflytek/viafly/call/CallBusinessManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1423
    :cond_6
    const-string/jumbo v2, "CallBusinessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "before callview show  local | number = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v16, " name = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v16, " location = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v16, " type =  "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    if-eqz v4, :cond_7

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/call/CallBusinessManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1429
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-virtual/range {v2 .. v7}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->s(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->r(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->r(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    .line 1433
    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->r(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1434
    const/4 v15, 0x0

    .line 1435
    .local v15, "needHandle":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->t(Lcom/iflytek/viafly/call/CallBusinessManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/iflytek/viafly/call/CallBusinessManager;->u(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;)V

    .line 1437
    const/4 v15, 0x1

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->v(Lcom/iflytek/viafly/call/CallBusinessManager;)Lpp;

    move-result-object v2

    invoke-virtual {v2}, Lpp;->b()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1439
    const/4 v15, 0x0

    .line 1441
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;J)J

    .line 1445
    :cond_9
    const-string/jumbo v2, "\u9a9a\u6270\u7535\u8bdd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1446
    const-string/jumbo v5, "\u7591\u4f3c\u9a9a\u6270\u7535\u8bdd"

    .line 1450
    :cond_a
    :goto_1
    if-eqz v5, :cond_d

    const-string/jumbo v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1451
    const/4 v2, 0x0

    invoke-static {v2, v12}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(ZZ)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1452
    invoke-virtual {v2, v7}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1453
    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->c(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1454
    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v9

    .line 1469
    .local v9, "adapter":Lcom/iflytek/viafly/call/CallBroadcastView$a;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->w(Lcom/iflytek/viafly/call/CallBusinessManager;)J

    move-result-wide v16

    sput-wide v16, Lzv;->a:J

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->m(Lcom/iflytek/viafly/call/CallBusinessManager;)Landroid/content/Context;

    move-result-object v2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v2, v9, v15, v0}, Lzv;->a(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/iflytek/viafly/call/CallBusinessManager;->w(Lcom/iflytek/viafly/call/CallBusinessManager;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Lcom/iflytek/viafly/call/CallBusinessManager;J)V

    .line 1473
    .end local v9    # "adapter":Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .end local v15    # "needHandle":Z
    :cond_b
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1475
    .end local v3    # "kind":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "num":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v12    # "isSogouResult":Z
    :catch_0
    move-exception v11

    .line 1476
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CallBusinessManager"

    const-string/jumbo v8, ""

    invoke-static {v2, v8, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1447
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "kind":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "location":Ljava/lang/String;
    .restart local v7    # "num":Ljava/lang/String;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    .restart local v12    # "isSogouResult":Z
    .restart local v15    # "needHandle":Z
    :cond_c
    :try_start_3
    const-string/jumbo v2, "\u8bc8\u9a97\u7535\u8bdd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1448
    const-string/jumbo v5, "\u7591\u4f3c\u8bc8\u9a97\u7535\u8bdd"

    goto :goto_1

    .line 1456
    :cond_d
    if-eqz v4, :cond_e

    const-string/jumbo v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1457
    const/4 v2, 0x1

    invoke-static {v2, v12}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(ZZ)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1458
    invoke-virtual {v2, v7}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1459
    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1460
    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->b(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v9

    .restart local v9    # "adapter":Lcom/iflytek/viafly/call/CallBroadcastView$a;
    goto :goto_2

    .line 1462
    .end local v9    # "adapter":Lcom/iflytek/viafly/call/CallBroadcastView$a;
    :cond_e
    const/4 v2, 0x0

    invoke-static {v2, v12}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(ZZ)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1463
    invoke-virtual {v2, v7}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1464
    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->c(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v2

    .line 1465
    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .restart local v9    # "adapter":Lcom/iflytek/viafly/call/CallBroadcastView$a;
    goto :goto_2

    .line 1478
    .end local v3    # "kind":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "num":Ljava/lang/String;
    .end local v9    # "adapter":Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v12    # "isSogouResult":Z
    .end local v15    # "needHandle":Z
    :cond_f
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x5

    if-ne v2, v8, :cond_0

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->m()V

    goto/16 :goto_0
.end method
