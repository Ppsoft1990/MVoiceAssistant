.class public Lcom/iflytek/viafly/call/CallBroadcastView$a;
.super Ljava/lang/Object;
.source "CallBroadcastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/call/CallBroadcastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    return-void
.end method

.method public static a(ZZ)Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .locals 1
    .param p0, "isLocalContact"    # Z
    .param p1, "isSogouProvided"    # Z

    .prologue
    .line 432
    new-instance v0, Lcom/iflytek/viafly/call/CallBroadcastView$a;

    invoke-direct {v0}, Lcom/iflytek/viafly/call/CallBroadcastView$a;-><init>()V

    .line 433
    .local v0, "instance":Lcom/iflytek/viafly/call/CallBroadcastView$a;
    invoke-direct {v0, p0}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->b(Z)V

    .line 434
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(Z)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    .line 435
    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBroadcastView$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBroadcastView$a;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(Z)V
    .locals 0
    .param p1, "isLocalContact"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->f:Z

    .line 480
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .locals 0
    .param p1, "pNumber"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public a(Z)Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .locals 0
    .param p1, "isSogouProvided"    # Z

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->e:Z

    .line 471
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->e:Z

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .locals 0
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->b:Ljava/lang/String;

    .line 456
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .locals 0
    .param p1, "pType"    # Ljava/lang/String;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->c:Ljava/lang/String;

    .line 461
    return-object p0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->f:Z

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a:Ljava/lang/String;

    .line 503
    :goto_0
    return-object v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;
    .locals 0
    .param p1, "pLocation"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d:Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method protected d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 516
    .local v0, "content":Ljava/lang/StringBuffer;
    const-string/jumbo v1, ""

    .line 517
    .local v1, "divider":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->f:Z

    if-eqz v2, :cond_2

    .line 518
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    const-string/jumbo v1, "  "

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 527
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
