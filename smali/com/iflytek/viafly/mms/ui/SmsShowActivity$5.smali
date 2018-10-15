.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$5;
.super Ljava/lang/Object;
.source "SmsShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$5;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 515
    const/4 v6, 0x0

    .line 516
    .local v6, "mLogcatProc":Ljava/lang/Process;
    const/4 v7, 0x0

    .line 519
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 520
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 521
    .local v3, "fmt":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, "startDateString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "logcat"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "-v"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "time"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "ActivityManager:I *:S"

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 536
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 537
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    const-string/jumbo v11, "SmsShowActivity"

    const-string/jumbo v12, "start catch home"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 543
    const-string/jumbo v11, "android.intent.category.HOME"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 545
    .local v4, "indexOfHome":I
    if-lez v4, :cond_0

    .line 548
    const-string/jumbo v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "arr":[Ljava/lang/String;
    array-length v11, v0

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    .line 551
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 553
    .local v10, "time":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    .line 554
    const-string/jumbo v11, "SmsShowActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " -> catch home event: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const-string/jumbo v12, "logcat -c"

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 557
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$5;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v11}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$5;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v12}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x14

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 558
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Z)Z

    .line 564
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v4    # "indexOfHome":I
    .end local v10    # "time":Ljava/lang/String;
    :cond_1
    const-string/jumbo v11, "SmsShowActivity"

    const-string/jumbo v12, "stop catch home"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    if-eqz v8, :cond_4

    .line 570
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    .line 576
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-void

    .line 571
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v11, "SmsShowActivity"

    const-string/jumbo v12, "IOException error"

    invoke-static {v11, v12, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 573
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 565
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 566
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v11, "SmsShowActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    if-eqz v7, :cond_2

    .line 570
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 571
    :catch_2
    move-exception v2

    .line 572
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v11, "SmsShowActivity"

    const-string/jumbo v12, "IOException error"

    invoke-static {v11, v12, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 568
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v7, :cond_3

    .line 570
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 573
    :cond_3
    :goto_3
    throw v11

    .line 571
    :catch_3
    move-exception v2

    .line 572
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "SmsShowActivity"

    const-string/jumbo v13, "IOException error"

    invoke-static {v12, v13, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 568
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 565
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_4
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method
