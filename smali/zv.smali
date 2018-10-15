.class public Lzv;
.super Ljava/lang/Object;
.source "CallWindowManager.java"


# static fields
.field public static a:J

.field private static b:Lcom/iflytek/viafly/call/CallBroadcastView;

.field private static c:Landroid/view/WindowManager$LayoutParams;

.field private static d:Landroid/view/WindowManager;

.field private static e:Landroid/os/Handler;

.field private static f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lzv;->e:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lzv;->f:[B

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget-object v0, Lzv;->e:Landroid/os/Handler;

    new-instance v1, Lzv$3;

    invoke-direct {v1, p0}, Lzv$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 160
    sget-wide v0, Lzv;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 161
    const-string/jumbo v0, "CallWindowManager"

    const-string/jumbo v1, "hide the call window"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lzv;->e:Landroid/os/Handler;

    new-instance v1, Lzv$4;

    invoke-direct {v1, p0}, Lzv$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string/jumbo v0, "CallWindowManager"

    const-string/jumbo v1, "id changed, do not hide call window"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adapter"    # Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .param p2, "needHandle"    # Z
    .param p3, "isOutgoingCall"    # Z

    .prologue
    .line 47
    sget-object v0, Lzv;->e:Landroid/os/Handler;

    new-instance v1, Lzv$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lzv$1;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOutgoingCall"    # Z

    .prologue
    .line 211
    sget-object v0, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    if-nez v0, :cond_0

    .line 212
    sget-object v1, Lzv;->f:[B

    monitor-enter v1

    .line 213
    :try_start_0
    new-instance v0, Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/call/CallBroadcastView;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    .line 214
    monitor-exit v1

    .line 216
    :cond_0
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 188
    sget-object v1, Lzv;->f:[B

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    sget-object v0, Lzv;->d:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 198
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lzv;->d:Landroid/view/WindowManager;

    .line 200
    :cond_0
    sget-object v0, Lzv;->d:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic b()Lcom/iflytek/viafly/call/CallBroadcastView;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3}, Lzv;->c(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V

    return-void
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lzv;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    sget-object v0, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    .line 207
    :cond_0
    sget-object v0, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adapter"    # Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .param p2, "needHandle"    # Z
    .param p3, "isOutgoingCall"    # Z

    .prologue
    .line 56
    invoke-static/range {p0 .. p0}, Lzv;->e(Landroid/content/Context;)V

    .line 58
    invoke-static/range {p0 .. p0}, Lzv;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v10

    .line 59
    .local v10, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 60
    .local v9, "screenWidth":I
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 62
    .local v8, "screenHeight":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lzv;->a(Landroid/content/Context;Z)V

    .line 66
    if-eqz p2, :cond_0

    .line 68
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v5

    .line 69
    .local v5, "manager":Lzs;
    new-instance v13, Lzv$2;

    invoke-direct {v13, v5}, Lzv$2;-><init>(Lzs;)V

    invoke-virtual {v5, v13}, Lzs;->a(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {}, Lcom/iflytek/viafly/call/CallBroadcastView;->a()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 88
    const v13, 0x7f02000e

    const v14, 0x7f02000b

    invoke-virtual {v5, v13, v14}, Lzs;->a(II)Lzs;

    .line 92
    :goto_0
    invoke-static/range {p0 .. p0}, Lhl;->d(Landroid/content/Context;)I

    move-result v11

    .line 93
    .local v11, "x":I
    invoke-static/range {p0 .. p0}, Lhl;->e(Landroid/content/Context;)I

    move-result v13

    div-int/lit8 v12, v13, 0x2

    .line 94
    .local v12, "y":I
    invoke-virtual {v5, v11, v12}, Lzs;->b(II)Lzs;

    .line 96
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/iflytek/viafly/call/CallBusinessManager;->n()J

    move-result-wide v14

    const-string/jumbo v13, "call"

    invoke-virtual {v5, v14, v15, v13}, Lzs;->a(JLjava/lang/String;)V

    .line 98
    .end local v5    # "manager":Lzs;
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_0
    sget-object v13, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/call/CallBroadcastView;->a(Lcom/iflytek/viafly/call/CallBroadcastView$a;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 142
    :goto_1
    return-void

    .line 90
    .restart local v5    # "manager":Lzs;
    :cond_1
    const v13, 0x7f020009

    const v14, 0x7f02000a

    invoke-virtual {v5, v13, v14}, Lzs;->a(II)Lzs;

    goto :goto_0

    .line 101
    .end local v5    # "manager":Lzs;
    :cond_2
    invoke-static/range {p0 .. p0}, Lzv;->c(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    sput-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    .line 102
    sget-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v14, 0x7d3

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 103
    sget-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v14, 0x1

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 104
    sget-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v14, 0x28

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    sget-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v14, 0x31

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    sget-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    sget-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, "key":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 112
    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_OUT_GOING_CALL_WINDOW_POSITION"

    .line 116
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    div-int/lit8 v14, v8, 0x6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "defaultPos":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    invoke-virtual {v13, v4, v2}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "posData":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v13, "\\|"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "pos":[Ljava/lang/String;
    const-string/jumbo v13, ""

    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 121
    sget-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 123
    :cond_3
    sget-object v13, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v6    # "pos":[Ljava/lang/String;
    :goto_3
    sget-object v13, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    sget-object v14, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v13, v14}, Lcom/iflytek/viafly/call/CallBroadcastView;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    :try_start_1
    sget-object v13, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    sget-object v14, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v10, v13, v14}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_4
    if-eqz p3, :cond_5

    .line 138
    invoke-static/range {p0 .. p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v13

    sget-object v14, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->outgoing_call_float_window:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v14}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lxb;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 114
    .end local v2    # "defaultPos":Ljava/lang/String;
    .end local v7    # "posData":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_INCOMIMG_CALL_WINDOW_POSITION"

    goto :goto_2

    .line 124
    .restart local v2    # "defaultPos":Ljava/lang/String;
    .restart local v7    # "posData":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "CallWindowManager"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 132
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 133
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "CallWindowManager"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 140
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static/range {p0 .. p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v13

    sget-object v14, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->incoming_call_float_window:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v14}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lxb;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lzv;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 174
    sget-object v1, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    if-eqz v1, :cond_0

    sget-object v1, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/call/CallBroadcastView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {p0}, Lzv;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 176
    .local v0, "windowManager":Landroid/view/WindowManager;
    sget-object v1, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 178
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    sget-object v2, Lzv;->f:[B

    monitor-enter v2

    .line 179
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lzv;->b:Lcom/iflytek/viafly/call/CallBroadcastView;

    .line 180
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sput-object v3, Lzv;->c:Landroid/view/WindowManager$LayoutParams;

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
