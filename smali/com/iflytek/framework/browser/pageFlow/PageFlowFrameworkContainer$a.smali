.class Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
.super Ljava/lang/Object;
.source "PageFlowFrameworkContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;)V
    .locals 1

    .prologue
    .line 632
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->b:Ljava/lang/String;

    .line 637
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->c:Ljava/lang/String;

    .line 643
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;
    .param p2, "x1"    # Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$1;

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;-><init>(Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d:Landroid/view/View;

    .line 677
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mChannelID"    # Ljava/lang/String;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->f:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->b:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->c:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d:Landroid/view/View;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->e:Ljava/lang/String;

    return-object v0
.end method
