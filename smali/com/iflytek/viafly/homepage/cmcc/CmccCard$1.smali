.class Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;
.super Ljava/lang/Object;
.source "CmccCard.java"

# interfaces
.implements Lake;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cmcc/CmccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 414
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->i(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->h(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    sget-object v3, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v4, "cmcc"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public a(Z)V
    .locals 7
    .param p1, "isAutoTrigger"    # Z

    .prologue
    const/16 v6, 0x3eb

    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 419
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRefreshClick mLastState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->o:Ljava/lang/String;

    const-string/jumbo v1, "user has logout, return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)V

    .line 425
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v6}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)V

    .line 469
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 430
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->d(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->b()V

    .line 432
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v5}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    .line 433
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->j(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)J

    goto :goto_0

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 450
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v2, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    .line 451
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->j(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)J

    goto :goto_0

    :cond_2
    move v0, v1

    .line 450
    goto :goto_1

    .line 452
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 464
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    if-eqz p1, :cond_4

    :goto_2
    invoke-static {v2, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->b(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)I

    .line 465
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->j(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;)J

    goto :goto_0

    :cond_4
    move v0, v1

    .line 464
    goto :goto_2

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard$1;->a:Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    invoke-static {v0, v6}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;->a(Lcom/iflytek/viafly/homepage/cmcc/CmccCard;I)V

    goto :goto_0
.end method
