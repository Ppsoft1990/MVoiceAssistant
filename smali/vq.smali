.class public Lvq;
.super Lvn;
.source "BlcFeedbackAdapter.java"

# interfaces
.implements Lcom/iflytek/blc/feedback/FeedbackObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvq$a;
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lvq$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lvn;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lvq;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)[Lcom/iflytek/blc/feedback/Attachment;
    .locals 12
    .param p1, "recordFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v6

    .line 64
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "attachment":Lcom/iflytek/blc/feedback/Attachment;
    const/4 v1, 0x0

    .line 71
    .local v1, "byRecord":[B
    const/4 v4, 0x0

    .line 73
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v1, v7, [B

    .line 75
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 76
    const-string/jumbo v7, "BlcFeedbackAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "feedBackRecord filelen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/iflytek/blc/feedback/Attachment;

    .end local v0    # "attachment":Lcom/iflytek/blc/feedback/Attachment;
    const-string/jumbo v7, "application/x-fb"

    invoke-direct {v0, v7, v1}, Lcom/iflytek/blc/feedback/Attachment;-><init>(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .restart local v0    # "attachment":Lcom/iflytek/blc/feedback/Attachment;
    if-eqz v5, :cond_4

    .line 84
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 91
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 92
    .local v6, "voiceParts":[Lcom/iflytek/blc/feedback/Attachment;
    if-eqz v0, :cond_0

    .line 93
    const/4 v7, 0x1

    new-array v6, v7, [Lcom/iflytek/blc/feedback/Attachment;

    .end local v6    # "voiceParts":[Lcom/iflytek/blc/feedback/Attachment;
    const/4 v7, 0x0

    aput-object v0, v6, v7

    .restart local v6    # "voiceParts":[Lcom/iflytek/blc/feedback/Attachment;
    goto :goto_0

    .line 85
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v6    # "voiceParts":[Lcom/iflytek/blc/feedback/Attachment;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BlcFeedbackAdapter"

    const-string/jumbo v8, "error happened 2"

    invoke-static {v7, v8, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 87
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 79
    .end local v0    # "attachment":Lcom/iflytek/blc/feedback/Attachment;
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "BlcFeedbackAdapter"

    const-string/jumbo v8, "error happened 1"

    invoke-static {v7, v8, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "attachment":Lcom/iflytek/blc/feedback/Attachment;
    if-eqz v4, :cond_2

    .line 84
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 85
    :catch_2
    move-exception v2

    .line 86
    const-string/jumbo v7, "BlcFeedbackAdapter"

    const-string/jumbo v8, "error happened 2"

    invoke-static {v7, v8, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 82
    .end local v0    # "attachment":Lcom/iflytek/blc/feedback/Attachment;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_3

    .line 84
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 87
    :cond_3
    :goto_4
    throw v7

    .line 85
    :catch_3
    move-exception v2

    .line 86
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "BlcFeedbackAdapter"

    const-string/jumbo v9, "error happened 2"

    invoke-static {v8, v9, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 78
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "attachment":Lcom/iflytek/blc/feedback/Attachment;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :cond_4
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public OnFeedbackFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v0, "BlcFeedbackAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnFeedbackFailure | errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lvq;->f:Lvq$a;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lvq;->f:Lvq$a;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lvq$a;->onBlcFeedbackError(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public OnFeedbackSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string/jumbo v1, "BlcFeedbackAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnFeedbackSuccess | info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lvq;->f:Lvq$a;

    if-eqz v1, :cond_0

    .line 158
    new-instance v0, Lcom/iflytek/yd/business/BasicInfo;

    invoke-direct {v0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 159
    .local v0, "basicInfo":Lcom/iflytek/yd/business/BasicInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/business/BasicInfo;->setSuccessful(Z)V

    .line 160
    iget-object v1, p0, Lvq;->f:Lvq$a;

    invoke-interface {v1, v0}, Lvq$a;->onBlcFeedbackResult(Lcom/iflytek/yd/business/BasicInfo;)V

    .line 162
    .end local v0    # "basicInfo":Lcom/iflytek/yd/business/BasicInfo;
    :cond_0
    return-void
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string/jumbo v0, "http://ydossp.voicecloud.cn/do"

    return-object v0
.end method

.method public a(Lvq$a;Lcom/iflytek/blc/feedback/FeedbackType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lvq$a;
    .param p2, "problemType"    # Lcom/iflytek/blc/feedback/FeedbackType;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "contact"    # Ljava/lang/String;
    .param p5, "recordFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 112
    iput-object p1, p0, Lvq;->f:Lvq$a;

    .line 113
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p5}, Lvq;->a(Ljava/lang/String;)[Lcom/iflytek/blc/feedback/Attachment;

    move-result-object v5

    .line 115
    .local v5, "voiceParts":[Lcom/iflytek/blc/feedback/Attachment;
    iget-object v0, p0, Lvq;->e:Landroid/content/Context;

    invoke-static {v0}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lvk;->a(Lcom/iflytek/blc/feedback/FeedbackObserver;Lcom/iflytek/blc/feedback/FeedbackType;Ljava/lang/String;Ljava/lang/String;[Lcom/iflytek/blc/feedback/Attachment;)V

    .line 124
    .end local v5    # "voiceParts":[Lcom/iflytek/blc/feedback/Attachment;
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p5}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lvq;->a:Lyo;

    invoke-interface {v0, v1, p3, p4, p5}, Lyo;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lvq;->a:Lyo;

    invoke-interface {v0, v1, p3, p4}, Lyo;->a(ILjava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lvq;->e:Landroid/content/Context;

    invoke-static {v0}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v0

    invoke-virtual {v0}, Lvk;->h()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lvq;->a:Lyo;

    invoke-interface {v0}, Lyo;->a()V

    goto :goto_0
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 140
    const-string/jumbo v1, "BlcFeedbackAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult | errorcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz p2, :cond_1

    .line 142
    iget-object v1, p0, Lvq;->f:Lvq$a;

    if-eqz v1, :cond_0

    .line 143
    new-instance v0, Lcom/iflytek/yd/business/BasicInfo;

    invoke-direct {v0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 144
    .local v0, "basicInfo":Lcom/iflytek/yd/business/BasicInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/business/BasicInfo;->setSuccessful(Z)V

    .line 145
    iget-object v1, p0, Lvq;->f:Lvq$a;

    invoke-interface {v1, v0}, Lvq$a;->onBlcFeedbackResult(Lcom/iflytek/yd/business/BasicInfo;)V

    .line 152
    .end local v0    # "basicInfo":Lcom/iflytek/yd/business/BasicInfo;
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lvq;->f:Lvq$a;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lvq;->f:Lvq$a;

    invoke-interface {v1, p1}, Lvq$a;->onBlcFeedbackError(I)V

    goto :goto_0
.end method
