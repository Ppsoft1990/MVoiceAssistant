.class Labj$1;
.super Ljava/lang/Object;
.source "DialSmsBusinessImpl.java"

# interfaces
.implements Lwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labj;->b()Labi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Labj;


# direct methods
.method constructor <init>(Labj;)V
    .locals 0
    .param p1, "this$0"    # Labj;

    .prologue
    .line 47
    iput-object p1, p0, Labj$1;->a:Labj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJI)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "requestId"    # J
    .param p4, "errorCode"    # I

    .prologue
    .line 122
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResult(), errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Labj$1;->a:Labj;

    invoke-static {v0}, Labj;->a(Labj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Labj$1;->a:Labj;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labj;->a(Labj;Z)Z

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lwa;)V
    .locals 17
    .param p1, "result"    # Lwa;

    .prologue
    .line 50
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onResult(), result="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move-object/from16 v0, p0

    iget-object v13, v0, Labj$1;->a:Labj;

    invoke-static {v13}, Labj;->a(Labj;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 52
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Labj$1;->a:Labj;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Labj;->a(Labj;Z)Z

    .line 53
    move-object/from16 v0, p1

    check-cast v0, Labh;

    move-object v2, v0

    .line 54
    .local v2, "dialSmsBizConfigResult":Labh;
    invoke-virtual {v2}, Labh;->a()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "returntext":Ljava/lang/String;
    invoke-static {v8}, Labd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "suffix":Ljava/lang/String;
    invoke-static {v8}, Labd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, "timeout":Ljava/lang/String;
    invoke-static {v8}, Labd;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "cmccUrl":Ljava/lang/String;
    invoke-static {v8}, Labd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 59
    .local v12, "videoUrl":Ljava/lang/String;
    invoke-static {v8}, Labd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, "videoAdvertiseTag":Ljava/lang/String;
    invoke-static {v8}, Labd;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "musicBusinessUrl":Ljava/lang/String;
    invoke-static {v8}, Labd;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "musicMyOrderUrl":Ljava/lang/String;
    invoke-static {v8}, Labd;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "musicOrderBannerUrl":Ljava/lang/String;
    invoke-static {v8}, Labd;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "musicOrderUrl":Ljava/lang/String;
    invoke-static {v8}, Labd;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "musicRecordUploadUrl":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string/jumbo v13, "\"\""

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 66
    const-string/jumbo v13, "\""

    const-string/jumbo v15, ""

    invoke-virtual {v9, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v15, "com.iflytek.cmccIFLY_DIAL_SMS_CONFIG_SUFFIX"

    invoke-virtual {v13, v15, v9}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    if-eqz v10, :cond_1

    const-string/jumbo v13, "\"\""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 70
    const-string/jumbo v13, "\""

    const-string/jumbo v15, ""

    invoke-virtual {v10, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-static {v10}, Labb;->a(Ljava/lang/String;)V

    .line 75
    :cond_1
    if-eqz v11, :cond_2

    const-string/jumbo v13, "\"\""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 76
    const-string/jumbo v13, "\""

    const-string/jumbo v15, ""

    invoke-virtual {v11, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 78
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v15, "com.iflytek.cmcc.IFLY_VIDEO_ADVERTISE_TAG"

    invoke-virtual {v13, v15, v11}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v13, "\"\""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 82
    const-string/jumbo v13, "\""

    const-string/jumbo v15, ""

    invoke-virtual {v3, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v15, "com.iflytek.cmcc.IFLY_MUSIC_BUSINESS_URL"

    invoke-virtual {v13, v15, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3
    if-eqz v4, :cond_4

    const-string/jumbo v13, "\"\""

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 87
    const-string/jumbo v13, "\""

    const-string/jumbo v15, ""

    invoke-virtual {v4, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v15, "com.iflytek.cmcc.IFLY_MUSIC_MY_ORDER_URL"

    invoke-virtual {v13, v15, v4}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_4
    if-eqz v6, :cond_5

    const-string/jumbo v13, "\"\""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 97
    const-string/jumbo v13, "\""

    const-string/jumbo v15, ""

    invoke-virtual {v6, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v15, "com.iflytek.cmcc.IFLY_MUSIC_ORDER_URL"

    invoke-virtual {v13, v15, v6}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_5
    if-eqz v7, :cond_6

    const-string/jumbo v13, "\"\""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 102
    const-string/jumbo v13, "\""

    const-string/jumbo v15, ""

    invoke-virtual {v7, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v15, "com.iflytek.cmcc.IFLY_MUSIC_RECORD_UPLOAD_URL"

    invoke-virtual {v13, v15, v7}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_6
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), suffix="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), timeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), cmccUrl="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), videoUrl="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), videoAdvertiseTag="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), musicBusinessUrl="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), musicMyOrderUrl="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), musicOrderBannerUrl="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), musicOrderUrl="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Labj;->e()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onResult(), musicRecordUploadUrl="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v14

    .line 117
    return-void

    .line 116
    .end local v1    # "cmccUrl":Ljava/lang/String;
    .end local v2    # "dialSmsBizConfigResult":Labh;
    .end local v3    # "musicBusinessUrl":Ljava/lang/String;
    .end local v4    # "musicMyOrderUrl":Ljava/lang/String;
    .end local v5    # "musicOrderBannerUrl":Ljava/lang/String;
    .end local v6    # "musicOrderUrl":Ljava/lang/String;
    .end local v7    # "musicRecordUploadUrl":Ljava/lang/String;
    .end local v8    # "returntext":Ljava/lang/String;
    .end local v9    # "suffix":Ljava/lang/String;
    .end local v10    # "timeout":Ljava/lang/String;
    .end local v11    # "videoAdvertiseTag":Ljava/lang/String;
    .end local v12    # "videoUrl":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13
.end method
