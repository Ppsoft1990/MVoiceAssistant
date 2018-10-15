.class Lcom/iflytek/viafly/Home$1;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/Home;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 308
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    iget-boolean v5, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    .line 309
    .local v5, "isFirstIn":Z
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    iget-boolean v7, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    if-eqz v7, :cond_3

    .line 310
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    iput-boolean v12, v7, Lcom/iflytek/viafly/Home$b;->e:Z

    .line 313
    invoke-static {}, Lcom/iflytek/viafly/safe/SignatureHelper;->a()Lcom/iflytek/viafly/safe/SignatureHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/safe/SignatureHelper;->a(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 314
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v7, "\u8b66\u544a"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 316
    const-string/jumbo v7, "\u4f60\u6b63\u5728\u4f7f\u7528\u76d7\u7248\u8f6f\u4ef6\uff0c\u8bf7\u81f3<a href=\'http://lingxi.10086.cn\'>\u7075\u7280\u5b98\u7f51</a>\u4e0b\u8f7d\u6b63\u7248"

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 317
    const-string/jumbo v7, "\u5173\u95ed"

    invoke-virtual {v0, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 319
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 320
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 321
    .local v6, "textView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 325
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v7}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 326
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v7}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "from_where"

    invoke-virtual {v7, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lagv;->a(I)V

    .line 329
    :cond_1
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->b(Lcom/iflytek/viafly/Home;)V

    .line 331
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->c(Lcom/iflytek/viafly/Home;)Lahp;

    move-result-object v7

    invoke-virtual {v7}, Lahp;->k()V

    .line 332
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->d(Lcom/iflytek/viafly/Home;)Lahv;

    move-result-object v7

    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    .line 333
    invoke-static {v9}, Lcom/iflytek/viafly/Home;->c(Lcom/iflytek/viafly/Home;)Lahp;

    move-result-object v9

    invoke-virtual {v9}, Lahp;->l()Lpp;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v7, v8}, Lahv;->i(Ljava/lang/ref/WeakReference;)V

    .line 335
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->c(Lcom/iflytek/viafly/Home;)Lahp;

    move-result-object v7

    invoke-virtual {v7, v10}, Lahp;->c(Z)Z

    .line 337
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->e(Lcom/iflytek/viafly/Home;)Lahe;

    move-result-object v7

    invoke-virtual {v7, v10}, Lahe;->c(Z)Z

    .line 339
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->f(Lcom/iflytek/viafly/Home;)Lahh;

    move-result-object v7

    invoke-virtual {v7, v10}, Lahh;->c(Z)Z

    .line 341
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v7}, Lcom/iflytek/viafly/Home;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 342
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->c(Lcom/iflytek/viafly/Home;)Lahp;

    move-result-object v7

    invoke-virtual {v7, v4}, Lahp;->c(Landroid/content/Intent;)V

    .line 344
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7, v4}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;Landroid/content/Intent;)V

    .line 351
    invoke-static {v11}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setStartHomeInfo(Lcom/iflytek/framework/business/entities/StartHomeInfo;)V

    .line 354
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    new-instance v8, Landroid/os/HandlerThread;

    const-string/jumbo v9, "HomeWorkThread"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 355
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->g(Lcom/iflytek/viafly/Home;)Landroid/os/HandlerThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 356
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v9}, Lcom/iflytek/viafly/Home;->g(Lcom/iflytek/viafly/Home;)Landroid/os/HandlerThread;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v10}, Lcom/iflytek/viafly/Home;->h(Lcom/iflytek/viafly/Home;)Landroid/os/Handler$Callback;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v7, v8}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;Landroid/os/Handler;)Landroid/os/Handler;

    .line 357
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->i(Lcom/iflytek/viafly/Home;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v8}, Lcom/iflytek/viafly/Home;->i(Lcom/iflytek/viafly/Home;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0xbb8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    if-eqz v4, :cond_2

    const-string/jumbo v7, "com.iflytek.cmcc.VOICE_SEARCH_AUDIO_BUFFER"

    .line 361
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 360
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 362
    :cond_2
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lahy;->a(Landroid/content/Context;)Lahy;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v8}, Lcom/iflytek/viafly/Home;->a()Lqr;

    move-result-object v8

    invoke-virtual {v7, v8}, Lahy;->a(Lqr;)V

    .line 367
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    iput-boolean v12, v7, Lcom/iflytek/viafly/Home$b;->b:Z

    .line 368
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    iput-boolean v12, v7, Lcom/iflytek/viafly/Home$b;->c:Z

    .line 369
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    iget v8, v7, Lcom/iflytek/viafly/Home$b;->f:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/iflytek/viafly/Home$b;->f:I

    .line 371
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->f(Lcom/iflytek/viafly/Home;)Lahh;

    move-result-object v7

    invoke-virtual {v7, v12}, Lahh;->c(Z)Z

    .line 373
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->j(Lcom/iflytek/viafly/Home;)Lahw;

    move-result-object v7

    const/16 v8, 0x1b

    invoke-virtual {v7, v8}, Lahw;->sendEmptyMessage(I)Z

    .line 375
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;

    move-result-object v7

    iget v8, v7, Lcom/iflytek/viafly/Home$b;->d:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/iflytek/viafly/Home$b;->d:I

    .line 377
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->k(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->c(Z)Z

    .line 379
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->e(Lcom/iflytek/viafly/Home;)Lahe;

    move-result-object v7

    invoke-virtual {v7, v12}, Lahe;->c(Z)Z

    .line 381
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->c(Lcom/iflytek/viafly/Home;)Lahp;

    move-result-object v7

    invoke-virtual {v7, v12}, Lahp;->c(Z)Z

    .line 383
    iget-object v7, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v7}, Lcom/iflytek/viafly/Home;->l(Lcom/iflytek/viafly/Home;)Lahi;

    move-result-object v7

    invoke-virtual {v7, v5}, Lahi;->c(Z)Z

    .line 386
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 389
    .local v2, "endTime":J
    const-string/jumbo v7, "ApplicationLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onResume2 end timestamp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v7, "ApplicationLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "from process onCreate begin to home onResume2 end = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/Home$1;->a:Lcom/iflytek/viafly/Home;

    invoke-static {v9}, Lcom/iflytek/viafly/Home;->a(Lcom/iflytek/viafly/Home;)Lcom/iflytek/viafly/Home$b;

    move-result-object v9

    iget-wide v10, v9, Lcom/iflytek/viafly/Home$b;->i:J

    sub-long v10, v2, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method
