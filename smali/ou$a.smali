.class Lou$a;
.super Landroid/os/Handler;
.source "PermissionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lou;


# direct methods
.method private constructor <init>(Lou;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lou$a;->a:Lou;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lou;Lou$1;)V
    .locals 0
    .param p1, "x0"    # Lou;
    .param p2, "x1"    # Lou$1;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lou$a;-><init>(Lou;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x1

    .line 252
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 254
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    const-string/jumbo v7, "PermissionImpl"

    const-string/jumbo v8, "MSG_GETAPP"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 258
    .local v1, "appError":I
    if-eqz v1, :cond_0

    .line 259
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->c(Lou;)Lom;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 260
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->c(Lou;)Lom;

    move-result-object v7

    invoke-interface {v7, v1}, Lom;->a(I)V

    goto :goto_0

    .line 265
    .end local v1    # "appError":I
    :pswitch_1
    const-string/jumbo v7, "PermissionImpl"

    const-string/jumbo v8, "MSG_GETCONFIG"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 267
    .local v4, "configError":I
    if-eqz v4, :cond_1

    .line 268
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->c(Lou;)Lom;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 269
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->c(Lou;)Lom;

    move-result-object v7

    invoke-interface {v7, v4}, Lom;->a(I)V

    goto :goto_0

    .line 273
    :cond_1
    :try_start_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_0

    .line 275
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 276
    .local v2, "cacheList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->c(Lou;)Lom;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 277
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->c(Lou;)Lom;

    move-result-object v7

    invoke-interface {v7, v2}, Lom;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    .end local v2    # "cacheList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :catch_0
    move-exception v5

    .line 281
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PermissionImpl"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 286
    .end local v4    # "configError":I
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7, v12}, Lou;->a(Lou;Z)Z

    .line 287
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Lol;

    if-eqz v7, :cond_0

    .line 288
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lol;

    .line 289
    .local v6, "initCallback":Lol;
    if-eqz v6, :cond_0

    .line 290
    invoke-interface {v6}, Lol;->a()V

    goto/16 :goto_0

    .line 295
    .end local v6    # "initCallback":Lol;
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_2

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Lom;

    if-eqz v7, :cond_2

    .line 296
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lom;

    .line 297
    .local v3, "callback":Lom;
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7, v3}, Lou;->a(Lou;Lom;)Lom;

    .line 299
    .end local v3    # "callback":Lom;
    :cond_2
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->d(Lou;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->e(Lou;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 300
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->f(Lou;)Loq;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 301
    iget-object v7, p0, Lou$a;->a:Lou;

    iget-object v8, p0, Lou$a;->a:Lou;

    invoke-static {v8}, Lou;->f(Lou;)Loq;

    move-result-object v8

    iget-object v9, p0, Lou$a;->a:Lou;

    invoke-virtual {v8, v9}, Loq;->a(Lop;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lou;->a(Lou;J)J

    goto/16 :goto_0

    .line 304
    :cond_3
    const-string/jumbo v7, "PermissionImpl"

    const-string/jumbo v8, "update is running or init not ok"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v7, p0, Lou$a;->a:Lou;

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static {v7, v12, v8, v9}, Lou;->a(Lou;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 309
    :pswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 310
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 311
    .local v0, "action":I
    iget-object v7, p0, Lou$a;->a:Lou;

    invoke-static {v7}, Lou;->b(Lou;)Lor;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v0, v7}, Lor;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
