.class public Lrm;
.super Ljava/lang/Object;
.source "TitleFunctionHelper.java"


# static fields
.field private static a:Lrm;


# instance fields
.field private b:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a()Lrm;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lrm;->a:Lrm;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lrm;

    invoke-direct {v0}, Lrm;-><init>()V

    sput-object v0, Lrm;->a:Lrm;

    .line 21
    :cond_0
    sget-object v0, Lrm;->a:Lrm;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;)V
    .locals 0
    .param p1, "homeTitleContainer"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    .prologue
    .line 25
    iput-object p1, p0, Lrm;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    .line 26
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    invoke-virtual {v0}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lrm;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lrm;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a()V

    .line 37
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lrm;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lrm;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b()V

    .line 43
    :cond_0
    return-void
.end method
