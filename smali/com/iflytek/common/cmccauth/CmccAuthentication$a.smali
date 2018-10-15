.class Lcom/iflytek/common/cmccauth/CmccAuthentication$a;
.super Landroid/content/BroadcastReceiver;
.source "CmccAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/cmccauth/CmccAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/cmccauth/CmccAuthentication;


# direct methods
.method private constructor <init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p2, "x1"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$1;

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;-><init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x67

    const/4 v9, 0x0

    .line 586
    const-string/jumbo v6, "CmccAuthentication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive | intent action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string/jumbo v6, "com.iflytek.cmcc.EXTRA_TYPE"

    const/16 v7, 0x65

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 591
    .local v5, "type":I
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 593
    .local v4, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    const-string/jumbo v6, "com.iflytek.cmcc.EXTRA_SIMCARD"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "sim":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 595
    invoke-static {v3}, Lmz;->m(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v4

    .line 599
    :cond_0
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 600
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-static {v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 602
    const-string/jumbo v6, "CmccAuthentication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive | intent simCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.BROADCAST_AUTH_RESULT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 604
    const-string/jumbo v6, "com.iflytek.cmcc.EXTRA_RESULT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 606
    .local v2, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    const-string/jumbo v6, "CmccAuthentication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive | intent auth info  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenType()I

    move-result v6

    const/16 v7, 0x66

    if-eq v6, v7, :cond_3

    .line 609
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v4, v5, v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 646
    .end local v2    # "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_1
    :goto_0
    invoke-static {v9}, Lmz;->b(Z)V

    .line 752
    :cond_2
    :goto_1
    return-void

    .line 611
    .restart local v2    # "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_3
    const-string/jumbo v6, "CmccAuthentication"

    const-string/jumbo v7, "onReceive | outer notify auth info type do not match"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    const/16 v7, 0x3f5

    invoke-static {v6, v4, v5, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 626
    .end local v2    # "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.BROADCAST_AUTH_ERROR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 627
    const-string/jumbo v6, "com.iflytek.cmcc.EXTRA_ERROR_CODE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 630
    .local v1, "errorCode":I
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v4, v5, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_0

    .line 652
    .end local v1    # "errorCode":I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.BROADCAST_MIGU_AUTH_RESULT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 654
    const-string/jumbo v6, "com.iflytek.cmcc.EXTRA_RESULT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .line 656
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    const-string/jumbo v6, "CmccAuthentication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive | intent auth info  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    if-eq v5, v10, :cond_6

    const/16 v6, 0x69

    if-ne v5, v6, :cond_9

    .line 662
    :cond_6
    if-nez v0, :cond_7

    .line 663
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_2
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v11}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$c;)V

    .line 680
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-static {v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    goto :goto_1

    .line 665
    :cond_7
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    if-eqz v6, :cond_8

    .line 666
    const-string/jumbo v6, "CmccAuthentication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onVerifyAuthResult | mTokenWaitInfo != null , mTokenWaitInfo.simCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v8, v8, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget-object v8, v8, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->b:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-static {v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 671
    :cond_8
    invoke-static {v0}, Lmz;->c(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 674
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v4, v10, v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 676
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v4, v10, v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto :goto_2

    .line 686
    :cond_9
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;)Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v6

    sget-object v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    if-eq v6, v7, :cond_a

    .line 687
    const-string/jumbo v6, "CmccAuthentication"

    const-string/jumbo v7, "onReceive | setAuthState = idle"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-static {v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 691
    :cond_a
    if-nez v0, :cond_b

    .line 692
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    const/16 v7, 0x7da

    invoke-static {v6, v4, v5, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto/16 :goto_1

    .line 695
    :cond_b
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;)Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v6

    sget-object v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    if-ne v6, v7, :cond_d

    .line 696
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    if-nez v6, :cond_c

    .line 697
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    new-instance v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget-object v8, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-direct {v7, v8, v11}, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;-><init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$1;)V

    iput-object v7, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    .line 699
    :cond_c
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->a:Z

    .line 700
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iput-object v4, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->b:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 701
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iput v5, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->c:I

    .line 702
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iput-object v0, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->d:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    goto/16 :goto_1

    .line 704
    :cond_d
    invoke-static {v0}, Lmz;->c(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 705
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v4, v5, v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto/16 :goto_1

    .line 711
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.BROADCAST_MIGU_AUTH_ERROR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 713
    const-string/jumbo v6, "com.iflytek.cmcc.EXTRA_ERROR_CODE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 717
    .restart local v1    # "errorCode":I
    if-ne v5, v10, :cond_11

    .line 718
    const-string/jumbo v6, "CmccAuthentication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onVerifyAuthError | errorCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    sget-object v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-static {v6, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;)V

    .line 720
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    if-eqz v6, :cond_10

    .line 722
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget-boolean v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->a:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->d:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    if-eqz v6, :cond_f

    .line 723
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->d:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-static {v6}, Lmz;->c(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 724
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v7, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v7, v7, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget-object v7, v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->d:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-static {v6, v4, v5, v7}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 732
    :goto_3
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v11}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$c;)V

    goto/16 :goto_1

    .line 726
    :cond_f
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v7, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v7, v7, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget-object v7, v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->b:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v8, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v8, v8, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget v8, v8, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->c:I

    iget-object v9, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v9, v9, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    invoke-static {v9}, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication$c;)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    .line 727
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 730
    :cond_10
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 736
    :cond_11
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication;)Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    move-result-object v6

    sget-object v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    if-ne v6, v7, :cond_13

    .line 737
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    if-nez v6, :cond_12

    .line 738
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    new-instance v7, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iget-object v8, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-direct {v7, v8, v11}, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;-><init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$1;)V

    iput-object v7, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    .line 740
    :cond_12
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iput-boolean v9, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->a:Z

    .line 741
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iput-object v4, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->b:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 742
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    iput v5, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->c:I

    .line 743
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    iget-object v6, v6, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    invoke-static {v6, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->a(Lcom/iflytek/common/cmccauth/CmccAuthentication$c;I)I

    goto/16 :goto_1

    .line 745
    :cond_13
    iget-object v6, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$a;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-static {v6, v4, v5, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto/16 :goto_1
.end method
