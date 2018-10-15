.class Lmv$a;
.super Landroid/os/Handler;
.source "EarPlugHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lmv;


# direct methods
.method private constructor <init>(Lmv;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lmv$a;->a:Lmv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmv;Lmv$1;)V
    .locals 0
    .param p1, "x0"    # Lmv;
    .param p2, "x1"    # Lmv$1;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lmv$a;-><init>(Lmv;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 317
    :cond_0
    :goto_0
    iget-object v0, p0, Lmv$a;->a:Lmv;

    iget-object v0, v0, Lmv;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lmv$a;->a:Lmv;

    iget-object v0, v0, Lmv;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 320
    :cond_1
    return-void

    .line 270
    :sswitch_0
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0, v4}, Lmv;->a(Lmv;I)I

    .line 272
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    .line 273
    :cond_2
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->d(Lmv;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp: plugin scanEnd success----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lmv$a;->a:Lmv;

    const-string/jumbo v1, "com.cmcc.viafly.headset"

    invoke-static {v0, v1}, Lmv;->b(Lmv;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->e(Lmv;)Lmw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->e(Lmv;)Lmw;

    move-result-object v0

    invoke-interface {v0}, Lmw;->a()V

    goto :goto_0

    .line 280
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 281
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->d(Lmv;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp: plugin scanEnd fail----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SD\u5361\u6839\u76ee\u5f55\u4e0b\u6ca1\u6709\u8bfb\u53d6\u5230apk\u6587\u4ef6"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->e(Lmv;)Lmw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->e(Lmv;)Lmw;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-interface {v0, v1}, Lmw;->a(I)V

    goto/16 :goto_0

    .line 287
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_5

    .line 288
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->d(Lmv;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp: plugin scanEnd fail----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u6ca1\u6709\u88ab\u6388\u4e88\u8bfb\u53d6SD\u5361\u7684\u6743\u9650"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->e(Lmv;)Lmw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->e(Lmv;)Lmw;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-interface {v0, v1}, Lmw;->a(I)V

    goto/16 :goto_0

    .line 294
    :cond_5
    const/4 v0, 0x4

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->d(Lmv;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp: plugin scanEnd success----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5b89\u88c5\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmv$a;->a:Lmv;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lmv;->b(Lmv;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->e(Lmv;)Lmw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->e(Lmv;)Lmw;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-interface {v0, v1}, Lmw;->a(I)V

    goto/16 :goto_0

    .line 303
    :sswitch_1
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0, v4}, Lmv;->a(Lmv;I)I

    .line 305
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6

    .line 306
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->d(Lmv;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp: plugin uninstallEnd sucess----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5378\u8f7d\u6210\u529f"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 309
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    .line 310
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->d(Lmv;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp: plugin uninstallEnd fail----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lmv$a;->a:Lmv;

    invoke-static {v0}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5378\u8f7d\u6210\u529f\u5931\u8d25\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmv$a;->a:Lmv;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lmv;->b(Lmv;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
