.class Lhj$a$1;
.super Ljava/lang/Object;
.source "DebugLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhj$a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lhj$a;


# direct methods
.method constructor <init>(Lhj$a;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lhj$a;

    .prologue
    .line 495
    iput-object p1, p0, Lhj$a$1;->c:Lhj$a;

    iput-object p2, p0, Lhj$a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lhj$a$1;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 498
    new-instance v4, Ljava/io/File;

    sget-object v14, Lhj;->a:Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v4, "dir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lhj;->a:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "UncaughtException.log"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v7, "f":Ljava/io/File;
    const/4 v8, 0x0

    .line 502
    .local v8, "fs":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v10, "log":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 507
    invoke-static {}, Lhj;->c()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "createTime":Ljava/lang/String;
    const-string/jumbo v14, "createtime:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lhj$a$1;->a:Landroid/content/Context;

    invoke-static {v14}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v14

    .line 511
    invoke-virtual {v14}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v13

    .line 512
    .local v13, "version":Ljava/lang/String;
    const-string/jumbo v14, "version:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lhj$a$1;->c:Lhj$a;

    invoke-static {v14}, Lhj$a;->a(Lhj$a;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v14

    invoke-virtual {v14}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "apn":Ljava/lang/String;
    const-string/jumbo v14, "apcode:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lhj$a$1;->a:Landroid/content/Context;

    invoke-static {v14}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v14

    .line 518
    invoke-virtual {v14}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "df":Ljava/lang/String;
    const-string/jumbo v14, "df:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string/jumbo v14, "usedapp:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "com.iflytek.cmcc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    move-object/from16 v0, p0

    iget-object v14, v0, Lhj$a$1;->a:Landroid/content/Context;

    invoke-static {v14}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v14

    .line 525
    invoke-virtual {v14}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v11

    .line 526
    .local v11, "osid":Ljava/lang/String;
    const-string/jumbo v14, "osid:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    move-object/from16 v0, p0

    iget-object v14, v0, Lhj$a$1;->a:Landroid/content/Context;

    invoke-static {v14}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v14

    .line 529
    invoke-virtual {v14}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v12

    .line 530
    .local v12, "ua":Ljava/lang/String;
    const-string/jumbo v14, "ua:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    move-object/from16 v0, p0

    iget-object v14, v0, Lhj$a$1;->b:Ljava/lang/Throwable;

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 533
    .local v6, "errormsg":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 534
    const/16 v14, 0x3a

    const/16 v15, 0x20

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 536
    :cond_0
    const-string/jumbo v14, "errormsg:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v14, 0x1

    invoke-direct {v9, v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .local v9, "fs":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 540
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 541
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lhj$a$1;->a:Landroid/content/Context;

    invoke-static {v14}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v14

    .line 544
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 543
    invoke-virtual {v14, v15}, Lvk;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 552
    const-string/jumbo v14, ""

    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lhj$a$1;->b:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {v14}, Landroid/os/Process;->killProcess(I)V

    .line 554
    if-eqz v9, :cond_3

    .line 556
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 557
    const/4 v8, 0x0

    .line 564
    .end local v1    # "apn":Ljava/lang/String;
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v3    # "df":Ljava/lang/String;
    .end local v6    # "errormsg":Ljava/lang/String;
    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .end local v11    # "osid":Ljava/lang/String;
    .end local v12    # "ua":Ljava/lang/String;
    .end local v13    # "version":Ljava/lang/String;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 558
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .restart local v1    # "apn":Ljava/lang/String;
    .restart local v2    # "createTime":Ljava/lang/String;
    .restart local v3    # "df":Ljava/lang/String;
    .restart local v6    # "errormsg":Ljava/lang/String;
    .restart local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v11    # "osid":Ljava/lang/String;
    .restart local v12    # "ua":Ljava/lang/String;
    .restart local v13    # "version":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 560
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 561
    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 545
    .end local v1    # "apn":Ljava/lang/String;
    .end local v2    # "createTime":Ljava/lang/String;
    .end local v3    # "df":Ljava/lang/String;
    .end local v5    # "e1":Ljava/io/IOException;
    .end local v6    # "errormsg":Ljava/lang/String;
    .end local v11    # "osid":Ljava/lang/String;
    .end local v12    # "ua":Ljava/lang/String;
    .end local v13    # "version":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 552
    :goto_1
    const-string/jumbo v14, ""

    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lhj$a$1;->b:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {v14}, Landroid/os/Process;->killProcess(I)V

    .line 554
    if-eqz v8, :cond_1

    .line 556
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 557
    const/4 v8, 0x0

    goto :goto_0

    .line 558
    :catch_2
    move-exception v5

    .line 560
    .restart local v5    # "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 547
    .end local v5    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 552
    :goto_2
    const-string/jumbo v14, ""

    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lhj$a$1;->b:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {v14}, Landroid/os/Process;->killProcess(I)V

    .line 554
    if-eqz v8, :cond_1

    .line 556
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 557
    const/4 v8, 0x0

    goto :goto_0

    .line 558
    :catch_4
    move-exception v5

    .line 560
    .restart local v5    # "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v5    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v14

    .line 552
    :goto_3
    const-string/jumbo v14, ""

    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lhj$a$1;->b:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {v14}, Landroid/os/Process;->killProcess(I)V

    .line 554
    if-eqz v8, :cond_1

    .line 556
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 557
    const/4 v8, 0x0

    goto :goto_0

    .line 558
    :catch_6
    move-exception v5

    .line 560
    .restart local v5    # "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 552
    .end local v5    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_4
    const-string/jumbo v15, ""

    const-string/jumbo v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lhj$a$1;->b:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v15

    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 554
    if-eqz v8, :cond_2

    .line 556
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 557
    const/4 v8, 0x0

    .line 561
    :cond_2
    :goto_5
    throw v14

    .line 558
    :catch_7
    move-exception v5

    .line 560
    .restart local v5    # "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 552
    .end local v5    # "e1":Ljava/io/IOException;
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .restart local v1    # "apn":Ljava/lang/String;
    .restart local v2    # "createTime":Ljava/lang/String;
    .restart local v3    # "df":Ljava/lang/String;
    .restart local v6    # "errormsg":Ljava/lang/String;
    .restart local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v11    # "osid":Ljava/lang/String;
    .restart local v12    # "ua":Ljava/lang/String;
    .restart local v13    # "version":Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 549
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .restart local v9    # "fs":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v14

    move-object v8, v9

    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 547
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .restart local v9    # "fs":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v14

    move-object v8, v9

    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 545
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .restart local v9    # "fs":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v14

    move-object v8, v9

    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .restart local v9    # "fs":Ljava/io/FileOutputStream;
    :cond_3
    move-object v8, v9

    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method
