.class public final Ljh;
.super Ljava/lang/Object;
.source "TTSParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljh$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljj;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, 0x3

    iput v0, p0, Ljh;->o:I

    .line 456
    iput-object v1, p0, Ljh;->q:Ljj;

    .line 461
    iput-object v1, p0, Ljh;->r:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .locals 0
    .param p1, "needCache"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Ljh;->d:Z

    .line 565
    return-void
.end method

.method private b(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 572
    if-ltz p1, :cond_0

    .line 573
    iput p1, p0, Ljh;->f:I

    .line 575
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 0
    .param p1, "needPlay"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Ljh;->e:Z

    .line 569
    return-void
.end method

.method private c(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 601
    if-ltz p1, :cond_0

    .line 602
    iput p1, p0, Ljh;->g:I

    .line 604
    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 1
    .param p1, "speed"    # I

    .prologue
    .line 647
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 648
    iput p1, p0, Ljh;->j:I

    .line 650
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttsEngineType"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "local"

    .line 546
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cloud"

    .line 547
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    :cond_0
    iput-object p1, p0, Ljh;->a:Ljava/lang/String;

    .line 553
    :cond_1
    return-void
.end method

.method private e(I)V
    .locals 1
    .param p1, "scene"    # I

    .prologue
    .line 653
    if-ltz p1, :cond_0

    .line 654
    iput p1, p0, Ljh;->n:I

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljh;->n:I

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1
    .param p1, "cloudTTSEngineType"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iput-object p1, p0, Ljh;->b:Ljava/lang/String;

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    const-string/jumbo v0, "vivi21"

    iput-object v0, p0, Ljh;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private f(I)V
    .locals 1
    .param p1, "pitch"    # I

    .prologue
    .line 661
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 662
    iput p1, p0, Ljh;->k:I

    .line 664
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 1
    .param p1, "methodOfReadNumber"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "-1"

    .line 579
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1"

    .line 580
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    .line 581
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2"

    .line 582
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "3"

    .line 583
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    :cond_0
    iput-object p1, p0, Ljh;->c:Ljava/lang/String;

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_1
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Ljh;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private g(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 667
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 668
    iput p1, p0, Ljh;->l:I

    .line 670
    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1
    .param p1, "methodOfReadNumber1"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "yao"

    .line 592
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "yi"

    .line 593
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    :cond_0
    iput-object p1, p0, Ljh;->p:Ljava/lang/String;

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_1
    const-string/jumbo v0, "yao"

    iput-object v0, p0, Ljh;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method private h(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 673
    if-ltz p1, :cond_0

    .line 674
    iput p1, p0, Ljh;->o:I

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Ljh;->o:I

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)V
    .locals 1
    .param p1, "voiceMode"    # Ljava/lang/String;

    .prologue
    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "none"

    .line 632
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wander"

    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "underwater"

    .line 634
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "robert"

    .line 635
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "reverb"

    .line 636
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "echo"

    .line 637
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "eccentric"

    .line 638
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "chorus"

    .line 639
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    :cond_0
    iput-object p1, p0, Ljh;->m:Ljava/lang/String;

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_1
    const-string/jumbo v0, "none"

    iput-object v0, p0, Ljh;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method private q()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 507
    const-string/jumbo v0, "local"

    iput-object v0, p0, Ljh;->a:Ljava/lang/String;

    .line 508
    const-string/jumbo v0, "vimrjia"

    iput-object v0, p0, Ljh;->h:Ljava/lang/String;

    .line 509
    iput v1, p0, Ljh;->s:I

    .line 510
    const-string/jumbo v0, "vivi21"

    iput-object v0, p0, Ljh;->b:Ljava/lang/String;

    .line 511
    iput-boolean v2, p0, Ljh;->d:Z

    .line 512
    iput-boolean v2, p0, Ljh;->e:Z

    .line 513
    iput v2, p0, Ljh;->f:I

    .line 514
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Ljh;->c:Ljava/lang/String;

    .line 515
    iput v1, p0, Ljh;->g:I

    .line 518
    iput v3, p0, Ljh;->j:I

    .line 519
    iput v3, p0, Ljh;->k:I

    .line 520
    const/16 v0, 0x64

    iput v0, p0, Ljh;->l:I

    .line 521
    const/4 v0, 0x3

    iput v0, p0, Ljh;->o:I

    .line 523
    const-string/jumbo v0, "jiajia"

    iput-object v0, p0, Ljh;->i:Ljava/lang/String;

    .line 524
    const-string/jumbo v0, "yao"

    iput-object v0, p0, Ljh;->p:Ljava/lang/String;

    .line 525
    const-string/jumbo v0, "none"

    iput-object v0, p0, Ljh;->m:Ljava/lang/String;

    .line 526
    iput v1, p0, Ljh;->n:I

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Ljh;->r:Ljava/lang/String;

    .line 529
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "mEngine"    # I

    .prologue
    .line 764
    iput p1, p0, Ljh;->s:I

    .line 765
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x32

    const/4 v1, 0x1

    .line 472
    invoke-direct {p0}, Ljh;->q()V

    .line 473
    if-nez p1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 476
    :cond_0
    const-string/jumbo v0, "tts_engine_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljh;->d(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v0, "cloud_tts_engine_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljh;->e(Ljava/lang/String;)V

    .line 479
    const-string/jumbo v0, "audio_need_cache"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Ljh;->a(Z)V

    .line 480
    const-string/jumbo v0, "audio_need_play"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Ljh;->b(Z)V

    .line 481
    const-string/jumbo v0, "audio_cache_count"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljh;->b(I)V

    .line 482
    const-string/jumbo v0, "cloud_tts_delay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljh;->c(I)V

    .line 483
    const-string/jumbo v0, "cloud_tts_method_of_read_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljh;->f(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v0, "role"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljh;->a(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v0, "role"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljh;->b(Ljava/lang/String;)V

    .line 486
    const-string/jumbo v0, "voice_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljh;->h(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v0, "method_of_read_chinese_number_1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljh;->g(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v0, "speed"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljh;->d(I)V

    .line 490
    const-string/jumbo v0, "pitch"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljh;->f(I)V

    .line 491
    const-string/jumbo v0, "volume"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljh;->g(I)V

    .line 492
    const-string/jumbo v0, "stream"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljh;->h(I)V

    .line 493
    const-string/jumbo v0, "scene"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Ljh;->e(I)V

    .line 495
    const-string/jumbo v0, "self_text_language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljh;->c(Ljava/lang/String;)V

    .line 497
    const-string/jumbo v0, "cloud_tts_engine"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljh;->a(I)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    iput-object p1, p0, Ljh;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljj;)V
    .locals 0
    .param p1, "callback"    # Ljj;

    .prologue
    .line 749
    iput-object p1, p0, Ljh;->q:Ljj;

    .line 750
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Ljh;->e:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Ljh;->g:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iput-object p1, p0, Ljh;->i:Ljava/lang/String;

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    const-string/jumbo v0, "jiajia"

    iput-object v0, p0, Ljh;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Ljh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "textlanguage"    # Ljava/lang/String;

    .prologue
    .line 756
    iput-object p1, p0, Ljh;->r:Ljava/lang/String;

    .line 757
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Ljh;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Ljh;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Ljh;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Ljh;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Ljh;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Ljh;->o:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Ljh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Ljh;->n:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Ljh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Ljh;->d:Z

    return v0
.end method

.method public n()Ljj;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Ljh;->q:Ljj;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Ljh;->r:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Ljh;->s:I

    return v0
.end method
