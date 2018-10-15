.class Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;
.super Landroid/os/Handler;
.source "CmccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
    .param p2, "x1"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;-><init>(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 291
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 293
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)V

    .line 295
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v1, "user has logout, return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGE_UPDATE_RESULT ---- mLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    move-result-object v0

    if-nez v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    new-instance v1, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->e(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->f(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    .line 313
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->setCmccCardActionLs(Lake;)V

    .line 314
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->addView(Landroid/view/View;)V

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    goto/16 :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a()V

    .line 318
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->f(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)V

    .line 324
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGE_UPDATE_ERROR ---- mLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 332
    const-string/jumbo v0, "000004"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "000001"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 353
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v6}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    goto/16 :goto_0

    .line 364
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v5}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    goto/16 :goto_0

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 369
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02f2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    const-string/jumbo v0, "000004"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "000001"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 371
    :cond_7
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v6}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    goto/16 :goto_0

    .line 373
    :cond_8
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v5}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    goto/16 :goto_0

    .line 377
    :cond_9
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 378
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 380
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a()V

    .line 382
    :cond_a
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    goto/16 :goto_0

    .line 386
    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGE_TRIGGER_REFRESH ---- mLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->p:Lake;

    invoke-interface {v0, v3}, Lake;->a(Z)V

    goto/16 :goto_0

    .line 391
    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGE_VERIFY_RESULT ---- mLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->c(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->g(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V

    goto/16 :goto_0

    .line 396
    :pswitch_5
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V

    goto/16 :goto_0

    .line 400
    :pswitch_6
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage:MESSAGE_SWITCH_VIEW "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$a;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b()V

    goto/16 :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
